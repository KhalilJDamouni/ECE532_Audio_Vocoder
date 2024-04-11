/******************************************************************************
 * @file audio.c
 * Audio driver.
 *
 *****************************************************************************/


#include "audio.h"
#include "demo.h"


/******************************************************************************
 * Function to write one byte (8-bits) to one of the registers from the audio
 * controller.
 *
 * @param	u8RegAddr is the LSB part of the register address (0x40xx).
 * @param	u8Data is the data byte to write.
 *
 * @return	XST_SUCCESS if all the bytes have been sent to Controller.
 * 			XST_FAILURE otherwise.
 *****************************************************************************/
XStatus fnAudioWriteToReg(u8 u8RegAddr, u8 u8Data) {

	u8 u8TxData[3];
	u8 u8BytesSent;

	u8TxData[0] = 0x40;
	u8TxData[1] = u8RegAddr;
	u8TxData[2] = u8Data;
	//send to audio codec over i2c
	u8BytesSent = XIic_Send(XPAR_IIC_0_BASEADDR, IIC_SLAVE_ADDR, u8TxData, 3, XIIC_STOP);

	//check if all the bytes where sent
	if (u8BytesSent != 3)
	{
		return XST_FAILURE;
	}

	return XST_SUCCESS;
}

/******************************************************************************
 * Function to read one byte (8-bits) from the register space of audio controller.
 *
 * @param	u8RegAddr is the LSB part of the register address (0x40xx).
 * @param	u8RxData is the returned value
 *
 * @return	XST_SUCCESS if the desired number of bytes have been read from the controller
 * 			XST_FAILURE otherwise
 *****************************************************************************/
XStatus fnAudioReadFromReg(u8 u8RegAddr, u8 *u8RxData) {

	u8 u8TxData[2];
	u8 u8BytesSent, u8BytesReceived;

	u8TxData[0] = 0x40;
	u8TxData[1] = u8RegAddr;

	u8BytesSent = XIic_Send(XPAR_IIC_0_BASEADDR, IIC_SLAVE_ADDR, u8TxData, 2, XIIC_STOP);
	//check if all the bytes where sent
	if (u8BytesSent != 2)
	{
		return XST_FAILURE;
	}
	//read from audio codec over i2c
	u8BytesReceived = XIic_Recv(XPAR_IIC_0_BASEADDR, IIC_SLAVE_ADDR, u8RxData, 1, XIIC_STOP);
	//check if there are missing bytes
	if (u8BytesReceived != 1)
	{
		return XST_FAILURE;
	}

	return XST_SUCCESS;
}

/******************************************************************************
 * Configures audio codes's internal PLL. With MCLK = 12.288 MHz it configures the
 * PLL for a VCO frequency = 49.152 MHz.
 *
 * @param	none.
 *
 * @return	XST_SUCCESS if PLL is locked
 *****************************************************************************/
