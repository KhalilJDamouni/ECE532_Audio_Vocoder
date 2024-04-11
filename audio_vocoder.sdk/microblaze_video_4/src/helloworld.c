#include <stdio.h>
#include <math.h>
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "xil_types.h"
#include "xbram_hw.h"
#include "helloworld.h"
#include "demo.h"
#include "audio.h"

int main()
{
	init_platform();

	// Set the background
	make_background();

	// Waveform 1 Borders
	make_waveform_1_border();

	// Waveform 2 Borders
	make_waveform_2_border();

	// Settings Borders
	make_settings_border();

	// Write the titles
	write_words();

// Init for while loop.
	//Input Variables
	unsigned int mic;
	unsigned int mic_bit;
	unsigned int counter;
	unsigned int keyboard_value;

	unsigned int v_mic;

	//Input Variables Helpers
	unsigned int old_counter = 0;

	//Original Waveform Variables
	u16 wave[70] = {0};
	u16 delete[70] = {0};
	int val = 70;
	int start_x;
	int start_y;
	int color;
	int temp_mic;
	int in_a_row_1;
	int in_a_row_0;
	int sw = 0;

	//Vocoder Waveform Variables
	u16 v_wave[70] = {0};
	u16 v_delete[70] = {0};
	int v_val = 70;
	int v_start_x;
	int v_start_y;
	int v_color;
	int v_temp_mic;
	int v_in_a_row_1;
	int v_in_a_row_0;
	int v_sw = 0;

	//Frequency Domain Waveform Variables
	u32 bins[10] = {};

	//Settings Variables
	//Volume
	int volume_bar = 11;
	int previous_volume = 10;
	int volume_array[] = {0, 5, 10, 15, 20, 25, 30, 35, 40, 45, 50, 55};

	//Domain
	int domain = 0;
	int previous_domain = 1;
	write_domain_T();

	//Multiplier
	int multiplier[3] = {0, 1, 0};
	int previous_multiplier[3] = {0, 0, 0};
	int mult_x[3] = {510, 530, 550};
	int mult = multiplier[0] * 100 + multiplier[1] * 10 + multiplier[2];
	int previous_mult = 0;
	int mult_option = 2;
	int previous_mult_option = 0;
	draw_line(mult_x[mult_option], 210, 0xff);
	write_number(mult_x[0], 180, multiplier[0], 0xff);
	write_number(mult_x[1], 180, multiplier[1], 0xff);
	write_number(mult_x[2], 180, multiplier[2], 0xff);

	//On-Off Switch
	int OnOffSwitch = 1;
	int previous_OnOffSwitch = 0;
	write_ON();

	//Option Pointer
	int option = 0;
	int previous_option = 1;
	int option_y[6] = {62, 126, 180, 240, 300, 360};

	//Init Audio
	audio_init();

	//WindowVal
	int windowOption = 2;
	int previous_windowOption = 0;
	int val_x[3] = {510, 530, 550};
	int windowVal_list[3] = {0, 0, 0};
	int previous_windowVal = 1;
	int windowVal = 0;
	draw_line(val_x[windowOption], 330, 0xff);
	write_number(val_x[0], 300, windowVal_list[0], 0xff);
	write_number(val_x[1], 300, windowVal_list[1], 0xff);
	write_number(val_x[2], 300, windowVal_list[2], 0xff);

	//WindowEnable
	int windowEnable = 0;
	int previous_windowEnable = 1;
	int enable_x[4] = {490, 514, 540, 566};
	init_WindowEnable();


	while (1)
	{
		//Read Inputs BEGIN
		keyboard_value = 'z';
		counter = test[3] & 0xffff; //Keyboard Counter
		mic = test[0]   & 0xffffff; //Microphone Value
		v_mic = test[4] & 0xffffff; //Vocoder Value

//		xil_printf("v_mic: \%x: ", v_mic);
		bins[0] = test[4];
		bins[1] = test[5];
		bins[2] = test[6];
		bins[3] = test[7];
		bins[4] = test[8];
		bins[5] = test[9];
		bins[6] = test[10];
		bins[7] = test[11];
		bins[8] = test[12];
		bins[9] = test[13];

		int print_bin = 6;
//		xil_printf("Bin \%x: \%x\n\r", print_bin, bins[print_bin]);
		//Read Inputs END

		//Process Keyboard Value BEGIN
		if (old_counter != counter)
		{
			old_counter = counter;
			keyboard_value = test[2] & 0x3ff;
			keyboard_value = (keyboard_value >> 1) & 0xff;

			int actual_value = 0;
			for (int i = 0; i < 8; ++i)
			{
				actual_value = actual_value | (keyboard_value & 1);
				actual_value = actual_value << 1;
				keyboard_value = keyboard_value >> 1;
			}
			keyboard_value = actual_value >> 1;

			// xil_printf("keyboard: \%i\n\r", keyboard_value);
		}
		//Process Keyboard Value END

		//Option Pointer BEGIN
		if (keyboard_value == 87 || keyboard_value == 119) //S
		{
			option = option - 1;
		}
		else if (keyboard_value == 83 || keyboard_value == 115) //W
		{
			option = option + 1;
		}
		if (option < 0) option = 5;
		if (option > 5) option = 0;
		//Option Pointer END

		//Other Settings BEGIN
		if (option == 0) //Volume
		{
			if (keyboard_value == 97 || keyboard_value == 65) //A
			{
				volume_bar = volume_bar - 1;
			}
			else if (keyboard_value == 100 || keyboard_value == 68) //D
			{
				volume_bar = volume_bar + 1;
			}

			if (volume_bar > 11) volume_bar = 11;
			if (volume_bar < 0)  volume_bar = 0;

			//Update Volume
			if (volume_bar != previous_volume)
			{
				// xil_printf("volume_bar: \%i\n\r", volume_bar);
				start_x = 500;
				start_y = 83;
				for (int i = 0; i < 12; ++i)
				{
					for (int d = 0; d < i + 1; ++d)
					{
						if (i < volume_bar)
							draw_pixel_color(start_x + 4 * 2 * i, start_y - 2 * 1 * d, 0xff);
						else
							draw_pixel_color(start_x + 4 * 2 * i, start_y - 2 * 1 * d, 0x00);
					}
				}

				//Update Hardware Register
				int Status;
				int register_value = (volume_array[volume_bar] << 2) | 0b11;
				// xil_printf("Volume: \%x\n\r", register_value);

				//enable Left headphone and set 0dB. An increase by one bit results in a 1dB volume increase
				Status = fnAudioWriteToReg(R29_PLAYBACK_HEADPHONE_LEFT_VOLUME_CONTROL, register_value);
				if (Status == XST_FAILURE)
				{
					xil_printf("\r\nError: could not write R29_PLAYBACK_HEADPHONE_LEFT_VOLUME_CONTROL (0xE7)");

					return XST_FAILURE;
				}
				//enable Right headphone and set 0dB. An increase by one bit results in a 1dB volume increase
				Status = fnAudioWriteToReg(R30_PLAYBACK_HEADPHONE_RIGHT_VOLUME_CONTROL, register_value);
				if (Status == XST_FAILURE)
				{
					xil_printf("\r\nError: could not write R30_PLAYBACK_HEADPHONE_RIGHT_VOLUME_CONTROL (0xE7)");

					return XST_FAILURE;
				}



				previous_volume = volume_bar;
			}
		}
		if(option == 1) //Domain
		{
			if (keyboard_value == 97 || keyboard_value == 65) //A
			{
				domain = 0;
			}
			else if (keyboard_value == 100 || keyboard_value == 68) //D
			{
				domain = 1;
			}

			//Update Domain
			if(domain != previous_domain)
			{
				if(domain == 0) //T
				{
					write_domain_T();
				}
				if(domain == 1) //F
				{
					write_domain_F();
				}

				previous_domain = domain;
			}
		}
		if(option == 2) //Multiplier
		{
			if (keyboard_value == 97 || keyboard_value == 65) //A
			{
				mult_option = mult_option - 1;
				if(mult_option < 0)
					mult_option = 0;
			}
			else if (keyboard_value == 100 || keyboard_value == 68) //D
			{
				mult_option = mult_option + 1;
				if(mult_option > 2)
					mult_option = 2;
			}
			else if(is_number(keyboard_value))
			{
				int number_value = keyboard_value - 48;
				if(number_value != multiplier[mult_option])
				{
					//Erase Previous Number
					write_number(mult_x[mult_option], 180, multiplier[mult_option], 0x00);
					multiplier[mult_option] = number_value;
					
					//Write New Number
					write_number(mult_x[mult_option], 180, multiplier[mult_option], 0xff);
					mult = multiplier[0] * 100 + multiplier[1] * 10 + multiplier[2];
					
					//write mult to memory.
					test[511] = mult;
					
				}
			}

			if(mult_option != previous_mult_option)
			{	
				//Erase previous Line
				draw_line(mult_x[previous_mult_option], 210, 0x00);

				//Write new line.
				draw_line(mult_x[mult_option], 210, 0xff);

				previous_mult_option = mult_option;
			}
		}
		if(option == 3) //Window Enable
		{
			if (keyboard_value == 97 || keyboard_value == 65) //A
			{
				windowEnable = windowEnable - 1;
				if(windowEnable < 0)
					windowEnable = 0;
			}
			else if (keyboard_value == 100 || keyboard_value == 68) //D
			{
				windowEnable = windowEnable + 1;
				if(windowEnable > 3)
					windowEnable = 3;
			}
			if(windowEnable != previous_windowEnable)
			{
				// xil_printf("windowEnable \%i\n\r", windowEnable);
				// xil_printf("previous_windowEnable \%i\n\r", previous_windowEnable);

				//Erase Previous
			
				for(int x = enable_x[previous_windowEnable]; x < enable_x[previous_windowEnable] + 24; x = x + 4)
				{
					for(int y = 236; y < 268; y = y + 4)
					{
						draw_pixel_color(x, y, 0x00);
					}
				}
				write_number(enable_x[previous_windowEnable] + 4, 240, previous_windowEnable, 0xff);

				
				//Write New
				for(int x = enable_x[windowEnable]; x < enable_x[windowEnable] + 24; x = x + 4)
				{
					for(int y = 236; y < 268; y = y + 4)
					{
						draw_pixel_color(x, y, 0xff);
					}
				}
				write_number(enable_x[windowEnable] + 4, 240, windowEnable, 0x00);

				previous_windowEnable = windowEnable;
				
				if(OnOffSwitch == 1)
					test[508] = windowEnable;

				int huh = test[508];
				// xil_printf("windowEnable from AXI \%i\n\r", huh);
			}
		}
		if(option == 4) //WindowVal
		{
			if (keyboard_value == 97 || keyboard_value == 65) //A
			{
				windowOption = windowOption - 1;
				if(windowOption < 0)
					windowOption = 0;
			}
			else if (keyboard_value == 100 || keyboard_value == 68) //D
			{
				windowOption = windowOption + 1;
				if(windowOption > 2)
					windowOption = 2;
			}
			else if(is_number(keyboard_value))
			{
				int number_value = keyboard_value - 48;
				if(number_value != windowVal_list[windowOption])
				{
					//Erase Previous Number
					write_number(val_x[windowOption], 300, windowVal_list[windowOption], 0x00);
					windowVal_list[windowOption] = number_value;
					
					//Write New Number
					write_number(val_x[windowOption], 300, windowVal_list[windowOption], 0xff);
					windowVal = windowVal_list[0] * 100 + windowVal_list[1] * 10 + windowVal_list[2];
					
					//write mult to memory.
					test[509] = windowVal;
					
				}
			}

			if(windowOption != previous_windowOption)
			{	
				//Erase previous Line
				draw_line(val_x[previous_windowOption], 330, 0x00);

				//Write new line.
				draw_line(val_x[windowOption], 330, 0xff);

				previous_windowOption = windowOption;
			}
		}
		if(option == 5) //On/Off Switch
		{
			if (keyboard_value == 97 || keyboard_value == 65) //A
			{
				OnOffSwitch = 0;
			}
			else if (keyboard_value == 100 || keyboard_value == 68) //D
			{
				OnOffSwitch = 1;
			}
			
			//Update Switch
			if(OnOffSwitch != previous_OnOffSwitch)
			{
				if(OnOffSwitch == 0)
				{
					write_OFF();
				}
				if(OnOffSwitch == 1)
				{
					write_ON();
				}
				previous_OnOffSwitch = OnOffSwitch;
				test[508] = 0;
			}
		}
		//Other Settings END

		//Update Option Pointer BEGIN
		if (previous_option != option)
		{
			// Delete previous_option option
			start_x = 604;
			start_y = option_y[previous_option];
			color = 0xaf;
			print_option(start_x, start_y, color);

			// Print new option
			start_y = option_y[option];
			color = 0xff;
			print_option(start_x, start_y, color);

			previous_option = option;
		}
		//Update Option Pointer ENDs

		//Process Mic Input BEGIN
		// xil_printf("Mic \%06x\n\r", mic);
		temp_mic = mic;
		// // if(mic & 1 == 1)
		// // 	val += 1;
		// // if(mic & 1 == 0)
		// // 	val -= 1;
		// val = 70;
		in_a_row_0 = 1;
		in_a_row_1 = 1;
		for (int i = 0; i < 24; ++i)
		{
			if ((temp_mic & 1) == 1)
			{
				if(in_a_row_0 != 1)
					val = val - in_a_row_0;

				in_a_row_0 = 1;
				in_a_row_1 += 1;
			}
			else
			{
				if(in_a_row_1 != 1)
					val = val + in_a_row_1;

				in_a_row_0 += 1;
				in_a_row_1 = 1;
			}

			temp_mic = temp_mic >> 1;
		}

		// Method 2
		// val = 70;
		// int total = 0;
		// temp_mic = mic;
		// for (int i = 0; i < 24; ++i)
		// {
		// 	if ((temp_mic & 1) == 1)
		// 	{
		// 		total += 2;
		// 	}
		// 	else
		// 	{
		// 		total -= 2;
		// 	}
		// 	temp_mic = temp_mic >> 1;
		// }

		// val += total;



		// val = mic / 23960;
		// xil_printf("Mic \%i\n\r", mic);
		// xil_printf("Val \%i\n\r", val);

		if (val > 155) val = 155;
		if (val < 0)   val = 0;
		for (int i = 68; i >= 0; --i)
		{
			if (sw == 0)
				wave[i + 1] = wave[i];
			else
				delete[i + 1] = delete[i];
		}

		if (sw == 0) wave[0] = val;
		else 		 delete[0] = val;
		//Process Mic Input END

		//Process Vocoder Output BEGIN
		v_val = 70;
		v_temp_mic = v_mic;
		v_in_a_row_0 = 1;
		v_in_a_row_1 = 1;
		for (int i = 0; i < 24; ++i)
		{
			if ((v_temp_mic & 1) == 1)
			{
				if(v_in_a_row_0 != 1)
					v_val = v_val - v_in_a_row_0;

				v_in_a_row_0 = 1;
				v_in_a_row_1 += 1;
			}
			else
			{
				if(v_in_a_row_1 != 1)
					v_val = v_val + v_in_a_row_1;

				v_in_a_row_0 += 1;
				v_in_a_row_1 = 1;
			}

			v_temp_mic = v_temp_mic >> 1;
		}

		if (v_val > 155) v_val = 155;
		if (v_val < 0)   v_val = 0;
		
		if(OnOffSwitch == 0)
			v_val = 0;

		for (int i = 68; i >= 0; --i)
		{
			if (v_sw == 0)
				v_wave[i + 1] = v_wave[i];
			else
				v_delete[i + 1] = v_delete[i];
		}
		if (v_sw == 0) v_wave[0]   = v_val;
		else 		   v_delete[0] = v_val;
		//Process Vocoder Output END

		//Update Original Waveform BEGIN
		int index;
		start_x = 35;
		start_y = 210;
		if (sw == 0)
		{
			for (int i = 0; i < 70; ++i)
			{
				index = 69 - i;
				draw_pixel_color(start_x + 4 * i, start_y - delete[index], 0x00);
				draw_pixel_color(start_x + 4 * i, start_y - wave[index], 0xff);
			}
		}
		else if (sw == 1)
		{
			for (int i = 0; i < 70; ++i)
			{
				index = 69 - i;
				draw_pixel_color(start_x + 4 * i, start_y - wave[index], 0x00);
				draw_pixel_color(start_x + 4 * i, start_y - delete[index], 0xff);
			}
		}
		sw = (sw + 1) % 2;
		//Update Original Waveform END

		//Update Vocoder Waveform BEGIN
		start_x = 35;
		start_y = 420;
		if (v_sw == 0)
		{
			for (int i = 0; i < 70; ++i)
			{
				index = 69 - i;
				draw_pixel_color(start_x + 4 * i, start_y - v_delete[index], 0x00);
				draw_pixel_color(start_x + 4 * i, start_y - v_wave[index], 0xff);
			}
		}
		else if (v_sw == 1)
		{
			for (int i = 0; i < 70; ++i)
			{
				index = 69 - i;
				draw_pixel_color(start_x + 4 * i, start_y - v_wave[index], 0x00);
				draw_pixel_color(start_x + 4 * i, start_y - v_delete[index], 0xff);
			}
		}
		v_sw = (v_sw + 1) % 2;
		//Update Vocoder Waveform END



	}
	cleanup_platform();

	return 0;
}

