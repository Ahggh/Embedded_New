/* 
 * File:   Application.c
 * Author: Huda
 *
 * Created on October 3, 2023, 4:17 PM
 */



/*
 * 
 */
#include "Application.h"
dc_motor_config Motor={.Motor_A_PIN[0].M_pin=PIN0,

.Motor_A_PIN[0].M_port=PORTC_INDEX,

.Motor_A_PIN[1].M_pin=PIN1,

.Motor_A_PIN[1].M_port=PORTC_INDEX,.Motor_A_PIN[1].M_port=PORTC_INDEX};
dc_motor_config Motor_1={/*M1*/
    {
    {PIN0,PORTC_INDEX,LOW}/*A1*/,
{PIN1,PORTC_INDEX,LOW}/*A2*/
    }
         ,/*M2*/
         {    
{PIN2,PORTC_INDEX,LOW}/*B1*/,
{PIN3,PORTC_INDEX,LOW}  /*B2*/                  
         }
};


 
int main() {
  uint8_t volatile  logic_t;
    uint8_t ret;
    ret=dc_motor_intialize(&Motor_1,Motor_A);
 
ret=dc_motor_intialize(&Motor_1,Motor_B);
    //ret=gpio_pin_read_logic(&btn,&logic_t);

while(1){
ret=dc_motor_move_right(&(Motor_1),Motor_A);
ret=dc_motor_move_right(&(Motor_1),Motor_B);
__delay_ms(1000);
ret=dc_motor_stop(&(Motor_1),Motor_A);
__delay_ms(1000);
ret=dc_motor_move_left(&(Motor_1),Motor_A);
__delay_ms(1000);
ret=dc_motor_stop(&(Motor_1),Motor_A);
__delay_ms(1000);
}
    return (EXIT_SUCCESS);
}