XStatus fnAudioPllConfig() {

	u8 u8TxData[8], u8RxData[6];
	int Status;

	Status = fnAudioWriteToReg(R0_CLOCK_CONTROL, 0x0E);
	if (Status == XST_FAILURE)
	{

		xil_printf("\r\nError: In PLL could not write R0_CLOCK_CONTROL (0x0E)");

		return XST_FAILURE;
	}

	// Write 6 bytes to R1
	// For setting the PLL with a MCLK = 12.288 MHz the datasheet suggests the
	// following configuration 0xXXXXXX2001
	u8TxData[0] = 0x40;
	u8TxData[1] = 0x02;
	u8TxData[2] = 0x00; // byte 1
	u8TxData[3] = 0x7D; // byte 2
	u8TxData[4] = 0x00; // byte 3
	u8TxData[5] = 0x0C; // byte 4
	u8TxData[6] = 0x20; // byte 5
	u8TxData[7] = 0x01; // byte 6

	Status = XIic_Send(XPAR_IIC_0_BASEADDR, IIC_SLAVE_ADDR, u8TxData, 8, XIIC_STOP);
	if (Status != 8)
	{

		xil_printf("\r\nError: In PLL could not send data to R1_PLL_CONTROL (0xXXXXXX2001)");

		return XST_FAILURE;
	}
	// Poll PLL Lock bit
	u8TxData[0] = 0x40;
	u8TxData[1] = 0x02;

	//Wait for the PLL to lock
	do {
		XIic_Send(XPAR_IIC_0_BASEADDR, IIC_SLAVE_ADDR, u8TxData, 2, XIIC_STOP);

		XIic_Recv(XPAR_IIC_0_BASEADDR, IIC_SLAVE_ADDR, u8RxData, 6, XIIC_STOP);

	}
	while((u8RxData[5] & 0x02) == 0);

	//Set COREN
	Status = fnAudioWriteToReg(R0_CLOCK_CONTROL, 0x0F);
	if (Status == XST_FAILURE)
	{
		xil_printf("\r\nError: IN PLL could not write R0_CLOCK_CONTROL (0x0F)");

		return XST_FAILURE;
	}

	return XST_SUCCESS;
}

/******************************************************************************
 * Configure the initial settings of the audio controller, the majority of
 * these will remain unchanged during the normal functioning of the code.
 * In order to generate a correct BCLK and LRCK, which are crucial for the
 * correct operating of the controller, the sampling rate must me set in the
 * I2S_TRANSFER_CONTROL_REG. The sampling rate options are:
 *    "000" -  8 KHz
 *    "001" - 12 KHz
 *    "010" - 16 KHz
 *    "011" - 24 KHz
 *    "100" - 32 KHz
 *    "101" - 48 KHz
 *    "110" - 96 KHz
 * These options are valid only if the I2S controller is in slave mode.
 * When In master mode the ADAU will generate the appropriate BCLK and LRCLK
 * internally, and the sampling rates which will be set in the I2S_TRANSFER_CONTROL_REG
 * are ignored.
 *
 * @param	none.
 *
 * @return	XST_SUCCESS if the configuration is successful
 *****************************************************************************/
