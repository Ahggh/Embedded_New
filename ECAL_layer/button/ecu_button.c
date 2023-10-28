




#include "ecu_button.h"
STD_RetunType button_intialize(const btn_config_t *btn){
    STD_RetunType ret=E_OK;
    pin_config_t button_pin={.dirction=INPUT,.pin=btn->button_pin,.port=btn->button_port,.logic=LOW
        
    };
  if(NULL==btn)  
  { 
      ret=E__NOT_OK;
  }
  else
  {
      ret=gpio_pin_dirction_intialize(&button_pin);
   
  }
    return ret;
}
STD_RetunType button_read_state(const btn_config_t *btn,button_state_t * btn_state){
    STD_RetunType ret=E_OK;
    pin_config_t button_pin={.dirction=INPUT,.pin=btn->button_pin,.port=btn->button_port,.logic=LOW  
    };
    uint8_t count_pressed=0;
    uint8_t count_loop;
    uint8_t read_state;
  if(NULL==btn)  
  { 
      ret=E__NOT_OK;
  }
  else
  { 
      
      switch(btn->button_conection_type)
      {
          case BUTTON_ACTIVE_HIGH:
              for(count_loop=0;count_loop<SAMPLE_NUMBER;count_loop++)
              { gpio_pin_read_logic(&button_pin,&read_state);
                if(read_state==HIGH) count_pressed++;
              __delay_ms(10);
              }
              break;
          case BUTTON_ACTIVE_LOW :
                 for(count_loop=0;count_loop<SAMPLE_NUMBER;count_loop++)
              { gpio_pin_read_logic(&button_pin,&read_state);
                if(read_state==LOW) count_pressed++;
              __delay_ms(10);
              }
              break;
          default: ret=E__NOT_OK; ;
      }
      if(count_pressed==SAMPLE_NUMBER)
      {
         *btn_state=BUTTON_PRESSED;
      }
      else
      {
       *btn_state=BUTTON_REALASED;   
      }
      count_pressed=0;
   
  }
    return ret;
    
}
