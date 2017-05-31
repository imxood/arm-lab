
#include "pwm.h"
#include "uart.h"

void pwm_init(void)
{
    //选择管脚功能
    GPIOC_ALTFN0 &= ~(3<<28);   //28 29 clear
    GPIOC_ALTFN0 |= (1<<28);    //28bit set
    GPIOC_OUTENB |= (1<<14);    //output
    //配置为输出
    //
}

void pwm_on()
{
    /*led1 off GPIOC12 output high*/
    GPIOC_OUT |= (1<<14);
    //delay(0x1000000);
}

void pwm_off()
{
    /*led1 on GPIOC12 output low*/
    uart_puts("pwm8_on is running...");
    GPIOC_OUT &= ~(1<<14);
    //delay(0x1000000);
}

