#include "mss_uart/mss_uart.h"
#include "LCD.h"

int main()
{
	LCD_init();
	LCD_printStr("Hello World");
	LCD_printNum(0x77);
	LCD_printNum(1234);

	while( 1 )
	{
	}
}