XStatus fnAudioStartupConfig ()
{

	union ubitField uConfigurationVariable;
	int Status;

	// Configure the I2S controller for generating a valid sampling rate
	uConfigurationVariable.bit.u32bit0 = 1;
	uConfigurationVariable.bit.u32bit1 = 0;
	uConfigurationVariable.bit.u32bit2 = 1;

	uConfigurationVariable.l = 0x00000000;

	//STOP_TRANSACTION
	uConfigurationVariable.bit.u32bit1 = 1;

	//STOP_TRANSACTION
	uConfigurationVariable.bit.u32bit1 = 0;

	//
	Status = fnAudioWriteToReg(R15_SERIAL_PORT_CONTROL_0, 0x01);
	if (Status == XST_FAILURE)
	{
		xil_printf("\r\nError: In Audio Config could not write R15_SERIAL_PORT_CONTROL_0 (0x01)");

		return XST_FAILURE;
	}
	//64 bit audio frame(L+R)
	Status = fnAudioWriteToReg(R16_SERIAL_PORT_CONTROL_1, 0x00);
	if (Status == XST_FAILURE)
	{
		xil_printf("\r\nError: In Audio Config  could not write R16_SERIAL_PORT_CONTROL_1 (0x00)");

		return XST_FAILURE;
	}
	//ADC, DAC sampling rate to 48KHz
	Status = fnAudioWriteToReg(R17_CONVERTER_CONTROL_0, 0x00);
	if (Status == XST_FAILURE)
	{
		xil_printf("\r\nError: could not write R17_CONVERTER_CONTROL_0 (0x00)");

		return XST_FAILURE;
	}
	//ADC, DAC sampling rate to 48KHz
	Status = fnAudioWriteToReg(R64_SERIAL_PORT_SAMPLING_RATE, 0x00);
	if (Status == XST_FAILURE)
	{
		xil_printf("\r\nError: could not write R64_SERIAL_PORT_SAMPLING_RATE (0x00)");

		return XST_FAILURE;
	}
	//ADC are both connected, normal mic polarity
	Status = fnAudioWriteToReg(R19_ADC_CONTROL, 0x13);
	if (Status == XST_FAILURE)
	{
		xil_printf("\r\nError: could not write R19_ADC_CONTROL (0x13)");

		return XST_FAILURE;
	}
	//DAC are both connected
	Status = fnAudioWriteToReg(R36_DAC_CONTROL_0, 0x03);
	if (Status == XST_FAILURE)
	{
		xil_printf("\r\nError: could not write R36_DAC_CONTROL_0 (0x03)");

		return XST_FAILURE;
	}
	//Enabling both channels
	Status = fnAudioWriteToReg(R35_PLAYBACK_POWER_MANAGEMENT, 0x03);
	if (Status == XST_FAILURE)
	{
		xil_printf("\r\nError: could not write R35_PLAYBACK_POWER_MANAGEMENT (0x03)");

		return XST_FAILURE;
	}
	//Serial input [L0,R0] to DAC
	Status = fnAudioWriteToReg(R58_SERIAL_INPUT_ROUTE_CONTROL, 0x01);
	if (Status == XST_FAILURE)
	{
		xil_printf("\r\nError: could not write R58_SERIAL_INPUT_ROUTE_CONTROL (0x01)");

		return XST_FAILURE;
	}
	//Enable all digital circuits except Codec slew
	Status = fnAudioWriteToReg(R65_CLOCK_ENABLE_0, 0x7F);
	if (Status == XST_FAILURE)
	{
		xil_printf("\r\nError: could not write R65_CLOCK_ENABLE_0 (0x7F)");

		return XST_FAILURE;
	}
	//Turns on CLK0 and CLK1
	Status = fnAudioWriteToReg(R66_CLOCK_ENABLE_1, 0x03);
	if (Status == XST_FAILURE)
	{
		xil_printf("\r\nError: could not write R66_CLOCK_ENABLE_1 (0x03)");

		return XST_FAILURE;
	}
	//Mixer5 0dB
	Status = fnAudioWriteToReg(R26_PLAYBACK_LR_MIXER_LEFT_LINE_OUTPUT_CONTROL, 0x03);
	if (Status == XST_FAILURE)
	{
		xil_printf("\r\nError: could not write R26_PLAYBACK_LR_MIXER_LEFT_LINE_OUTPUT_CONTROL (0x03)");

		return XST_FAILURE;
	}
	//Mixer7 enabled
	Status = fnAudioWriteToReg(R28_PLAYBACK_LR_MIXER_MONO_OUTPUT_CONTROL, 0x01);
	if (Status == XST_FAILURE)
	{
		xil_printf("\r\nError: could not write R28_PLAYBACK_LR_MIXER_MONO_OUTPUT_CONTROL (0x01)");

		return XST_FAILURE;
	}
	//Mixer6 0dB
	Status = fnAudioWriteToReg(R27_PLAYBACK_LR_MIXER_RIGHT_LINE_OUTPUT_CONTROL, 0x09);
	if (Status == XST_FAILURE)
	{
		xil_printf("\r\nError: could not write R27_PLAYBACK_LR_MIXER_RIGHT_LINE_OUTPUT_CONTROL (0x09)");

		return XST_FAILURE;
	}
	//Left output: 0db Line out
	Status = fnAudioWriteToReg(R31_PLAYBACK_LINE_OUTPUT_LEFT_VOLUME_CONTROL, 0xE6);
	if (Status == XST_FAILURE)
	{
		xil_printf("\r\nError: could not write R31_PLAYBACK_LINE_OUTPUT_LEFT_VOLUME_CONTROL (0xE6)");

		return XST_FAILURE;
	}
	//Right output: 0db Line out
	Status = fnAudioWriteToReg(R32_PLAYBACK_LINE_OUTPUT_RIGHT_VOLUME_CONTROL, 0xE6);
	if (Status == XST_FAILURE)
	{
		xil_printf("\r\nError: could not write R32_PLAYBACK_LINE_OUTPUT_RIGHT_VOLUME_CONTROL (0xE6)");

		return XST_FAILURE;
	}
	//Mono output: -57 dB unmute HP out
	Status = fnAudioWriteToReg(R33_PLAYBACK_MONO_OUTPUT_CONTROL, 0x03);
	if (Status == XST_FAILURE)
	{
		xil_printf("\r\nError: could not write R33_PLAYBACK_MONO_OUTPUT_CONTROL (0x03)");

		return XST_FAILURE;
	}
	//Mic bias 90%
	Status = fnAudioWriteToReg(R10_RECORD_MICROPHONE_BIAS_CONTROL, 0x01);
	if (Status == XST_FAILURE)
	{
		xil_printf("\r\nError: could not write R10_RECORD_MICROPHONE_BIAS_CONTROL (0x01)");

		return XST_FAILURE;
	}
	//enable pop and click suppression
	Status = fnAudioWriteToReg(R34_PLAYBACK_POP_CLICK_SUPPRESSION, 0x00);
	if (Status == XST_FAILURE)
	{
		xil_printf("\r\nError: could not write R34_PLAYBACK_POP_CLICK_SUPPRESSION (0x00)");

		return XST_FAILURE;
	}
	//enable Left headphone and set 0dB. An increase by one bit results in a 1dB volume increase
	Status = fnAudioWriteToReg(R29_PLAYBACK_HEADPHONE_LEFT_VOLUME_CONTROL, 0xE7);
	if (Status == XST_FAILURE)
	{
		xil_printf("\r\nError: could not write R29_PLAYBACK_HEADPHONE_LEFT_VOLUME_CONTROL (0xE7)");

		return XST_FAILURE;
	}
	//enable Right headphone and set 0dB. An increase by one bit results in a 1dB volume increase
	Status = fnAudioWriteToReg(R30_PLAYBACK_HEADPHONE_RIGHT_VOLUME_CONTROL, 0xE7);
	if (Status == XST_FAILURE)
	{
		xil_printf("\r\nError: could not write R30_PLAYBACK_HEADPHONE_RIGHT_VOLUME_CONTROL (0xE7)");

		return XST_FAILURE;
	}
	//enable Mixer1, mute left single ended
	Status = fnAudioWriteToReg(R4_RECORD_MIXER_LEFT_CONTROL_0, 0x01);
	if (Status == XST_FAILURE)
	{
		xil_printf("\r\nError: could not write R4_RECORD_MIXER_LEFT_CONTROL_0 (0x01)");

		return XST_FAILURE;
	}
	//enable MixerAux1, mute left differential input
	Status = fnAudioWriteToReg(R5_RECORD_MIXER_LEFT_CONTROL_1, 0x0D);
	if (Status == XST_FAILURE)
	{
		xil_printf("\r\nError: could not write R5_RECORD_MIXER_LEFT_CONTROL_1 (0x0D)");

		return XST_FAILURE;
	}
	//enable Mixer2, mute right single ende
	Status = fnAudioWriteToReg(R6_RECORD_MIXER_RIGHT_CONTROL_0, 0x01);
	if (Status == XST_FAILURE)
	{
		xil_printf("\r\nError: could not write R6_RECORD_MIXER_RIGHT_CONTROL_0 (0x01)");

		return XST_FAILURE;
	}
	//enable MixerAux2, mute right differential input
	Status = fnAudioWriteToReg(R7_RECORD_MIXER_RIGHT_CONTROL_1, 0x05);
	if (Status == XST_FAILURE)
	{
		xil_printf("\r\nError: could not write R7_RECORD_MIXER_RIGHT_CONTROL_1 (0x05)");

		return XST_FAILURE;
	}
	//disable Left differential input
	Status = fnAudioWriteToReg(R8_LEFT_DIFFERENTIAL_INPUT_VOLUME_CONTROL, 0x03);
	if (Status == XST_FAILURE)
	{
		xil_printf("\r\nError: could not write R8_LEFT_DIFFERENTIAL_INPUT_VOLUME_CONTROL (0x03)");

		return XST_FAILURE;
	}
	//disable right differential input
	Status = fnAudioWriteToReg(R9_RIGHT_DIFFERENTIAL_INPUT_VOLUME_CONTROL, 0x03);
	if (Status == XST_FAILURE)
	{
		xil_printf("\r\nError: could not write R9_RIGHT_DIFFERENTIAL_INPUT_VOLUME_CONTROL (0x03)");

		return XST_FAILURE;
	}
	//Enable Mixer3 with the the left DAC channel, mute MixerAux3
	Status = fnAudioWriteToReg(R22_PLAYBACK_MIXER_LEFT_CONTROL_0, 0x21);
	if (Status == XST_FAILURE)
	{
		xil_printf("\r\nError: could not write R22_PLAYBACK_MIXER_LEFT_CONTROL_0 (0x21)");

		return XST_FAILURE;
	}
	//Mute Right and Left input mixers
	Status = fnAudioWriteToReg(R23_PLAYBACK_MIXER_LEFT_CONTROL_1, 0x00);
	if (Status == XST_FAILURE)
	{
		xil_printf("\r\nError: could not write R23_PLAYBACK_MIXER_LEFT_CONTROL_1 (0x00)");

		return XST_FAILURE;
	}
	//Enable Mixer4 with the the right DAC channel, mute MixerAux4
	Status = fnAudioWriteToReg(R24_PLAYBACK_MIXER_RIGHT_CONTROL_0, 0x41);
	if (Status == XST_FAILURE)
	{
		xil_printf("\r\nError: could not write R24_PLAYBACK_MIXER_RIGHT_CONTROL_0 (0x41)");

		return XST_FAILURE;
	}
	//Mute Right and Left input mixers
	Status = fnAudioWriteToReg(R25_PLAYBACK_MIXER_RIGHT_CONTROL_1, 0x00);
	if (Status == XST_FAILURE)
	{
		xil_printf("\r\nError: could not write R25_PLAYBACK_MIXER_RIGHT_CONTROL_1 (0x00)");

		return XST_FAILURE;
	}
	//Serial output to L0 R0
	Status = fnAudioWriteToReg(R59_SERIAL_OUTPUT_ROUTE_CONTROL, 0x01);
	if (Status == XST_FAILURE)
	{
		xil_printf("\r\nError: could not write R59_SERIAL_OUTPUT_ROUTE_CONTROL (0x01)");

		return XST_FAILURE;
	}
	//Enable LRCLK and BLCK
	Status = fnAudioWriteToReg(R60_SERIAL_DATA_GPIO_CONGIURATION, 0x00);
	if (Status == XST_FAILURE)
	{
		xil_printf("\r\nError: could not write R60_SERIAL_DATA_GPIO_CONGIURATION (0x00)");

		return XST_FAILURE;
	}


	return XST_SUCCESS;
}

