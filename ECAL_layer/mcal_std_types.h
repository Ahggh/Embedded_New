/* 
 * File:   mcal_std_types.h
 * Author: Huda
 *
 * Created on October 3, 2023, 6:37 PM
 */

#ifndef MCAL_STD_TYPES_H
#define	MCAL_STD_TYPES_H

/*                              Includes                                             */
#include "std_libraries.h"
#include "compiler.h"
/*                  USER DEFINE Data_type Declarations                             */
                       //Enums:--

//State of pins (DO)








   //union:--




// typedef
typedef unsigned char uint8_t;
typedef uint8_t STD_RetunType;
//typedef unsigned short uint16_t;
//typedef unsigned int uint32_t;

typedef signed char sint8_t;
typedef signed short sint16_t;
typedef signed int sint32_t;





 /*                    Macros Declarations              */

#define STD_ACTIVE 0x01
#define STD_IDLE   0X00

#define E_OK            (STD_RetunType)0x01
#define E__NOT_OK       (STD_RetunType)0x00












/*                   Functions Like Macros Declarations             */

#endif	/* MCAL_STD_TYPES_H */

