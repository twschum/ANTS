/*
 * Interface to signal the different LED light patterns to
 * the arduino controller via 3 GPIO pins
 *
 * using GPIO 4, 5, 6
 */

#include <inttypes.h>
#include "drivers/mss_gpio/mss_gpio.h"

#define LIGHTS_IDLE        0x00
#define LIGHTS_SAFETY_OFF  0x01
#define LIGHTS_AUTO_MODE   0x02
#define LIGHTS_FIRING      0x03
#define LIGHTS_RELOADING   0x04
#define LIGHTS_b           0x05
#define LIGHTS_c           0x06
#define LIGHTS_d           0x07

void lights_init() {

    //MSS_GPIO_init();
    MSS_GPIO_config(MSS_GPIO_4, MSS_GPIO_OUTPUT_MODE);
    MSS_GPIO_config(MSS_GPIO_5, MSS_GPIO_OUTPUT_MODE);
    MSS_GPIO_config(MSS_GPIO_6, MSS_GPIO_OUTPUT_MODE);
    MSS_GPIO_set_output(MSS_GPIO_4, 0);
    MSS_GPIO_set_output(MSS_GPIO_5, 0);
    MSS_GPIO_set_output(MSS_GPIO_6, 0);

}

void lights_set(uint8_t pattern) {

	printf("Lights set: 0x%x\r\n", pattern);
	printf("bit0:%d\tbit1:%d\tbit2:%d\t\r\n",0x01 & pattern,((0x02 & pattern)>>1),((0x04 & pattern)>>2));
    MSS_GPIO_set_output(MSS_GPIO_4, (0x01 & pattern)); // lsb
    MSS_GPIO_set_output(MSS_GPIO_5, (((0x02 & pattern)>>1)));
    MSS_GPIO_set_output(MSS_GPIO_6, (((0x04 & pattern)>>2))); // msp
}

