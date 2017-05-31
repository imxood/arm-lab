
#ifndef __UART_H__
#define __UART_H__

#define UART0CLKENB     *((volatile unsigned int *)0xC00A9000)
#define UART0CLKGEN0L   *((volatile unsigned int *)0xC00A9004)

#define GPIOD_ALTFN0    *((volatile unsigned int *)0xC001D020)
#define GPIOD_ALTFN1    *((volatile unsigned int *)0xC001D024)
#define GPIOD_PULLENB   *((volatile unsigned int *)0xC001D060)

#define ULCON0          *((volatile unsigned int *)0xC00A1000)
#define UCON0           *((volatile unsigned int *)0xC00A1004)
#define UFCON0          *((volatile unsigned int *)0xC00A1008)
#define UTRSTAT0        *((volatile unsigned int *)0xC00A1010)
#define UTXH0           *((volatile unsigned int *)0xC00A1020)
#define URXH0           *((volatile unsigned int *)0xC00A1024)
#define UBRDIV0         *((volatile unsigned int *)0xC00A1028)
#define UFRACVAL0       *((volatile unsigned int *)0xC00A102C)

extern void uart_init(void);
extern void uart_puts(char *);
extern int uart_gets(char *buf, int len);


#endif 
