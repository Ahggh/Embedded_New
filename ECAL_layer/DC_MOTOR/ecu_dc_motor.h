/* 
 * File:   ecu_dc_motor.h
 * Author: Huda
 *
 * Created on October 25, 2023, 3:48 PM
 */

#ifndef ECU_DC_MOTOR_H
#define	ECU_DC_MOTOR_H
/*                              Includes                                             */
#include "../PIC18f_MCAL_gpio.h"
#include "ecu_dc_motor_cfg.h"
/*                  USER DEFINE Data_type Declarations                             */
                       //Enums:-- 
typedef enum{
  DC_MOTOR_OFF=0,
   DC_MOTOR_ON        
}motor_state_t;
typedef enum{
   Motor_A=0,
   Motor_B
}Motor_Name;
            //union:--


                        //structures
typedef struct {
    uint8_t M_pin :3;
    uint8_t M_port :3;
    uint8_t pin_state :1;
}Motor_IN;
typedef struct{
  Motor_IN Motor_A_PIN[2] ; 
  Motor_IN Motor_B_PIN[2] ;
 }dc_motor_config;



/*                    Macros Declarations              */
#define DC_MOTOR_PIN1 0
#define DC_MOTOR_PIN2 1

/*                   Functions Like Macros Declarations             */
/*                   Functions  Declarations             */
 STD_RetunType dc_motor_intialize(dc_motor_config *dc_motor_config,Motor_Name Motor_target);
 STD_RetunType dc_motor_move_right(dc_motor_config *dc_motor_config,Motor_Name Motor_target);
 STD_RetunType dc_motor_move_left(dc_motor_config *dc_motor_config,Motor_Name Motor_target);
 STD_RetunType dc_motor_stop(dc_motor_config *dc_motor_config,Motor_Name Motor_target);
#endif	/* ECU_DC_MOTOR_H */

