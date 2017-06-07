
#include "led.h"

void led_init(void)
{
    //选择管脚功能
    GPIOC_ALTFN0 &= ~(3<<24);   //24 25 clear
    GPIOC_ALTFN0 |= (1<<24);    //24bit set
    GPIOC_OUTENB |= (1<<12);    //output
    //配置为输出
    //
}

void led1_off()
{
    /*led1 off GPIOC12 output high*/
    GPIOC_OUT |= (1<<12);
}

void led1_on()
{
    /*led1 on GPIOC12 output low*/
    GPIOC_OUT &= ~(1<<12);
}

