#include "uart.h"

/*8n1 115200 polling no-fifo*/
void uart_init(void)
{
    /*uart0 clk disable*/
    UART0CLKENB &= ~(1<<2);

    /*GPIOD14(RX)  GPIOD18(TX)管脚的功能选择配置*/
    GPIOD_ALTFN0 &= ~(3<<28);
    GPIOD_ALTFN0 |= (1<<28);
    GPIOD_ALTFN1 &= ~(3<<4);
    GPIOD_ALTFN1 |= (1<<4);
    /*禁止内部上拉功能*/
    GPIOD_PULLENB &= ~((1<<18) | (1<<14));

    /*时钟配置 选择PLL1 800MHz*/
    UART0CLKGEN0L &= ~(7<<2);
    UART0CLKGEN0L |= (1<<2);
    /*分频设置 800/(0x0f + 1) = 50MHz*/
    UART0CLKGEN0L &= ~(0xff<<5);
    UART0CLKGEN0L |= (0x0f<<5);

    /*uart控制器设置*/
    ULCON0 = 0x03;//8N1
    UCON0  = 0x05;//POLLING

    UFCON0 &= ~(3<<1);//清空FIFO
    
    //UFCON0 = 0x00; //禁止FIFO
    UBRDIV0 = 26;//50000000/(115200*16) -1 
    UFRACVAL0 = 2;

    /*uart0 clk enable*/
    UART0CLKENB |= (1<<2);
}

void uart_putc(char c)
{
    /* UTRSTAT0[1] = 1 空*/
    while(!(UTRSTAT0 & 0x02)) ;

    UTXH0 = c;

    if(c == '\n')
        uart_putc('\r');
}

void uart_puts(char *str)
{
    if(!str)
        return ;

    while(*str)
    {
        uart_putc(*str);
        str++;
    }
}

int uart_getc(){
    while(!(UTRSTAT0 & 0x01));
    return (char)(URXH0 & 0xff);
}

int uart_gets(char *buf, int len){
    int i = 0;
    char tmp = 0;
    while(i < (len-1)){

        tmp = uart_getc();

        if(i == 0 && '\b'==tmp){
            continue;
        }

        //回显
        uart_putc(tmp);

        if(tmp == '\b' && i>0){
            i--;
            uart_putc(' ');
            uart_putc('\b');
            continue;
        }else{
            buf[i] = tmp;
        }

        if(tmp == '\r'){
            break;
        }

        i++;
    }
    buf[i] = 0;
    return i;
}