void draw_dot_color(int start_x, int start_y, int color)
{
	Xil_Out8(membase + coord(start_x, start_y), color);
}

void draw_pixel_color(int start_x, int start_y, int color)
{
	for (int i = 0; i < 4; ++i)
	{
		for (int d = 0; d < 4; ++d)
		{
			//		    xil_printf("Writing to (%i, %i)\n\r", i, d);
			Xil_Out8(membase + coord(start_x + i, start_y + d), color);
		}
	}
}

void draw_pixel(int start_x, int start_y, int color)
{
	for (int i = 0; i < 4; ++i)
	{
		for (int d = 0; d < 4; ++d)
		{
			//		    xil_printf("Writing to (%i, %i)\n\r", i, d);
			Xil_Out8(membase + coord(start_x + i, start_y + d), 0x00);
		}
	}
}

void print_option(int start_x, int start_y, int color)
{
	draw_pixel_color(start_x + 4 * 0, start_y + 4 * 3, color);

	draw_pixel_color(start_x + 4 * 1, start_y + 4 * 2, color);
	draw_pixel_color(start_x + 4 * 1, start_y + 4 * 3, color);
	draw_pixel_color(start_x + 4 * 1, start_y + 4 * 4, color);

	draw_pixel_color(start_x + 4 * 2, start_y + 4 * 1, color);
	draw_pixel_color(start_x + 4 * 2, start_y + 4 * 2, color);
	draw_pixel_color(start_x + 4 * 2, start_y + 4 * 3, color);
	draw_pixel_color(start_x + 4 * 2, start_y + 4 * 4, color);
	draw_pixel_color(start_x + 4 * 2, start_y + 4 * 5, color);

	draw_pixel_color(start_x + 4 * 3, start_y + 4 * 0, color);
	draw_pixel_color(start_x + 4 * 3, start_y + 4 * 1, color);
	draw_pixel_color(start_x + 4 * 3, start_y + 4 * 2, color);
	draw_pixel_color(start_x + 4 * 3, start_y + 4 * 3, color);
	draw_pixel_color(start_x + 4 * 3, start_y + 4 * 4, color);
	draw_pixel_color(start_x + 4 * 3, start_y + 4 * 5, color);
	draw_pixel_color(start_x + 4 * 3, start_y + 4 * 6, color);
}

