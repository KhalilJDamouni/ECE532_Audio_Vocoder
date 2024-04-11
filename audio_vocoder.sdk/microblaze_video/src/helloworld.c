#include <stdio.h>
#include <math.h>
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "xil_types.h"
#include "xbram_hw.h"
#include "helloworld.h"
#include "demo.h"

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

	//Input Variables Helpers
	unsigned int old_counter = 0;

	//Original Waveform Variables
	u16 wave[70] = {0};
	u16 delete[70] = {0};
	int position = 0;
	int val;
	int start_x;
	int start_y;
	int color;
	int temp_mic;
	int in_a_row_1;
	int in_a_row_0;
	int sw = 0;

	//Settings Variables
	//Volume
	int volume_bar = 11;
	int previous_volume = 10;

	//Domain
	int domain = 0;
	int previous_domain = 1;
	write_domain_T();

	//Option Pointer
	int option = 0;
	int previous_option = 1;
	int option_y[5] = {62, 126, 180, 240, 300};


	//Init Audio
	audio_init();


	while (1)
	{
		//Read Inputs BEGIN
		keyboard_value = 'z';
		counter = test[3] & 0xffff; //Keyboard Counter
		mic = Xil_In16(mic_reg) & 0xffff; //Microphone Value
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

			xil_printf("keyboard: \%i\n\r", keyboard_value);
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
		if (option < 0) option = 4;
		if (option > 4) option = 0;
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
		temp_mic = mic;
		val = 70;
		in_a_row_0 = 1;
		in_a_row_1 = 1;
		for (int i = 0; i < 16; ++i)
		{
			if ((temp_mic & 1) == 1)
			{
				val = val - in_a_row_1;
				in_a_row_0 = 1;
				in_a_row_1 += 1;
			}
			else
			{
				val = val + in_a_row_0;
				in_a_row_0 += 1;
				in_a_row_1 = 1;
			}

			temp_mic = temp_mic >> 1;
		}
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
		if (sw == 0)
		{
			++position;
			if (position == 70)
				position = 0;
		}
		//Update Original Waveform END

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

}
