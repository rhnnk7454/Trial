/*
 * task_handler.c
 *
 *  Created on: May 13, 2021
 *      Author: rohan
 */

#include "main.h"


int extract_command(command_t *cmd);
void process_command(command_t *cmd);

const char* msg_inv = "///Message invalid///\n";

void menu_task(void *param){

	uint32_t cmd_addr;
	command_t *cmd;

	int option;

	const char* menu = "=====================\n"
					   "|      MAIN MENU   	|\n"
					   "=====================\n"
					   "LED effect		--->0\n"
						"Date and time	--->1\n"
						"Exit			--->2\n"
						"Enter your choice here: ";



	while(1){
		xQueueSend(q_print, &menu, portMAX_DELAY);

		xTaskNotifyWait(0,0, &cmd_addr, portMAX_DELAY);

		cmd = (command_t*)cmd_addr;

		if(cmd->len == 1){

			option = cmd->payload[0] - 48;
			switch(option){

				case 0:
					curr_state = sLedEffect;
					xTaskNotify(handle_led_task, 0, eNoAction);
					break;
				case 1:
					curr_state = sRtcMenu;
					xTaskNotify(handle_rtc_task, 0, eNoAction);
					break;
				case 2: //Exit implementation
					break;
				default:
					xQueueSend(q_print, &msg_inv,portMAX_DELAY);
					continue;

			}
		}else{

			xQueueSend(q_print, &msg_inv, portMAX_DELAY);
			continue;
		}

		xTaskNotifyWait(0, 0, NULL, portMAX_DELAY);



	}
}
void cmd_handler_task(void *param){

	BaseType_t ret;
	command_t cmd;
	while(1){

		ret = xTaskNotifyWait(0,0,NULL, portMAX_DELAY);
		if(ret == pdTRUE){
			process_command(&cmd);
		}

	}
}

void process_command(command_t *cmd){

	extract_command(cmd);

	switch(curr_state){

	case sMainMenu:
		xTaskNotify(handle_menu_task, (uint32_t)cmd, eSetValueWithOverwrite);
	break;
	case sLedEffect:
		xTaskNotify(handle_led_task, (uint32_t)cmd, eSetValueWithOverwrite);
	break;
	case sRtcMenu:
	case sRtcTimeConfig:
	case sRtcDateConfig:
	case sRtcReport:
		xTaskNotify(handle_rtc_task, (uint32_t)cmd, eSetValueWithOverwrite);
	break;


	}



}

int extract_command(command_t *cmd){

	uint8_t item;
	BaseType_t status;

	status = uxQueueMessagesWaiting(q_data);
	if(!status) return -1;
	uint8_t i=0;

	do{
		status = xQueueReceive(q_data, &item, 0);
		if(status == pdTRUE) cmd->payload[i++] = item;
	}while(item != '\n');

	cmd->payload[i-1] = '\0';
	cmd->len = i-1;

	return 0;

}

void print_task(void *param){

	uint32_t *msg;
	while(1){
		xQueueReceive(q_print, &msg, portMAX_DELAY);
		HAL_UART_Transmit(&huart2, (uint8_t*)msg, strlen((char*)msg),HAL_MAX_DELAY);

	}
}
void rtc_task(void *param){

	while(1){

	}
}
void led_task(void *param){
	uint32_t cmd_addr;
	command_t *cmd;

	const char *msg_led = "===========================\n"
							"|   LED EFFECT    		|\n"
						  "===========================\n"
							"(none,e1,e2,e3,e4|\n"
							"Enter your choice here: ";
	while(1){
		xTaskNotifyWait(0,0,NULL,portMAX_DELAY);

		xQueueSend(q_print, &msg_led, portMAX_DELAY);

		xTaskNotifyWait(0,0,&cmd_addr,portMAX_DELAY);
		cmd=(command_t*)cmd_addr;

		if(cmd->len <=4){

			if(!strcmp((char*)cmd->payload, "none"))
				led_effect_stop();
			else if(!strcmp((char*)cmd->payload, "e1"))
				led_effect(1);
			else if(!strcmp((char*)cmd->payload, "e2"))
				led_effect(2);
			else if(!strcmp((char*)cmd->payload, "e3"))
				led_effect(3);
			else if(!strcmp((char*)cmd->payload, "e4"))
				led_effect(4);
			else
				xQueueSend(q_print, &msg_inv, portMAX_DELAY);

		}else
			xQueueSend(q_print, &msg_inv, portMAX_DELAY);

		curr_state = sMainMenu;

		xTaskNotify(handle_menu_task,0,eNoAction);

	}
}