void make_background()
{
	for (int x = 0; x < 640; ++x)
		for (int y = 0; y < 480; ++y)
			Xil_Out8(membase + coord(x, y), 0xaf);
}

void make_waveform_1_border()
{
	int border1_min_x = 30;
	int border1_max_x = 320;
	int border1_min_y = 50;
	int border1_max_y = 220;

	for (int x = border1_min_x; x < border1_max_x; ++x)
	{
		for (int y = border1_min_y; y < border1_max_y; ++y)
		{
			if (((x >= border1_min_x && x < border1_min_x + 5) || (x > border1_max_x - 5 && x < border1_max_x)) ||
				((y >= border1_min_y && y < border1_min_y + 5) || (y > border1_max_y - 5 && y < border1_max_y)))
				Xil_Out8(membase + coord(x, y), 0xfa);
			else
			{
				Xil_Out8(membase + coord(x, y), 0x00);
			}
		}
	}
}

void make_waveform_2_border()
{
	int border2_min_x = 30;
	int border2_max_x = 320;
	int border2_min_y = 260;
	int border2_max_y = 430;

	for (int x = border2_min_x; x < border2_max_x; ++x)
	{
		for (int y = border2_min_y; y < border2_max_y; ++y)
		{
			if (((x >= border2_min_x && x < border2_min_x + 5) || (x > border2_max_x - 5 && x < border2_max_x)) ||
				((y >= border2_min_y && y < border2_min_y + 5) || (y > border2_max_y - 5 && y < border2_max_y)))
				Xil_Out8(membase + coord(x, y), 0xfa);
			else
			{
				Xil_Out8(membase + coord(x, y), 0x00);
			}
		}
	}
}

