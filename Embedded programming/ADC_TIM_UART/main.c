#include "stm32f4xx.h"                  /* Device header*/
#include <stdio.h>

/*Tested with ARM Compiler : version 5*/



void USART2_init (void);
int USART2_write (int ch);


int data;
double voltage;
double celsius;

int main (void) {

    
    RCC->AHB1ENR |=  1;/*Enable clock access to Port A*/	           
    
    RCC->APB1ENR |= 1;  /*Set up timer 2*/   
    /*Generate 1HZ*/	
    TIM2->PSC = 1600 - 1;    /* divide clock by 16MHZ by 1600*/       
    TIM2->ARR = 10000 - 1;    /*Divide the clock further by 10000*/   
	
    TIM2->CNT = 0;/*clear counter*/
    TIM2->CCMR1 = 0x6800;   /*Output Compare 1 preload enable;
	                           PWM mode 1 - In upcounting, channel 2 is active as long as TIMx_CNT<TIMx_CCR2
	                           else inactive.*/
	
    TIM2->CCER = 0x0010;  /*enable channel 2 output capture compare*/        
    TIM2->CCR2 = 50 - 1;
    TIM2->CR1 = 1;  /*Enable timer2*/              
    

    RCC->APB2ENR |= 0x100;    /*ENABLE ADC CLOCK*/
    ADC->CCR |= 0x800000;                /*TURN ON THE TEMPERATURE SENSOR*/
    ADC->CCR &= ~(0x400000UL);          /* VBATE must be disabled for temp sensor*/

    ADC1->SMPR1 = 0x4000000;        /* sampling time minimum 10 us*/
    ADC1->SQR3 = 18; /*using channel 18 where the temperature sensor is internally connected*/              
    ADC1->CR2 = 0x13000000;  /*set triger to external trigger rising edge*/       
    ADC1->CR2 |= 1;  /*Enable channel ADC*/

    USART2_init ();
    printf("STM32F4 Temperature \r\n");	 
    
     while(1) {
        while(!(ADC1->SR & 2)) {}/*WAIT FOR THE CONVERSION TO BE READY*/
        data = ADC1->DR;
   
        voltage = (double)data / 4095 * 3.3;   /* convert ADC output to voltage */
        celsius = (voltage - 0.76) / 0.0025 + 25; /* convert voltage to temperature C */
        printf("%d, %.2f\370C\r\n", data, celsius);    /* octal 370 is degree sign in extended ASCII */
    }
}


void USART2_init (void) {

    RCC->APB1ENR  |= 0x20000;   /*enable clock access to the usart module*/ 
    RCC->AHB1ENR  |= 1;          /*enable clock source to Port A; usart is connected to PA2*/
    GPIOA->AFR[0]  =  0x0700;   /*SET USART2 FOR ALTERNATE FUNCTION*/
    GPIOA->MODER  |=  0x0020;  /*Set PA2 to alternate function mode*/

    USART2->BRR = 0x0683;       /* 9600 baud @ 16 MHz */
    USART2->CR1 = 0x0008;       /* Set the transmission direction; Enable Tx*/
    USART2->CR1 |= 0x2000;      /*Enable USART*/
}

/*struct __FILE { int handle; };*/
FILE __stdout = {1};

int fputc(int c, FILE *f) {
    return USART2_write(c);  
}

int USART2_write (int ch) {
    while (!(USART2->SR & 0x0080)) {}   /*WAIT WHILE TX BUFFER IS EMPTY*/
    USART2->DR = (ch & 0xFF);
    return ch;
}