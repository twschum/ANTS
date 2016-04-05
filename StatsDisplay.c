#include "StatsDisplay.h"
#include "LCD.h"

void initDisplay(){
	LCD_init();
	LCD_clearScreen();

	//LCD_setPixel(10, 10, 1);
	//Draws targeting box
	LCD_drawBox(TARGET_BOX_X1, TARGET_BOX_Y1, TARGET_BOX_X2, TARGET_BOX_Y2, SET);
	//Draws N64 debug box
	LCD_drawBox(N64_DBG_BOX_X1, N64_DBG_BOX_Y1, N64_DBG_BOX_X2, N64_DBG_BOX_Y2, SET);
	//Draw pos data
	LCD_setPos(TARGET_HORZ_X, TARGET_HORZ_Y);
	LCD_printStr("X:");
	LCD_setPos(TARGET_VERT_X, TARGET_VERT_Y);
	LCD_printStr("Y:");
	//Draw shots left
	LCD_setPos(SHOTS_LEFT_POS_X, SHOTS_LEFT_POS_Y);
	LCD_printStr("Shots:");
	//Draw mode indicator
	LCD_setPos(MODE_POS_X, MODE_POS_Y);
	LCD_printStr("Mode:");
}

/*void testBarebones(10, 10, 1){

}*/