void make_settings_border()
{
	int border3_min_x = 355;
	int border3_max_x = 600;
	int border3_min_y = 50;
	int border3_max_y = 430;

	for (int x = border3_min_x; x < border3_max_x; ++x)
	{
		for (int y = border3_min_y; y < border3_max_y; ++y)
		{
			if (((x >= border3_min_x && x < border3_min_x + 5) || (x > border3_max_x - 5 && x < border3_max_x)) ||
				((y >= border3_min_y && y < border3_min_y + 5) || (y > border3_max_y - 5 && y < border3_max_y)))
				Xil_Out8(membase + coord(x, y), 0xfa);
			else
			{
				Xil_Out32(membase + coord(x, y), 0x00);
			}
		}
	}
}

void write_domain_T()
{
	for(int x = 502; x < 530; x = x + 4)
	{
		for(int y = 116; y < 148; y = y + 4)
		{
			draw_pixel_color(x, y, 0xff);
		}
	}

	for(int x = 551; x < 575; x = x + 4)
	{
		for(int y = 116; y < 148; y = y + 4)
		{
			draw_pixel_color(x, y, 0x00);
		}
	}
	write_T(506, 120, 0x00);

	write_F(555, 120, 0xff);
}

void write_domain_F()
{
	for(int x = 502; x < 530; x = x + 4)
	{
		for(int y = 116; y < 148; y = y + 4)
		{
			draw_pixel_color(x, y, 0x00);
		}
	}

	for(int x = 551; x < 575; x = x + 4)
	{
		for(int y = 116; y < 148; y = y + 4)
		{
			draw_pixel_color(x, y, 0xff);
		}
	}

	write_T(506, 120, 0xff);

	write_F(555, 120, 0x00);
}

void init_WindowEnable()
{
	int enable_x[4] = {490, 514, 540, 566};
	int windowEnable = 0;

	write_number(enable_x[1] + 4, 240, 1, 0xff);
	write_number(enable_x[2] + 4, 240, 2, 0xff);
	write_number(enable_x[3] + 4, 240, 3, 0xff);

	
	//Write New
	for(int x = enable_x[windowEnable]; x < enable_x[windowEnable] + 24; x = x + 4)
	{
		for(int y = 236; y < 268; y = y + 4)
		{
			draw_pixel_color(x, y, 0xff);
		}
	}
	write_number(enable_x[windowEnable] + 4, 240, windowEnable, 0x00);

}

int is_number(x)
{
	if(x >= 48 && x <= 57)
		return 1;
	else
		return 0;
}

void write_ON()
{
	int y_offset = 120;
	for(int x = 496; x < 544; x = x + 4)
	{
		for(int y = 236 + y_offset; y < 268 + y_offset; y = y + 4)
		{
			draw_pixel_color(x, y, 0xff);
		}
	}

	for(int x = 396; x < 464; x = x + 4)
	{
		for(int y = 236 + y_offset; y < 268 + y_offset; y = y + 4)
		{
			draw_pixel_color(x, y, 0x00);
		}
	}

	write_O(400, 240 + y_offset, 0xff);
	write_F(420, 240 + y_offset, 0xff);
	write_F(440, 240 + y_offset, 0xff);

	write_O(500, 240 + y_offset, 0x00);
	write_N(520, 240 + y_offset, 0x00);
}

void write_OFF()
{
	int y_offset = 120;

	for(int x = 496; x < 544; x = x + 4)
	{
		for(int y = 236 + y_offset; y < 268 + y_offset; y = y + 4)
		{
			draw_pixel_color(x, y, 0x00);
		}
	}

	for(int x = 396; x < 464; x = x + 4)
	{
		for(int y = 236 + y_offset; y < 268 + y_offset; y = y + 4)
		{
			draw_pixel_color(x, y, 0xff);
		}
	}

	write_O(500, 240 + y_offset, 0xff);
	write_N(520, 240 + y_offset, 0xff);

	write_O(400, 240 + y_offset, 0x00);
	write_F(420, 240 + y_offset, 0x00);
	write_F(440, 240 + y_offset, 0x00);

}

