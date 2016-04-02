/**********************************************
Colleen
3/22/2016

**********************************************/

#ifndef LCD_h
#define LCD_h

#include "LCD.h"
#include "mss_uart/mss_uart.h"



	void LCD_init() 
	{
		MSS_UART_init(
			&g_mss_uart1,
			MSS_UART_115200_BAUD,
			MSS_UART_DATA_8_BITS | MSS_UART_NO_PARITY | MSS_UART_ONE_STOP_BIT
			);
	}
	
	void LCD_printStr(char Str[78])
	{
		// the length of one line on the LCD is 26 characters long
		MSS_UART_polled_tx_string( &g_mss_uart1, (unsigned char*)Str );
	}
	
	void LCD_printNum(int num)
	{
		uint8_t message[] = {num};
		MSS_UART_polled_tx( &g_mss_uart1, message, sizeof(message) );
	}
	
	void LCD_nextLine()
	{
		uint8_t message[] = "\n\r";
		MSS_UART_polled_tx( &g_mss_uart1, message, sizeof(message) );
	}
	
	void LCD_clearScreen()
	{
		//clears the screen, you will use this a lot!
		uint8_t message[] = {0x7C};
		uint8_t message2[] = {0x00};
		MSS_UART_polled_tx( &g_mss_uart1, message, sizeof(message) );
		MSS_UART_polled_tx( &g_mss_uart1, message2, sizeof(message2) );
	}
	
    void LCD_toggleReverseMode()
    {
    	//Everything that was black is now white and vise versa
    	uint8_t message[] = {0x7C};
		uint8_t message2[] = {0x12};
		MSS_UART_polled_tx( &g_mss_uart1, message, sizeof(message) );
		MSS_UART_polled_tx( &g_mss_uart1, message2, sizeof(message2) );
    }
    
	void LCD_toggleSplash()
	{
		//turns the splash screen on and off, the 1 second delay at startup stays either way.
		uint8_t message[] = {0x7C};
		uint8_t message2[] = {0x13};
		MSS_UART_polled_tx( &g_mss_uart1, message, sizeof(message) );
		MSS_UART_polled_tx( &g_mss_uart1, message2, sizeof(message2) );
	}
	
	void LCD_setBacklight(duty)
	{
		//duty needs to be one byte
		//changes the back light intensity, range is 0-100.
		uint8_t message[] = {0x7C};
		uint8_t message2[] = {0x02};
		uint8_t message3[] = {duty};
		MSS_UART_polled_tx( &g_mss_uart1, message, sizeof(message) );
		MSS_UART_polled_tx( &g_mss_uart1, message2, sizeof(message2) );
		MSS_UART_polled_tx( &g_mss_uart1, message3, sizeof(message3) );
	}
	
	// void LCD_setBaud(byte baud)
	// {

	// }
	
	// void LCD_restoreDefaultBaud()
	// {

	// }
	
 	void LCD_setX(posX)
 	{
		//posX needs to be one byte
		//Set the X position 
 		uint8_t message[] = {0x7C};
		uint8_t message2[] = {0x18};
		uint8_t message3[] = {posX};
		MSS_UART_polled_tx( &g_mss_uart1, message, sizeof(message) );
		MSS_UART_polled_tx( &g_mss_uart1, message2, sizeof(message2) );
		MSS_UART_polled_tx( &g_mss_uart1, message3, sizeof(message3) );

		//characters are 8 pixels tall x 6 pixels wide
		//The top left corner of a char is where the x/y value will start its print
		//For example, if you print a char at position 1,1, the bottom right of your char will be at position 7,9.
		//Therefore, to print a character in the very bottom right corner, you would need to print at the coordinates 
		//x = 154 , y = 120. You should never exceed these values.


		// Here we have an example using an upper case 'B'. The star is where the character starts, given a set 
		//of x,y coordinates. # represents the blocks that make up the character, and _ represnets the remaining 
		//unused bits in the char space. 
		//    *###__
		//    #   #_
		//    #   #_
		//    ####__
		//    #   #_
		//    #   #_
		//    ####__
		//    ______
 	}

	void LCD_setY(posY)
	{
		//posY needs to be one byte
		uint8_t message[] = {0x7C};
		uint8_t message2[] = {0x18};
		uint8_t message3[] = {posY};
		MSS_UART_polled_tx( &g_mss_uart1, message, sizeof(message) );
		MSS_UART_polled_tx( &g_mss_uart1, message2, sizeof(message2) );
		MSS_UART_polled_tx( &g_mss_uart1, message3, sizeof(message3) );
	}

	void LCD_setHome()
	{

	}
	
	void LCD_demo()
	{
		//Demonstrates all the capabilities of the LCD
		uint8_t message[] = {0x7C};
		uint8_t message2[] = {0x04};
		MSS_UART_polled_tx( &g_mss_uart1, message, sizeof(message) );
		MSS_UART_polled_tx( &g_mss_uart1, message2, sizeof(message2) );
	}
	
	void LCD_setPixel(x, y, set)
	{
		// x, y, and set are all one byte
		// not sure what set does, sparkfun didn't set it to anything
		uint8_t message[] = {0x7C};
		uint8_t message2[] = {0x10};
		uint8_t message3[] = {x};
		uint8_t message4[] = {y};
		uint8_t message5[] = {set};
		MSS_UART_polled_tx( &g_mss_uart1, message, sizeof(message) );
		MSS_UART_polled_tx( &g_mss_uart1, message2, sizeof(message2) );
		MSS_UART_polled_tx( &g_mss_uart1, message3, sizeof(message3) );
		MSS_UART_polled_tx( &g_mss_uart1, message4, sizeof(message4) );
		MSS_UART_polled_tx( &g_mss_uart1, message5, sizeof(message5) );
		// @TODO: need to set delay(10); not sure how to
	}

	void LCD_drawLine(x1, y1, x2, y2, set)
	{
		//draws a line from two given points. You can set and reset just as the pixel function.
		// x1, y1, x2, y2 and set are all one byte
		// not sure what set does, sparkfun didn't set it to anything
		uint8_t message[] = {0x7C};
		uint8_t message2[] = {0x0C};
		uint8_t message3[] = {x1};
		uint8_t message4[] = {y1};
		uint8_t message5[] = {x2};
		uint8_t message6[] = {y2};
		uint8_t message7[] = {set};
		MSS_UART_polled_tx( &g_mss_uart1, message, sizeof(message) );
		MSS_UART_polled_tx( &g_mss_uart1, message2, sizeof(message2) );
		MSS_UART_polled_tx( &g_mss_uart1, message3, sizeof(message3) );
		MSS_UART_polled_tx( &g_mss_uart1, message4, sizeof(message4) );
		MSS_UART_polled_tx( &g_mss_uart1, message5, sizeof(message5) );
		MSS_UART_polled_tx( &g_mss_uart1, message6, sizeof(message6) );
		MSS_UART_polled_tx( &g_mss_uart1, message7, sizeof(message7) );
		// @TODO: need to set delay(10); not sure how to
	}

	void LCD_drawBox(x1, y1, x2, y2, set)
	{
		//draws a box from two given points. You can set and reset just as the pixel function.
		// x1, y1, x2, y2 and set are all one byte
		// not sure what set does, sparkfun didn't set it to anything
		if(set){
			uint8_t message[] = {0x7C};
			uint8_t message2[] = {0x0F};
			uint8_t message3[] = {x1};
			uint8_t message4[] = {y1};
			uint8_t message5[] = {x2};
			uint8_t message6[] = {y2};
			//uint8_t message7[] = {set};
			MSS_UART_polled_tx( &g_mss_uart1, message, sizeof(message) );
			MSS_UART_polled_tx( &g_mss_uart1, message2, sizeof(message2) );
			MSS_UART_polled_tx( &g_mss_uart1, message3, sizeof(message3) );
			MSS_UART_polled_tx( &g_mss_uart1, message4, sizeof(message4) );
			MSS_UART_polled_tx( &g_mss_uart1, message5, sizeof(message5) );
			MSS_UART_polled_tx( &g_mss_uart1, message6, sizeof(message6) );
		} else{
			LCD_drawLine(x1, y1, x1, y2, 0);
			LCD_drawLine(x1, y1, x2, y1, 0);
			//LCD_drawLine(x2, y2, x1, y2, 1);
			LCD_drawLine(x1, y2, x2, y2, 0);
			//LCD_drawLine(x2, y2, x2, y1, 1);
			LCD_drawLine(x2, y1, x2, y2, 0);
		}
		//MSS_UART_polled_tx( &g_mss_uart1, message7, sizeof(message7) );
		// @TODO: need to set delay(10); not sure how to
	}

	void LCD_drawCircle(x, y, rad, set)
	{
		//draws a circle from a point x,y with a radius of rad.
		//Circles can be drawn off-grid, but only those pixels that fall within the
		//display boundaries will be written.
		// x, y, rad, and set are all one byte
		// not sure what set does, sparkfun didn't set it to anything
		uint8_t message[] = {0x7C};
		uint8_t message2[] = {0x03};
		uint8_t message3[] = {x};
		uint8_t message4[] = {y};
		uint8_t message5[] = {rad};
		uint8_t message6[] = {set};
		MSS_UART_polled_tx( &g_mss_uart1, message, sizeof(message) );
		MSS_UART_polled_tx( &g_mss_uart1, message2, sizeof(message2) );
		MSS_UART_polled_tx( &g_mss_uart1, message3, sizeof(message3) );
		MSS_UART_polled_tx( &g_mss_uart1, message4, sizeof(message4) );
		MSS_UART_polled_tx( &g_mss_uart1, message5, sizeof(message5) );
		MSS_UART_polled_tx( &g_mss_uart1, message6, sizeof(message6) );
		// @TODO: need to set delay(10); not sure how to
	}

	void LCD_eraseBlock(x1, y1, x2, y2)
	{
		uint8_t message[] = {0x7C};
		uint8_t message2[] = {0x05};
		uint8_t message3[] = {x1};
		uint8_t message4[] = {y1};
		uint8_t message5[] = {x2};
		uint8_t message6[] = {y2};
		MSS_UART_polled_tx( &g_mss_uart1, message, sizeof(message) );
		MSS_UART_polled_tx( &g_mss_uart1, message2, sizeof(message2) );
		MSS_UART_polled_tx( &g_mss_uart1, message3, sizeof(message3) );
		MSS_UART_polled_tx( &g_mss_uart1, message4, sizeof(message4) );
		MSS_UART_polled_tx( &g_mss_uart1, message5, sizeof(message5) );
		MSS_UART_polled_tx( &g_mss_uart1, message6, sizeof(message6) );
		// @TODO: need to set delay(10); not sure how to
	}

#endif


