/**********************************************
Colleen
3/22/2016

**********************************************/

#ifndef LCD_h
#define LCD_h

#include "mss_uart/mss_uart.h"


	void LCD_init();
	void LCD_printStr(char Str[78]);
	void LCD_printNum(int num);
	void LCD_nextLine();
	void LCD_clearScreen();
    void LCD_toggleReverseMode();
	void LCD_toggleSplash();
	void LCD_setBacklight(uint8_t duty);
	//void LCD_setBaud(uint8_t baud);
	//void LCD_restoreDefaultBaud();
  	void LCD_setX(uint8_t posX);
	void LCD_setY(uint8_t posY);
	void LCD_setHome();
	void LCD_demo();
	void LCD_setPixel(uint8_t x, uint8_t y, uint8_t set);
	void LCD_drawLine(uint8_t x1, uint8_t y1, uint8_t x2, uint8_t y2, uint8_t set);
	void LCD_drawBox(uint8_t x1, uint8_t y1, uint8_t x2, uint8_t y2, uint8_t set);
	void LCD_drawCircle(uint8_t x, uint8_t y, uint8_t rad, uint8_t set);
	void LCD_eraseBlock(uint8_t x1, uint8_t y1, uint8_t x2, uint8_t y2);



#endif


