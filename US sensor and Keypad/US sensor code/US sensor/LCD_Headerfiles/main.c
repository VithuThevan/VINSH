/*
 * US sensor.c
 *
 * Created: 4/12/2021 9:27:45 PM
 * Author : tharmalingam
 */ 
#define F_CPU 8000000UL
#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/delay.h>
#include <string.h>
#include <stdlib.h>
#include "LCD_header.h"
#define Trigger_pin PA0

int TimerOverflow = 0;
ISR(TIMER1_OVF_vect)
{
	TimerOverflow++;
}
int main(void)
{
    char string[10];
	long count;
	double distance;
	
	DDRA = 0x01;
	PORTD = 0xFF;
	
	LCD_Init();
	LCD_String_xy(1,0,"Ultrasonic");
	sei();
	TIMSK= (1<<TOIE1);
	TCCR1A = 0;
	
	while(1)
	{
		PORTA |= (1<<Trigger_pin);
		_delay_us(10);
		PORTA &= (~(1<<Trigger_pin));
		TCNT1 = 0;
		TCCR1B = 0x41;
		TIFR = 1<<ICF1;
		TIFR = 1<<TOV1;
		
		while((TIFR&(1<<ICF1))==0);
		TCNT1=0;
		TCCR1B = 0x01;
		TIFR = 1<<ICF1;
		TIFR = 1<<TOV1;
		TimerOverflow=0;
		
		while((TIFR&(1<<ICF1))==0);
		count = ICR1 + (65535*TimerOverflow);
		distance = (double)count/466.47;
		
		dtostrf(distance,2,2,string);
		strcat(string,"cm");
		LCD_String_xy(2,0,"Distance=");
		LCD_String_xy(2,7,string);
		_delay_ms(200);
		
	}
}

