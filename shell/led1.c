
#define GPIOC_OUT       *((volatile unsigned int *)0xc001c000)
#define GPIOC_OUTENB    *((volatile unsigned int *)0xc001c004)
#define GPIOC_ALTFN0    *((volatile unsigned int *)0xc001c020)

void delay(unsigned int n);

void test_led() {
    
    GPIOC_ALTFN0 &= ~(3<<24);   //24 25 clear
    GPIOC_ALTFN0 |= (1<<24);    //24bit set
    GPIOC_OUTENB |= (1<<12);    //output

    while(1) {
        /*led1 on GPIOC12 output low*/
        GPIOC_OUT &= ~(1<<12);
        delay(0x1000000);

        /*led1 off GPIOC12 output high*/
        GPIOC_OUT |= (1<<12);
        delay(0x1000000);
    }
}

void delay(unsigned int n)
{
    unsigned int i = 0;
    for(i=n; i!=0; i--);
}

