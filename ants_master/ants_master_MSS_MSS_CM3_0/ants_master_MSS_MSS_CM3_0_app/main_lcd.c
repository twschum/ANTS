/*#include <stdlib.h>

#include "mss_uart/mss_uart.h"
#include "StatsDisplay.h"

int main()
{
	disp_init();

	lcd_screen_state_t states[20];
	int i;
	for(i = 0; i < 20; i++){
		circle_t* c = malloc(sizeof(circle_t));
		c->x=i;
		c->y=i;
		c->r=TARGET_RAD;
		states[i].target_pos = c;
		states[i].distance = i;
		states[i].shots = 20-i;
		states[i].target_mode = i%2;
	}

	n64_state_t off;
	off.A = 0;
	off.B = 0;
	off.Z = 0;
	off.Start = 0;
	off.Up = 0;
	off.Down = 0;
	off.Left = 0;
	off.Right = 0;
	off.L = 0;
	off.R = 0;
	off.C_Up = 0;
	off.C_Down = 0;
	off.C_Left = 0;
	off.C_Right = 0;
	off.X_axis = 0;
	off.Y_axis = 0;

	n64_state_t on;
	on.A = 1;
	on.B = 1;
	on.Z = 1;
	on.Start = 1;
	on.Up = 1;
	on.Down = 1;
	on.Left = 1;
	on.Right = 1;
	on.L = 1;
	on.R = 1;
	on.C_Up = 1;
	on.C_Down = 1;
	on.C_Left = 1;
	on.C_Right = 1;
	on.X_axis = 1;
	on.Y_axis = 1;

	while( 1 )
	{
		uint8_t last = 19;
		int i;
		for(i = 0; i <20; i++){
			int j, dummy;
			for(j=0; j<10000000; j++){dummy+=j;}
			if(i%2)
				disp_update(&states[i], &states[last], &on);
			else
				disp_update(&states[i], &states[last], &off);
			last = i;
			printf("%d",dummy);
		}
	}
}
*/