/******************************************************************************
 * Initialize PLL and Audio controller over the I2C bus
 *
 * @param	none
 *
 * @return	none.
 *****************************************************************************/
XStatus fnInitAudio()
{
	int Status;


	//Set the PLL and wait for Lock
	Status = fnAudioPllConfig();
	if (Status != XST_SUCCESS)
	{
		if (Status != XST_SUCCESS)
		{
			xil_printf("\r\nError: Could not lock PLL");
		}
	}

	//Configure the ADAU registers
	Status = fnAudioStartupConfig();
	if (Status != XST_SUCCESS)
	{
		if (1)
		{
			xil_printf("\r\nError: Failed I2C Configuration");
		}
	}

	return XST_SUCCESS;
}


/******************************************************************************
 * Configure the input path to MIC and disables all other input paths.
 * For additional information pleas refer to the ADAU1761 datasheet
 *
 * @param	none
 *
 * @return	none.
 *****************************************************************************/
void fnSetMicInput()
{
	//MX1AUXG = MUTE; MX2AUXG = MUTE; LDBOOST = 0dB; RDBOOST = 0dB
	fnAudioWriteToReg(R5_RECORD_MIXER_LEFT_CONTROL_1, 0x08);
	fnAudioWriteToReg(R7_RECORD_MIXER_RIGHT_CONTROL_1, 0x08);
	xil_printf("\r\nInput set to MIC");

}

