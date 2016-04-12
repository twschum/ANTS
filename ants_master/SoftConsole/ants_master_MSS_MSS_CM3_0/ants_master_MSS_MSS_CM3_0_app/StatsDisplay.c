#include "StatsDisplay.h"
#include "LCD.h"

void disp_init(){
	LCD_init();
	LCD_clearScreen();

	//LCD_setPixel(10, 10, 1);
	//Draws targeting box
	LCD_drawBox(TARGET_BOX_X1, TARGET_BOX_Y1, TARGET_BOX_X2, TARGET_BOX_Y2, SET);
	//Draws N64 debug box
	LCD_drawBox(N64_DBG_BOX_X1, N64_DBG_BOX_Y1, N64_DBG_BOX_X2, N64_DBG_BOX_Y2, SET);
	//Draw pos data
	LCD_setPos(TARGET_HORZ_POS_X, TARGET_HORZ_POS_Y);
	LCD_printStr(TARGET_HORZ_STR);
	LCD_setPos(TARGET_VERT_POS_X, TARGET_VERT_POS_Y);
	LCD_printStr(TARGET_VERT_STR);
	//Draw shots left
	LCD_setPos(SHOTS_LEFT_POS_X, SHOTS_LEFT_POS_Y);
	LCD_printStr(SHOTS_STR);
	//Draw mode indicator
	LCD_setPos(MODE_POS_X, MODE_POS_Y);
	LCD_printStr(MODE_STR);
}

void disp_update(lcd_screen_state_t* lcd_state, lcd_screen_state_t* last_state,
	n64_state_t* ctrlr_state){
	
	circle_t *targ = lcd_state->target_pos;
	circle_t *lasttarg = last_state->target_pos;

	uint8_t dist 		= lcd_state->distance;
	uint8_t lastdist 	= last_state->distance;

	uint8_t shots 		= lcd_state->shots;
	uint8_t lastshots 	= last_state->shots;

	uint8_t mode 		= lcd_state->target_mode;
	uint8_t lastmode 	= last_state->target_mode;

	if(targ->x != lasttarg->x || targ->y != lasttarg->y)
		disp_write_target(targ, lasttarg);
	if(dist != lastdist)
		disp_write_dist(dist);
	if(shots != lastshots)
		disp_write_shots(shots);
	if(mode != lastmode)
		disp_write_mode(mode);

	disp_write_N64(ctrlr_state);
}


//This can be made more efficient:
//	use sprintf to print a number of three digits; this eliminates the need
//	for clearing the previous count
void disp_write_target(circle_t *targ, circle_t *lasttarg){
	//This just clears the whole screen, inefficient
	uint8_t tx = targ->x;
	uint8_t ty = targ->y;
	uint8_t lx = lasttarg->x;
	uint8_t ly = lasttarg->y;

	char horz[4];
	char vert[4];

	sprintf(horz, "%3d", tx);
	sprintf(vert, "%3d", ty);
	//LCD_eraseBlock(TARGET_UL_POS_X, TARGET_UL_POS_Y, TARGET_LR_POS_X, TARGET_LR_POS_Y); //Clear X:aaaY:bbb
	//LCD_eraseBlock(TARGET_BOX_X1+1, TARGET_BOX_Y1+1, TARGET_BOX_X2-1, TARGET_BOX_Y2-1); //Clear entire target area
	LCD_drawCircle(lx + TARGET_UL_POS_X, ly + TARGET_UL_POS_Y, TARGET_RAD, LCD_UNSET); //Clear the old circle
	//X:
	LCD_setPos(TARGET_HORZ_POS_X + TARGET_HORZ_STR_SZ*CHAR_WIDTH, TARGET_HORZ_POS_Y);
	//LCD_printStr(TARGET_HORZ_STR);
	LCD_printStr(horz);
	//Y:
	LCD_setPos(TARGET_VERT_POS_X + TRAGET_VERT_STR_SZ*CHAR_WIDTH, TARGET_VERT_POS_Y);
	//LCD_printStr(TARGET_VERT_STR);
	LCD_printNum(vert);

	//Draw the new target
	LCD_drawCircle(tx + TARGET_UL_POS_X,ty + TARGET_UL_POS_Y, TARGET_RAD, LCD_SET);
}

//This can be made more efficient:
//	use sprintf to print a number of three digits; this eliminates the need
//	for clearing the previous count
void disp_write_shots(unsigned int shots){
	char num[4];
	LCD_setPos(SHOTS_LEFT_POS_X, SHOTS_LEFT_POS_Y);
	LCD_setPos(SHOTS_LEFT_POS_X, SHOTS_LEFT_POS_Y);
	sprintf(num, "%3d", shots);
	LCD_printStr(num);
}


