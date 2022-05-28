/*
 * LCD_header.h
 *
 * Created: 4/12/2021 9:43:44 PM
 *  Author: tharmalingam
 */ 


#ifndef LCD_HEADER_H_
#define LCD_HEADER_H_

#define F_CPU 8000000UL
#include <avr/io.h>
#include <util/delay.h>
#define LCD_Data_Dir DDRB
#define LCD_Command_Dir DDRC
#define LCD_Data_Port PORTB
#define LCD_Command_Port PORTC
#define RS PC0
#define RW PC1
#define EN PC2

void LCD_Command(char);
void LCD_Char(char);
void LCD_Init(void);
void LCD_String(char*);
void LCD_String_xy(char,char,char*);
void LCD_Clear(void);





#endif /* LCD_HEADER_H_ */