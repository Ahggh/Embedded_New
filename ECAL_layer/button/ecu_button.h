/* 
 * File:   ecu_button.h
 * Author: Huda
 *
 * Created on October 25, 2023, 7:14 AM
 */

#ifndef ECU_BUTTON_H
#define	ECU_BUTTON_H
/*                              Includes                                             */
#include "../PIC18f_MCAL_gpio.h"

/*                  USER DEFINE Data_type Declarations                             */
                       //Enums:--
typedef enum{
 BUTTON_PRESSED=0,
 BUTTON_REALASED
}button_state_t;

typedef enum{
 BUTTON_ACTIVE_LOW=0,
 BUTTON_ACTIVE_HIGH
}button_conection_t;



                       //union:--


                        //structures
//configuration of driver 
typedef struct {
    uint8_t button_pin :3;
    uint8_t button_port :3;
    uint8_t button_conection_type :1;
}btn_config_t;




/*                    Macros Declarations              */

#define SAMPLE_NUMBER 16




/*                   Functions Like Macros Declarations             */






/*                   Functions  Declarations             */
STD_RetunType button_intialize(const btn_config_t *btn);
STD_RetunType button_read_state(const btn_config_t *btn,button_state_t * btn_state);





#endif	/* ECU_BUTTON_H */

