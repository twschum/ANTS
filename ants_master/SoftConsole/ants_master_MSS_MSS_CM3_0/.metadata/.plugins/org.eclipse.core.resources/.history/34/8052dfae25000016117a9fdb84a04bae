// pixy_test_main

#include "drivers/Pixy_SPI.h"

/*curr = getStart());
if (prev && curr) // two start codes means start of new frame
printf("%d", i++);
prev = curr;*/

//Jack: From my understanding of the getStart(), the above is wrong
//getStart() checks for two start codes, and sets a global variable if it's
//just a regular start or a color coded start. Therefore, this doesn't 
//represent the start of a new frame, but rather:
/*	
|  start0  |    		   |  start0   |this gets lost|  start1  |              |  start1   |
0xaa55 0xaa55 <FRAME DATA> 0xaa55 0xaa55 <FRAME DATA> 0xaa55 0xaa55 <FRAME DATA> 0xaa55 0xaa55
*/
//So, it looks like this approach would actually drop frames, showing 25 fps, and not 50
//It's also syntactically incorrect, FFS (line 12 extra paren)

//Below is an example that actually works

int main()
{
  int i=0, curr;
  Pixy_init();
  printf("start pixy loop\r\n");
  while(1)
  {
	curr = Pixy_get_blocks(50);
	if(curr){
		++i;
		//This should print roughly once per second
		if(i%50 == 0){
			printf("frame %d\r\n", i);
			pixy_block_t *b = &g_blocks[0];
			pixy_print(b);
		}
	}
  }
}