/******************************************************************************
 * Configure the input path to Line and disables all other input paths
 * For additional information pleas refer to the ADAU1761 datasheet
 *
 * @param	none
 *
 * @return	none.
 *****************************************************************************/
void fnSetLineInput()
{
	//MX1AUXG = 0dB; MX2AUXG = 0dB; LDBOOST = MUTE; RDBOOST = MUTE
	fnAudioWriteToReg(R5_RECORD_MIXER_LEFT_CONTROL_1, 0x05);
	fnAudioWriteToReg(R7_RECORD_MIXER_RIGHT_CONTROL_1, 0x05);
	xil_printf("\r\nInput set to LineIn");

}

/******************************************************************************
 * Configure the output path to Line and disables all other output paths
 * For additional information pleas refer to the ADAU1761 datasheet
 *
 * @param	none
 *
 * @return	none.
 *****************************************************************************/
void fnSetLineOutput()
{

	//MX3G1 = mute; MX3G2 = mute; MX4G1 = mute; MX4G2 = mute;
	fnAudioWriteToReg(R23_PLAYBACK_MIXER_LEFT_CONTROL_1, 0x00);
	fnAudioWriteToReg(R25_PLAYBACK_MIXER_RIGHT_CONTROL_1, 0x00);

	//MX5G3 = 0dB; MX5EN = enable; MX6G4 = 0dB; MX6EN = enable
	fnAudioWriteToReg(R26_PLAYBACK_LR_MIXER_LEFT_LINE_OUTPUT_CONTROL, 0x03);
	fnAudioWriteToReg(R27_PLAYBACK_LR_MIXER_RIGHT_LINE_OUTPUT_CONTROL, 0x09);

	//LHPVOL = 0db; HPEN = disabled; RHPVOL = 0db; HPMODE = enable line output;
	fnAudioWriteToReg(R29_PLAYBACK_HEADPHONE_LEFT_VOLUME_CONTROL, 0xE6);
	fnAudioWriteToReg(R30_PLAYBACK_HEADPHONE_RIGHT_VOLUME_CONTROL, 0xE6);
	xil_printf("\r\nOutput set to LineOut");

}

/******************************************************************************
 * Configure the output path to Headphone and disables all other output paths
 * For additional information pleas refer to the ADAU1761 datasheet
 *
 * @param	none
 *
 * @return	none.
 *****************************************************************************/
void fnSetHpOutput()
{
	//MX5G3 = MUTE; MX5EN = MUTE; MX6G4 = MUTE; MX6EN = MUTE
	fnAudioWriteToReg(R27_PLAYBACK_LR_MIXER_RIGHT_LINE_OUTPUT_CONTROL, 0x00);
	fnAudioWriteToReg(R26_PLAYBACK_LR_MIXER_LEFT_LINE_OUTPUT_CONTROL, 0x00);

	//LHPVOL = 0db; HPEN = enable; RHPVOL = 0db; HPMODE = enable headphone output;
	fnAudioWriteToReg(R29_PLAYBACK_HEADPHONE_LEFT_VOLUME_CONTROL, 0xE7);
	fnAudioWriteToReg(R30_PLAYBACK_HEADPHONE_RIGHT_VOLUME_CONTROL, 0xE7);
	xil_printf("\r\nOutput set to Headphones\n");

}
