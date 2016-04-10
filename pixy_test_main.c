// pixy_test_main

#include "drivers/Pixy_SPI.h"

int main()
{
  int i=0, curr, prev=0;

  // look for two start codes back to back
  while(1)
  {
    /*curr = getStart());
    if (prev && curr) // two start codes means start of new frame
      printf("%d", i++);
    prev = curr;*/
  	//Jack: From my understanding of the getStart(), the above is wrong
  	//getStart() checks for two start codes, and sets a global variable if it's
  	//just a regular start or a color coded start. Therefore, this doesn't 
  	//represent the start of a new frame, but rather:
  	/*	
  		|  start0  |    		   |  start0   |			  |  start1  |              |  start1   |
		0xaa55 0xaa55 <FRAME DATA> 0xaa55 0xaa55 <FRAME DATA> 0xaa55 0xaa55 <FRAME DATA> 0xaa55 0xaa55
  	*/
	//So, it looks like this would actually drop frames

  }
}