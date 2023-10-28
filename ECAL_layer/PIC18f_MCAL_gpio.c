/* 
 * File:   PIC18f_MCAL_gpio.h
 * Author: Huda
 *
 * Created on October 3, 2023, 4:16 PM
 */
#include "PIC18f_MCAL_gpio.h"
/*reference to data direction register*/
volatile uint8_t *tris_reg[5]={&portA_Tris,&portB_Tris,&portC_Tris};
/*reference to Latch registers (read and Write to data register)*/
volatile uint8_t *lat_reg[5]={&portA_Lat,&portB_Lat,&portC_Lat};
/*reference to port status registers (read and Write to data register)*/
volatile uint8_t *port_reg[]={&portA_port,&portB_port,&portC_port};
/**
 * 
 * @param _pin_config
 * @return 
 */
STD_RetunType gpio_pin_dirction_intialize(const pin_config_t*_pin_config){
    uint8_t ret=E_OK ;
    if((_pin_config==NULL)||(_pin_config->pin>7)||(_pin_config->port>5))
    {   
        ret=E__NOT_OK ;
 
    } 
    else
    {
        switch(_pin_config->dirction)
        {
            case OUTPUT:
         CLEAR_BIT(*tris_reg[_pin_config->port],_pin_config->pin);
                break;
            case INPUT:
              SET_BIT(*tris_reg[_pin_config->port],_pin_config->pin);
            default: 
              ret=E__NOT_OK ;
        
        }
    }
    return ret;
}
/**
 * 
 * @param _pin_config
 * @param dirction_status
 * @return 
 */
STD_RetunType gpio_pin_get_dirction_status(const pin_config_t*_pin_config,DIRECTION_STATE * dirction_status ){
        uint8_t ret=E_OK ;
    if((_pin_config==NULL)||(_pin_config->pin>7)||(_pin_config->port>5))
    {   
        ret=E__NOT_OK ;
 
    } 
    else
    {
        switch(_pin_config->dirction)
        {
            case OUTPUT:
         CLEAR_BIT(*tris_reg[_pin_config->port],_pin_config->pin);
                break;
            case INPUT:
              SET_BIT(*tris_reg[_pin_config->port],_pin_config->pin);
            default: 
              ret=E__NOT_OK ;
        
        }
    }
    return ret;
}

STD_RetunType gpio_pin_write_logic(const pin_config_t*_pin_config, LOGIC_STATE logic  ){
        uint8_t ret=E_OK ;
    if((_pin_config==NULL)||(_pin_config->pin>7)||(_pin_config->port>5))
    {   
        ret=E__NOT_OK ;
 
    } 
    else
    {
        switch(logic)
        {
            case LOW:
         CLEAR_BIT(*lat_reg[_pin_config->port],_pin_config->pin);
                break;
            case HIGH:
              SET_BIT(*lat_reg[_pin_config->port],_pin_config->pin);
            default: 
              ret=E__NOT_OK ;
        
        }
    }
    return ret;
}
/**
 * 
 * @param _pin_config
 * @param logic
 * @return 
 */
STD_RetunType gpio_pin_read_logic(const pin_config_t*_pin_config, LOGIC_STATE *logic  ){
            STD_RetunType ret=E_OK ;
    if((_pin_config==NULL)||(_pin_config->pin>7)||(_pin_config->port>4))
    {   
        ret=E__NOT_OK ;
 
    } 
    else
    {
     *logic =READ_BIT(*port_reg[_pin_config->port],_pin_config->pin);
    }
    return ret;
    
    
}
/**
 * 
 * @param _pin_config
 * @return 
 */
STD_RetunType gpio_pin_toggle_logic(const pin_config_t*_pin_config){
             STD_RetunType ret=E_OK ;
    if((_pin_config==NULL)||(_pin_config->pin>7)||(_pin_config->port>5))
    {   
        ret=E__NOT_OK ;
 
    } 
    else
    {
    TOGGLE_BIT(*lat_reg[_pin_config->port],_pin_config->pin);
    }
    return ret; 
}
// port configuration
/**
 * 
 * @param port
 * @param dirction_status
 * @return 
 */
 STD_RetunType gpio_port_dirction_intialize(PORT_INDEX port,uint8_t dirction_status){
     
               STD_RetunType ret=E_OK ;
    if(port>(MAX_PORTS-1))
    {   
        ret=E__NOT_OK ;
 
    } 
    else
    {
    *tris_reg[port]=dirction_status;
    }
    return ret;    
 }
 /**
  * 
  * @param port
  * @param dirction_status
  * @return 
  */
 STD_RetunType gpio_port_get_dirction_status(PORT_INDEX port,uint8_t *dirction_status ){
                  STD_RetunType ret=E_OK ;
    if(port>(MAX_PORTS-1)||(dirction_status==NULL))
    {   
        ret=E__NOT_OK ;
 
    } 
    else
    {
  (*dirction_status)=*tris_reg[port];
    }
    return ret;   
 }
 /**
   * 
   * @param port
   * @param logic
   * @return 
   */
 STD_RetunType gpio_port_write_logic(PORT_INDEX port,uint8_t logic ){
                     STD_RetunType ret=E_OK ;
    if(port>(MAX_PORTS-1))
    {   
        ret=E__NOT_OK ;
 
    } 
    else
    {
    *lat_reg[port]=logic;
    }
    return ret;  
 }
 /**
  * 
  * @param port
  * @param logic
  * @return 
  */
 STD_RetunType gpio_port_read_logic(PORT_INDEX port,uint8_t *logic ){
    STD_RetunType ret=E_OK ;
    if(port>(MAX_PORTS-1)||(logic==NULL))
    {   
        ret=E__NOT_OK ;
 
    } 
    else
    {
    logic=*port_reg[port];
    }
    return ret;  
 }
 /**
  * 
  * @param port
  * @return 
  */
 STD_RetunType gpio_port_toggle_logic(PORT_INDEX port){
      STD_RetunType ret=E_OK ;
    if(port>(MAX_PORTS-1))
    {   
        ret=E__NOT_OK ;
 
    } 
    else
    {
    *lat_reg[port]^=*lat_reg[port];
    }
    return ret;   
 }