void draw_line(int start_x, int start_y, int color)
{
	draw_pixel_color(start_x + 4 * 0, start_y + 4 * 0, color);
	draw_pixel_color(start_x + 4 * 1, start_y + 4 * 0, color);
	draw_pixel_color(start_x + 4 * 2, start_y + 4 * 0, color);
	draw_pixel_color(start_x + 4 * 3, start_y + 4 * 0, color);
	draw_pixel_color(start_x + 4 * 4, start_y + 4 * 0, color);

}

void write_A(int start_x, int start_y, int color)
{
	draw_pixel_color(start_x + 4 * 1, start_y + 4 * 0, color);
	draw_pixel_color(start_x + 4 * 2, start_y + 4 * 0, color);

	draw_pixel_color(start_x + 4 * 0, start_y + 4 * 1, color);
	draw_pixel_color(start_x + 4 * 0, start_y + 4 * 2, color);
	draw_pixel_color(start_x + 4 * 0, start_y + 4 * 3, color);
	draw_pixel_color(start_x + 4 * 0, start_y + 4 * 4, color);
	draw_pixel_color(start_x + 4 * 0, start_y + 4 * 5, color);

	draw_pixel_color(start_x + 4 * 3, start_y + 4 * 1, color);
	draw_pixel_color(start_x + 4 * 3, start_y + 4 * 2, color);
	draw_pixel_color(start_x + 4 * 3, start_y + 4 * 3, color);
	draw_pixel_color(start_x + 4 * 3, start_y + 4 * 4, color);
	draw_pixel_color(start_x + 4 * 3, start_y + 4 * 5, color);

	draw_pixel_color(start_x + 4 * 1, start_y + 4 * 3, color);
	draw_pixel_color(start_x + 4 * 2, start_y + 4 * 3, color);
}
void write_C(int start_x, int start_y, int color)
{
	draw_pixel_color(start_x + 4 * 1, start_y + 4 * 0, color);
	draw_pixel_color(start_x + 4 * 2, start_y + 4 * 0, color);

	draw_pixel_color(start_x + 4 * 0, start_y + 4 * 1, color);
	draw_pixel_color(start_x + 4 * 0, start_y + 4 * 2, color);
	draw_pixel_color(start_x + 4 * 0, start_y + 4 * 3, color);
	draw_pixel_color(start_x + 4 * 0, start_y + 4 * 4, color);

	draw_pixel_color(start_x + 4 * 3, start_y + 4 * 1, color);
	draw_pixel_color(start_x + 4 * 3, start_y + 4 * 4, color);

	draw_pixel_color(start_x + 4 * 1, start_y + 4 * 5, color);
	draw_pixel_color(start_x + 4 * 2, start_y + 4 * 5, color);
}
void write_D(int start_x, int start_y, int color)
{
	draw_pixel_color(start_x + 4 * 1, start_y + 4 * 0, color);
	draw_pixel_color(start_x + 4 * 2, start_y + 4 * 0, color);

	draw_pixel_color(start_x + 4 * 0, start_y + 4 * 0, color);
	draw_pixel_color(start_x + 4 * 0, start_y + 4 * 1, color);
	draw_pixel_color(start_x + 4 * 0, start_y + 4 * 2, color);
	draw_pixel_color(start_x + 4 * 0, start_y + 4 * 3, color);
	draw_pixel_color(start_x + 4 * 0, start_y + 4 * 4, color);
	draw_pixel_color(start_x + 4 * 0, start_y + 4 * 5, color);

	draw_pixel_color(start_x + 4 * 3, start_y + 4 * 1, color);
	draw_pixel_color(start_x + 4 * 3, start_y + 4 * 2, color);
	draw_pixel_color(start_x + 4 * 3, start_y + 4 * 3, color);
	draw_pixel_color(start_x + 4 * 3, start_y + 4 * 4, color);

	draw_pixel_color(start_x + 4 * 1, start_y + 4 * 5, color);
	draw_pixel_color(start_x + 4 * 2, start_y + 4 * 5, color);
}
void write_E(int start_x, int start_y, int color)
{
	draw_pixel_color(start_x + 4 * 0, start_y + 4 * 0, color);
	draw_pixel_color(start_x + 4 * 0, start_y + 4 * 1, color);
	draw_pixel_color(start_x + 4 * 0, start_y + 4 * 2, color);
	draw_pixel_color(start_x + 4 * 0, start_y + 4 * 3, color);
	draw_pixel_color(start_x + 4 * 0, start_y + 4 * 4, color);
	draw_pixel_color(start_x + 4 * 0, start_y + 4 * 5, color);

	draw_pixel_color(start_x + 4 * 1, start_y + 4 * 5, color);
	draw_pixel_color(start_x + 4 * 2, start_y + 4 * 5, color);
	draw_pixel_color(start_x + 4 * 3, start_y + 4 * 5, color);

	draw_pixel_color(start_x + 4 * 1, start_y + 4 * 2, color);
	draw_pixel_color(start_x + 4 * 2, start_y + 4 * 2, color);

	draw_pixel_color(start_x + 4 * 1, start_y + 4 * 0, color);
	draw_pixel_color(start_x + 4 * 2, start_y + 4 * 0, color);
	draw_pixel_color(start_x + 4 * 3, start_y + 4 * 0, color);
}
void write_F(int start_x, int start_y, int color)
{
	draw_pixel_color(start_x + 4 * 0, start_y + 4 * 0, color);
	draw_pixel_color(start_x + 4 * 0, start_y + 4 * 1, color);
	draw_pixel_color(start_x + 4 * 0, start_y + 4 * 2, color);
	draw_pixel_color(start_x + 4 * 0, start_y + 4 * 3, color);
	draw_pixel_color(start_x + 4 * 0, start_y + 4 * 4, color);
	draw_pixel_color(start_x + 4 * 0, start_y + 4 * 5, color);

	draw_pixel_color(start_x + 4 * 1, start_y + 4 * 2, color);
	draw_pixel_color(start_x + 4 * 2, start_y + 4 * 2, color);

	draw_pixel_color(start_x + 4 * 1, start_y + 4 * 0, color);
	draw_pixel_color(start_x + 4 * 2, start_y + 4 * 0, color);
	draw_pixel_color(start_x + 4 * 3, start_y + 4 * 0, color);
}

