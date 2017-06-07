#ifndef __LED_H__
#define __LED_H__

#define GPIOC_OUT       *((volatile unsigned int *)0xc001c000)
#define GPIOC_OUTENB    *((volatile unsigned int *)0xc001c004)
#define GPIOC_ALTFN0    *((volatile unsigned int *)0xc001c020)

extern void led_init(void);
extern void led1_on(void);
extern void led1_off(void);

#endif
