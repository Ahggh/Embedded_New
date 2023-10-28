/* 
 * File:   PIC18f_MCAL_gpio.h
 * Author: Huda
 *
 * Created on October 3, 2023, 4:16 PM
 */

#ifndef PIC18F_MCAL_GPIO_H
#define	PIC18F_MCAL_GPIO_H
/*                              Includes                                             */
#include "pic18f4620.h"
#include "Mcal_device_config.h"
#include "mcal_std_types.h"


/*                  USER DEFINE Data_type Declarations                             */
                       //Enums:--
typedef enum {
    LOW=0,
    HIGH
}LOGIC_STATE;

typedef enum{
    OUTPUT=0,
    INPUT 
}DIRECTION_STATE;
typedef enum{
   PIN0=0,
   PIN1,
   PIN2,
   PIN3,
   PIN4,
   PIN5,
   PIN6,
   PIN7      
}PIN_INDEX_t;
typedef enum{
   PORTA_INDEX=0,
   PORTB_INDEX,
   PORTC_INDEX,
   PORTD_INDEX,
   PORTE_INDEX,     
}PORT_INDEX;


                        //union:--

//portA_TRIS_DIO

typedef union{
        struct {
       unsigned char TRISA0                 :1;
       unsigned char TRISA1                 :1;
       unsigned char TRISA2                 :1;
       unsigned char TRISA3                 :1;
       unsigned char TRISA4                 :1;
       unsigned char TRISA5                 :1;
       unsigned char TRISA6                 :1;
       unsigned char TRISA7                 :1;
    };
    unsigned char All_Bits;
}portA_tris;

//portA_port_DIO
typedef union{
      struct {
        unsigned RB0                    :1;
        unsigned RB1                    :1;
        unsigned RB2                    :1;
        unsigned RB3                    :1;
        unsigned RB4                    :1;
        unsigned RB5                    :1;
        unsigned RB6                    :1;
        unsigned RB7                    :1;
    };
    unsigned char All_Bits;
}portA_port;

//portA_LAt_DIO
typedef union{
        struct {
        unsigned LATB0                  :1;
        unsigned LATB1                  :1;
        unsigned LATB2                  :1;
        unsigned LATB3                  :1;
        unsigned LATB4                  :1;
        unsigned LATB5                  :1;
        unsigned LATB6                  :1;
        unsigned LATB7                  :1;
    };
    unsigned char All_Bits;
}portA_lat;
//structures 
//for intializtion ports
typedef struct{
    uint8_t port     :3;  /*@ref PORT_INDEX*/
    uint8_t pin      :3 ; /*@ref PIN_INDEX*/
    uint8_t dirction :1;  /*@ref DIRECTION_STATE*/
    uint8_t logic    :1;  /*@ref LOGIC_STATE*/
}pin_config_t;


















/*                    Macros Declarations              */
#define BIT_MASK         (uint8_t)1
#define MAX_PORTS        (uint8_t)5
// for portA DIO
#define portA_Tris_AD 0xF92
#define portA_port_AD 0xF80
#define portA_Lat_AD  0xF89
// for portA DIO
#define portA_Tris_AD 0xF92
#define portA_port_AD 0xF80
#define portA_Lat_AD  0xF89
//for portC DIO
#define portC_Tris_AD 0xF94
#define portC_port_AD 0xF82
#define portC_Lat_AD  0xF8B

/*                   Functions Like Macros Declarations             */

#define HWREG8(_X)               (*((volatile  uint8_t *)(_x))
#define SET_BIT(REG,BIT_POS)     (REG|=(BIT_MASK <<BIT_POS)) 
#define CLEAR_BIT(REG,BIT_POS)   (REG&=~(BIT_MASK <<BIT_POS))
#define TOGGLE_BIT(REG,BIT_POS)  (REG^=(BIT_MASK << BIT_POS))
#define READ_BIT(REG,BIT_POS)     ((REG>>BIT_POS)&BIT_MASK)
// for portA DIO
#define portA_Tris (*((volatile  portA_tris *)0xF92))
#define portA_port (*((volatile  portA_port *)0xF80))
#define portA_Lat  (*((volatile  portA_lat *)0xF89))


//for portB DIO
#define portB_Tris (*((volatile  TRISBbits_t *)0xF93))
#define portB_port (*((volatile  PORTBbits_t *)0xF81))
#define portB_Lat  (*((volatile  LATBbits_t *)0xF8A))

//for portC DIO
#define portC_Tris (*((volatile  TRISCbits_t *)0xF94))
#define portC_port (*((volatile  PORTCbits_t *)0xF82))
#define portC_Lat  (*((volatile  LATCbits_t *)0xF8B)) 
/*                   Functions  Declarations             */
STD_RetunType gpio_pin_dirction_intialize(const pin_config_t*_pin_config);
STD_RetunType gpio_pin_get_dirction_status(const pin_config_t*_pin_config,DIRECTION_STATE * dirction_status );
STD_RetunType gpio_pin_write_logic(const pin_config_t*_pin_config, LOGIC_STATE logic  );
STD_RetunType gpio_pin_read_logic(const pin_config_t*_pin_config, LOGIC_STATE *logic  );
STD_RetunType gpio_pin_toggle_logic(const pin_config_t*_pin_config);
// port configuration
 STD_RetunType gpio_port_dirction_intialize(PORT_INDEX port,uint8_t dirction_status);
 STD_RetunType gpio_port_get_dirction_status(PORT_INDEX port,uint8_t *dirction_status );
 STD_RetunType gpio_port_write_logic(PORT_INDEX port,uint8_t logic ); 
 STD_RetunType gpio_port_read_logic(PORT_INDEX port,uint8_t *logic );
 STD_RetunType gpio_port_toggle_logic(PORT_INDEX port);
      
#endif	/* PIC18F_MCAL_GPIO_H */

