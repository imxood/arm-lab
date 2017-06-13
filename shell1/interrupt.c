
void interrupt_init(){
    //关闭GIC400中断
    GICD_CTRL &= ～3；

    //中断分配到GROUP0
    GICD_IGROUPR0 = 0;
    GICD_IGROUPR1 = 0;

    //GPIOA 

}