void write_G(int start_x, int start_y, int color)
{
	draw_pixel_color(start_x + 4 * 1, start_y + 4 * 0, color);
	draw_pixel_color(start_x + 4 * 2, start_y + 4 * 0, color);
	draw_pixel_color(start_x + 4 * 3, start_y + 4 * 0, color);

	draw_pixel_color(start_x + 4 * 1, start_y + 4 * 5, color);
	draw_pixel_color(start_x + 4 * 2, start_y + 4 * 5, color);

	draw_pixel_color(start_x + 4 * 0, start_y + 4 * 1, color);
	draw_pixel_color(start_x + 4 * 0, start_y + 4 * 2, color);
	draw_pixel_color(start_x + 4 * 0, start_y + 4 * 3, color);
	draw_pixel_color(start_x + 4 * 0, start_y + 4 * 4, color);

	draw_pixel_color(start_x + 4 * 3, start_y + 4 * 2, color);
	draw_pixel_color(start_x + 4 * 3, start_y + 4 * 3, color);
	draw_pixel_color(start_x + 4 * 3, start_y + 4 * 4, color);

	draw_pixel_color(start_x + 4 * 2, start_y + 4 * 2, color);
}
void write_I(int start_x, int start_y, int color)
{
	draw_pixel_color(start_x + 4 * 0, start_y + 4 * 0, color);
	draw_pixel_color(start_x + 4 * 0, start_y + 4 * 1, color);
	draw_pixel_color(start_x + 4 * 0, start_y + 4 * 2, color);
	draw_pixel_color(start_x + 4 * 0, start_y + 4 * 3, color);
	draw_pixel_color(start_x + 4 * 0, start_y + 4 * 4, color);
	draw_pixel_color(start_x + 4 * 0, start_y + 4 * 5, color);
}
void write_L(int start_x, int start_y, int color)
{
	draw_pixel_color(start_x + 4 * 0, start_y + 4 * 0, color);
	draw_pixel_color(start_x + 4 * 0, start_y + 4 * 1, color);
	draw_pixel_color(start_x + 4 * 0, start_y + 4 * 2, color);
	draw_pixel_color(start_x + 4 * 0, start_y + 4 * 3, color);
	draw_pixel_color(start_x + 4 * 0, start_y + 4 * 4, color);
	draw_pixel_color(start_x + 4 * 0, start_y + 4 * 5, color);

	draw_pixel_color(start_x + 4 * 1, start_y + 4 * 5, color);
	draw_pixel_color(start_x + 4 * 2, start_y + 4 * 5, color);
	draw_pixel_color(start_x + 4 * 3, start_y + 4 * 5, color);
}
void write_M(int start_x, int start_y, int color)
{
	draw_pixel_color(start_x + 4 * 0, start_y + 4 * 0, color);
	draw_pixel_color(start_x + 4 * 0, start_y + 4 * 1, color);
	draw_pixel_color(start_x + 4 * 0, start_y + 4 * 2, color);
	draw_pixel_color(start_x + 4 * 0, start_y + 4 * 3, color);
	draw_pixel_color(start_x + 4 * 0, start_y + 4 * 4, color);
	draw_pixel_color(start_x + 4 * 0, start_y + 4 * 5, color);

	draw_pixel_color(start_x + 4 * 1, start_y + 4 * 1, color);
	draw_pixel_color(start_x + 4 * 2, start_y + 4 * 2, color);
	draw_pixel_color(start_x + 4 * 3, start_y + 4 * 1, color);

	draw_pixel_color(start_x + 4 * 4, start_y + 4 * 0, color);
	draw_pixel_color(start_x + 4 * 4, start_y + 4 * 1, color);
	draw_pixel_color(start_x + 4 * 4, start_y + 4 * 2, color);
	draw_pixel_color(start_x + 4 * 4, start_y + 4 * 3, color);
	draw_pixel_color(start_x + 4 * 4, start_y + 4 * 4, color);
	draw_pixel_color(start_x + 4 * 4, start_y + 4 * 5, color);
}
void write_N(int start_x, int start_y, int color)
{
	draw_pixel_color(start_x + 4 * 0, start_y + 4 * 0, color);
	draw_pixel_color(start_x + 4 * 0, start_y + 4 * 1, color);
	draw_pixel_color(start_x + 4 * 0, start_y + 4 * 2, color);
	draw_pixel_color(start_x + 4 * 0, start_y + 4 * 3, color);
	draw_pixel_color(start_x + 4 * 0, start_y + 4 * 4, color);
	draw_pixel_color(start_x + 4 * 0, start_y + 4 * 5, color);

	draw_pixel_color(start_x + 4 * 3, start_y + 4 * 0, color);
	draw_pixel_color(start_x + 4 * 3, start_y + 4 * 1, color);
	draw_pixel_color(start_x + 4 * 3, start_y + 4 * 2, color);
	draw_pixel_color(start_x + 4 * 3, start_y + 4 * 3, color);
	draw_pixel_color(start_x + 4 * 3, start_y + 4 * 4, color);
	draw_pixel_color(start_x + 4 * 3, start_y + 4 * 5, color);

	draw_pixel_color(start_x + 4 * 1, start_y + 4 * 1, color);
	draw_pixel_color(start_x + 4 * 2, start_y + 4 * 2, color);
}
void write_O(int start_x, int start_y, int color)
{

	draw_pixel_color(start_x + 4 * 1, start_y + 4 * 0, color);
	draw_pixel_color(start_x + 4 * 2, start_y + 4 * 0, color);

	draw_pixel_color(start_x + 4 * 0, start_y + 4 * 1, color);
	draw_pixel_color(start_x + 4 * 0, start_y + 4 * 2, color);
	draw_pixel_color(start_x + 4 * 0, start_y + 4 * 3, color);
	draw_pixel_color(start_x + 4 * 0, start_y + 4 * 4, color);

	draw_pixel_color(start_x + 4 * 3, start_y + 4 * 1, color);
	draw_pixel_color(start_x + 4 * 3, start_y + 4 * 2, color);
	draw_pixel_color(start_x + 4 * 3, start_y + 4 * 3, color);
	draw_pixel_color(start_x + 4 * 3, start_y + 4 * 4, color);

	draw_pixel_color(start_x + 4 * 1, start_y + 4 * 5, color);
	draw_pixel_color(start_x + 4 * 2, start_y + 4 * 5, color);

	return;
}
void write_R(int start_x, int start_y, int color)
{

	draw_pixel_color(start_x + 4 * 0, start_y + 4 * 0, color);
	draw_pixel_color(start_x + 4 * 0, start_y + 4 * 1, color);
	draw_pixel_color(start_x + 4 * 0, start_y + 4 * 2, color);
	draw_pixel_color(start_x + 4 * 0, start_y + 4 * 3, color);
	draw_pixel_color(start_x + 4 * 0, start_y + 4 * 4, color);
	draw_pixel_color(start_x + 4 * 0, start_y + 4 * 5, color);

	draw_pixel_color(start_x + 4 * 1, start_y + 4 * 0, color);
	draw_pixel_color(start_x + 4 * 2, start_y + 4 * 0, color);

	draw_pixel_color(start_x + 4 * 3, start_y + 4 * 1, color);

	draw_pixel_color(start_x + 4 * 1, start_y + 4 * 2, color);
	draw_pixel_color(start_x + 4 * 2, start_y + 4 * 2, color);

	draw_pixel_color(start_x + 4 * 2, start_y + 4 * 3, color);

	draw_pixel_color(start_x + 4 * 3, start_y + 4 * 4, color);

	draw_pixel_color(start_x + 4 * 3, start_y + 4 * 5, color);

	return;
}
void write_S(int start_x, int start_y, int color)
{
	draw_pixel_color(start_x + 4 * 1, start_y + 4 * 0, color);
	draw_pixel_color(start_x + 4 * 2, start_y + 4 * 0, color);
	draw_pixel_color(start_x + 4 * 3, start_y + 4 * 0, color);

	draw_pixel_color(start_x + 4 * 0, start_y + 4 * 1, color);

	draw_pixel_color(start_x + 4 * 1, start_y + 4 * 2, color);
	draw_pixel_color(start_x + 4 * 2, start_y + 4 * 2, color);

	draw_pixel_color(start_x + 4 * 3, start_y + 4 * 3, color);
	draw_pixel_color(start_x + 4 * 3, start_y + 4 * 4, color);

	draw_pixel_color(start_x + 4 * 0, start_y + 4 * 5, color);
	draw_pixel_color(start_x + 4 * 1, start_y + 4 * 5, color);
	draw_pixel_color(start_x + 4 * 2, start_y + 4 * 5, color);
}
void write_T(int start_x, int start_y, int color)
{
	draw_pixel_color(start_x + 4 * 0, start_y + 4 * 0, color);
	draw_pixel_color(start_x + 4 * 1, start_y + 4 * 0, color);
	draw_pixel_color(start_x + 4 * 2, start_y + 4 * 0, color);
	draw_pixel_color(start_x + 4 * 3, start_y + 4 * 0, color);
	draw_pixel_color(start_x + 4 * 4, start_y + 4 * 0, color);

	draw_pixel_color(start_x + 4 * 2, start_y + 4 * 1, color);
	draw_pixel_color(start_x + 4 * 2, start_y + 4 * 2, color);
	draw_pixel_color(start_x + 4 * 2, start_y + 4 * 3, color);
	draw_pixel_color(start_x + 4 * 2, start_y + 4 * 4, color);
	draw_pixel_color(start_x + 4 * 2, start_y + 4 * 5, color);
}
void write_U(int start_x, int start_y, int color)
{
	draw_pixel_color(start_x + 4 * 0, start_y + 4 * 0, color);
	draw_pixel_color(start_x + 4 * 3, start_y + 4 * 0, color);

	draw_pixel_color(start_x + 4 * 0, start_y + 4 * 1, color);
	draw_pixel_color(start_x + 4 * 0, start_y + 4 * 2, color);
	draw_pixel_color(start_x + 4 * 0, start_y + 4 * 3, color);
	draw_pixel_color(start_x + 4 * 0, start_y + 4 * 4, color);

	draw_pixel_color(start_x + 4 * 3, start_y + 4 * 1, color);
	draw_pixel_color(start_x + 4 * 3, start_y + 4 * 2, color);
	draw_pixel_color(start_x + 4 * 3, start_y + 4 * 3, color);
	draw_pixel_color(start_x + 4 * 3, start_y + 4 * 4, color);

	draw_pixel_color(start_x + 4 * 1, start_y + 4 * 5, color);
	draw_pixel_color(start_x + 4 * 2, start_y + 4 * 5, color);
}
void write_V(int start_x, int start_y, int color)
{
	draw_pixel_color(start_x + 4 * 0, start_y + 4 * 0, color);
	draw_pixel_color(start_x + 4 * 0, start_y + 4 * 1, color);
	draw_pixel_color(start_x + 4 * 0, start_y + 4 * 2, color);
	draw_pixel_color(start_x + 4 * 0, start_y + 4 * 3, color);
	draw_pixel_color(start_x + 4 * 0, start_y + 4 * 4, color);

	draw_pixel_color(start_x + 4 * 3, start_y + 4 * 0, color);
	draw_pixel_color(start_x + 4 * 3, start_y + 4 * 1, color);
	draw_pixel_color(start_x + 4 * 3, start_y + 4 * 2, color);
	draw_pixel_color(start_x + 4 * 3, start_y + 4 * 3, color);
	draw_pixel_color(start_x + 4 * 3, start_y + 4 * 4, color);

	draw_pixel_color(start_x + 4 * 1, start_y + 4 * 5, color);
	draw_pixel_color(start_x + 4 * 2, start_y + 4 * 5, color);
}
void write_W(int start_x, int start_y, int color)
{
	int x[] = {0, 0, 0, 0, 0, 1, 2, 2, 3, 4, 4, 4, 4, 4};
	int y[] = {0, 1, 2, 3, 4, 5, 3, 4, 5, 0, 1, 2, 3, 4};

	for(int i = 0; i < 14; ++i)
		draw_pixel_color(start_x + 4 * x[i], start_y + 4 * y[i], color);
}

