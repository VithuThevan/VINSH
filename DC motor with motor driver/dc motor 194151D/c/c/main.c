/*
 * c.c
 *
 * Created: 4/13/2021 7:03:10 PM
 * Author : sharmini ravindran
 */ 
#include <stdio.h>
#define F_CPU 16000000UL
#include <avr/io.h>
#include <util/delay.h>


int main(void)
{
    DDRC = 0XFF;
	TCCR0 = 0b01110101;
	DDRB |= (1<<PB3);
	OCR0 = 250;
	TCNT0 = 0;
	int j=0;
	float t =800;
    while (j<5) 
    {
		PORTC = 0X00;
		_delay_ms(t);
		PORTC = 0X06;
		_delay_ms(t);
		PORTC = 0X00;
		_delay_ms(t);
		PORTC = 0X05;
		_delay_ms(t);
		j++;
    }
}

