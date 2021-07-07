/*
 * led_effect.c
 *
 *  Created on: May 13, 2021
 *      Author: rohan
 */

#include "main.h"

void led_effect_stop(void){

	for(int i=0;i<4;i++){
		xTimerStop(handle_led_timer[i], portMAX_DELAY);
	}


}

void led_effect(int n){

	led_effect_stop();
	xTimerStart(handle_led_timer[n-1], portMAX_DELAY);

}

void LED_effect(){

	static int flag = 1;

	(flag ^= 1) ? HAL_GPIO_WritePin(GPIOA, GPIO_PIN_5, GPIO_PIN_RESET) : HAL_GPIO_WritePin(GPIOA, GPIO_PIN_5, GPIO_PIN_SET);

}