void write_number(int start_x, int start_y, int number, int color)
{
	if(number == 1)
	{
		draw_pixel_color(start_x + 4 * 1, start_y + 4 * 1, color);
		draw_pixel_color(start_x + 4 * 0, start_y + 4 * 2, color);

		draw_pixel_color(start_x + 4 * 2, start_y + 4 * 0, color);
		draw_pixel_color(start_x + 4 * 2, start_y + 4 * 1, color);
		draw_pixel_color(start_x + 4 * 2, start_y + 4 * 2, color);
		draw_pixel_color(start_x + 4 * 2, start_y + 4 * 3, color);
		draw_pixel_color(start_x + 4 * 2, start_y + 4 * 4, color);
		draw_pixel_color(start_x + 4 * 2, start_y + 4 * 5, color);
	}

	if(number == 2)
	{
	
		int x[] = {0, 0, 0, 1, 1, 1, 2, 2, 2, 3, 3, 3};
		int y[] = {1, 4, 5, 0, 3, 5, 0, 3, 5, 1, 2, 5};

		for(int i = 0; i < 12; ++i)
			draw_pixel_color(start_x + 4 * x[i], start_y + 4 * y[i], color);
	}

	if(number == 3)
	{
		
		int x[] = {0, 0, 1, 1, 2, 2, 2, 3, 3, 3};
		int y[] = {1, 4, 0, 5, 0, 2, 5, 1, 3, 4};

		for(int i = 0; i < 10; ++i)
			draw_pixel_color(start_x + 4 * x[i], start_y + 4 * y[i], color);
	}

	if(number == 4)
	{
		int x[] = {0, 0, 1, 1, 2, 2, 3, 3, 3, 3, 3, 3};
		int y[] = {2, 3, 1, 3, 0, 3, 0, 1, 2, 3, 4, 5};

		for(int i = 0; i < 12; ++i)
			draw_pixel_color(start_x + 4 * x[i], start_y + 4 * y[i], color);
	}

	if(number == 5)
	{
		int x[] = {0, 0, 0, 0, 1, 1, 1, 2, 2, 2, 3, 3, 3};
		int y[] = {0, 1, 2, 4, 0, 2, 5, 0, 2, 5, 0, 3, 4};

		for(int i = 0; i < 13; ++i)
			draw_pixel_color(start_x + 4 * x[i], start_y + 4 * y[i], color);
	}

	if(number == 6)
	{
		int x[] = {0, 0, 0, 0, 1, 1, 1, 2, 2, 2, 3, 3};
		int y[] = {1, 2, 3, 4, 0, 3, 5, 0, 3, 5, 1, 4};

		for(int i = 0; i < 12; ++i)
			draw_pixel_color(start_x + 4 * x[i], start_y + 4 * y[i], color);
	}

	if(number == 7)
	{
		int x[] = {0, 0, 0, 1, 1, 2, 2, 3};
		int y[] = {0, 4, 5, 0, 3, 0, 2, 1};

		for(int i = 0; i < 8; ++i)
			draw_pixel_color(start_x + 4 * x[i], start_y + 4 * y[i], color);
	}

	if(number == 8)
	{
		int x[] = {0, 0, 0, 1, 1, 1, 2, 2, 2, 3, 3, 3};
		int y[] = {1, 3, 4, 0, 2, 5, 0, 2, 5, 1, 3, 4};

		for(int i = 0; i < 12; ++i)
			draw_pixel_color(start_x + 4 * x[i], start_y + 4 * y[i], color);
	}

	if(number == 9)
	{
		int x[] = {0, 0, 1, 1, 1, 2, 2, 2, 3, 3, 3, 3};
		int y[] = {1, 4, 0, 2, 5, 0, 2, 5, 1, 3, 4, 2};

		for(int i = 0; i < 12; ++i)
			draw_pixel_color(start_x + 4 * x[i], start_y + 4 * y[i], color);
	}

	if(number == 0)
	{
		int x[] = {0, 0, 0, 0, 1, 1, 1, 2, 2, 2, 3, 3, 3, 3};
		int y[] = {1, 3, 4, 2, 0, 3, 5, 0, 2, 5, 1, 3, 4, 2};

		for(int i = 0; i < 14; ++i)
			draw_pixel_color(start_x + 4 * x[i], start_y + 4 * y[i], color);
	}
}