//This can be made more efficient:
//	use sprintf to print a number of three digits; this eliminates the need
//	for clearing the previous count
//Argument is assumed to have already been scaled
void disp_write_dist(unsigned int distance){
	char num[4];
	LCD_setPos(DIST_POS_X, DIST_POS_Y);
	LCD_setPos(DIST_POS_X, DIST_POS_Y);
	sprintf(num, "%3d", distance);
	LCD_printStr(distance);
}

void disp_write_mode(char newmode){
	//redundant, for clarity
	if(newmode == AUTO_MODE){
		//New mode is auto, erase manual
		LCD_eraseBlock(MODE_POS_X, MODE_POS_Y, MODE_POS_X + MANUAL_STR_SZ * CHAR_WIDTH, MODE_POS_Y - CHAR_HEIGHT);
		LCD_printStr(AUTO_STR);
	} else {
		//New mode is manual, erase auto
		LCD_eraseBlock(MODE_POS_X, MODE_POS_Y, MODE_POS_X + AUTO_STR_SZ * CHAR_WIDTH, MODE_POS_Y - CHAR_HEIGHT);
		LCD_printStr(MANUAL_STR);
	}
}

//It'd be a pain in the ass to do selective clearing,
//so instead I opted to just blow away the debug box
//every time we decide to write to it
void disp_write_N64(n64_state_t* state){
	char n64dbg[26];
	uint8_t i = 0;
	const char sp = " ";
	const char sp2 = "  ";
	if(state->A){
		sprintf(n64dbg + i++, "A");
	} else sprintf(n64dbg + i++, sp);
    if(state->B){
    	sprintf(n64dbg + i++, "B");
    } else sprintf(n64dbg + i++, sp);
    if(state->Z){
    	sprintf(n64dbg + i++, "Z");
    } else sprintf(n64dbg + i++, sp);
    if(state->Start){
    	sprintf(n64dbg + i++, "S");
    } else sprintf(n64dbg + i++, sp);
    if(state->Up){
    	sprintf(n64dbg + i++, "^");
    } else sprintf(n64dbg + i++, sp);
    if(state->Down){
    	sprintf(n64dbg + i++, "v");
    } else sprintf(n64dbg + i++, sp);
    if(state->Left){
    	sprintf(n64dbg + i++, "<");
    } else sprintf(n64dbg + i++, sp);
    if(state->Right){
    	sprintf(n64dbg + i++, ">");
    } else sprintf(n64dbg + i++, sp);
    if(state->L){
    	sprintf(n64dbg + i++, "L");
    } else sprintf(n64dbg + i++, sp);
    if(state->R){
    	sprintf(n64dbg + i++, "R");
    } else sprintf(n64dbg + i++, sp);
    if(state->C_Up){
    	sprintf(n64dbg + i++, "C^");
    } else sprintf(n64dbg + i++, sp2);
    if(state->C_Down){
    	sprintf(n64dbg + i++, "Cv");
    } else sprintf(n64dbg + i++, sp2);
    if(state->C_Left){
    	sprintf(n64dbg + i++, "C<");
    } else sprintf(n64dbg + i++, sp2);
    if(state->C_Right){
    	sprintf(n64dbg + i++, "C>");
    } else sprintf(n64dbg + i++, sp2);

    sprintf(n64dbg + i++, "X");
    sprintf(n64dbg + i, "%d", state->X_axis);
    i+=3;
    sprintf(n64dbg + i++, "Y");
    sprintf(n64dbg + i, "%d", state->Y_axis);

    LCD_setPos(N64_DBG_BOX_X1 + 2, N64_DBG_BOX_Y1 + 2);
    LCD_printStr(n64dbg);

}


/*
	printf("A: %d  B: %d  Z: %d  Start: %d  Up: %d  Down: %d  Left: %d  Right: %d  L: %d  R: %d  C_Up: %d  C_Down: %d  C_Left: %d  C_Right: %d  X_axis: %3d  Y_axis: %3d\r\n",
        state->A,
        state->B,
        state->Z,
        state->Start,
        state->Up,
        state->Down,
        state->Left,
        state->Right,
        state->L,
        state->R,
        state->C_Up,
        state->C_Down,
        state->C_Left,
        state->C_Right,
        state->X_axis,
        state->Y_axis
    );
*/


void testBarebones(){

}
