#ifndef __PWM_H__
#define __PWM_H__

#define GPIOC_OUT       *((volatile unsigned int *)0xc001c000)
#define GPIOC_OUTENB    *((volatile unsigned int *)0xc001c004)
#define GPIOC_ALTFN0    *((volatile unsigned int *)0xc001c020)

extern void pwm_init(void);
extern void pwm_on(void);
extern void pwm_off(void);

#endif