void write_words()
{
	// Letters: ORIGINAL
	int color = 0x00;
	int start_x = 30;
	int start_y = 20;
	write_O(start_x, start_y, color);
	write_R(start_x + 4 * 5, start_y, color);
	write_I(start_x + 4 * 10, start_y, color);
	write_G(start_x + 4 * 12, start_y, color);
	write_I(start_x + 4 * 17, start_y, color);
	write_N(start_x + 4 * 19, start_y, color);
	write_A(start_x + 4 * 24, start_y, color);
	write_L(start_x + 4 * 29, start_y, 0x00);

	// VOCODER
	start_x = 30;
	start_y = 230;
	write_V(start_x, start_y, color);
	write_O(start_x + 4 * 5, start_y, color);
	write_C(start_x + 4 * 10, start_y, color);
	write_O(start_x + 4 * 15, start_y, color);
	write_D(start_x + 4 * 20, start_y, color);
	write_E(start_x + 4 * 25, start_y, color);
	write_R(start_x + 4 * 30, start_y, color);

	// Settings
	start_x = 355;
	start_y = 20;
	write_S(start_x, start_y, color);
	write_E(start_x + 4 * 5, start_y, color);
	write_T(start_x + 4 * 10, start_y, color);
	write_T(start_x + 4 * 16, start_y, color);
	write_I(start_x + 4 * 22, start_y, color);
	write_N(start_x + 4 * 24, start_y, color);
	write_G(start_x + 4 * 29, start_y, color);
	write_S(start_x + 4 * 34, start_y, color);

	// Volume
	start_x = 364;
	start_y = 63;
	color = 0xff;
	write_V(start_x, start_y, color);
	write_O(start_x + 4 * 5, start_y, color);
	write_L(start_x + 4 * 10, start_y, color);
	write_U(start_x + 4 * 15, start_y, color);
	write_M(start_x + 4 * 20, start_y, color);
	write_E(start_x + 4 * 26, start_y, color);

	//Domain
	start_x = 364;
	start_y = 120;
	color = 0xff;
	write_D(start_x + 4 * 0, start_y, color);
	write_O(start_x + 4 * 5, start_y, color);
	write_M(start_x + 4 * 10, start_y, color);
	write_A(start_x + 4 * 16, start_y, color);
	write_I(start_x + 4 * 21, start_y, color);
	write_N(start_x + 4 * 23, start_y, color);

	//Mult
	start_x = 364;
	start_y = 180;
	color = 0xff;
	write_M(start_x + 4 * 0, start_y, color);
	write_U(start_x + 4 * 6, start_y, color);
	write_L(start_x + 4 * 11, start_y, color);
	write_T(start_x + 4 * 14, start_y, color);

	//Window
	start_x = 364;
	start_y = 240;
	write_W(start_x + 4 * 0, start_y, color);
	write_I(start_x + 4 * 6, start_y, color);
	write_N(start_x + 4 * 8, start_y, color);
	write_D(start_x + 4 * 13, start_y, color);
	write_O(start_x + 4 * 18, start_y, color);
	write_W(start_x + 4 * 23, start_y, color);

	//Val
	start_x = 364;
	start_y = 300;
	write_V(start_x + 4 * 0, start_y, color);
	write_A(start_x + 4 * 5, start_y, color);
	write_L(start_x + 4 * 10, start_y, color);


}