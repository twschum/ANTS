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
	LCD_printStr(TARGET_HORZ_STR);
	LCD_setPos(TARGET_VERT_X, TARGET_VERT_Y);
	LCD_printStr(TARGET_VERT_STR);
	//Draw shots left
	LCD_setPos(SHOTS_LEFT_POS_X, SHOTS_LEFT_POS_Y);
	LCD_printStr(SHOTS_STR);
	//Draw mode indicator
	LCD_setPos(MODE_POS_X, MODE_POS_Y);
	LCD_printStr(MODE_STR);
}

void updateDisplay(lcd_screen_state_t* lcd_state, n64_state_t* ctrlr_state){
	//Update the N64 Debug Box

	//Update the position data
	LCD_setPos(SHOTS_LEFT_POS_X + (SHOTS_STR_SZ-1) * CHAR_WIDTH, SHOTS_LEFT_POS_Y)
	

	//Update the shots left
	//Calculate offset (-1 b/c of null char)
	LCD_setPos(SHOTS_LEFT_POS_X + (SHOTS_STR_SZ-1) * CHAR_WIDTH, SHOTS_LEFT_POS_Y)
	LCD_printNum(lcd_state->shots_left);

	//Update the mode
	LCD_setPos(MODE_POS_X, MODE_POS_Y);
	if(lcd_state->target_mode){
		LCD_printStr(AUTO_STR);
	} else {
		LCD_printStr(MANUAL_STR);
	}
}

