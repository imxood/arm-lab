
#define GPIOD_ALTFN0        (*((volatile unsigned int *)0xc001d020))
#define I2CCLKENB2          (*((volatile unsigned int *)0xc00b0000))
#define IPRESET0            (*((volatile unsigned int *)0xc0012000))
#define I2CCON              (*((volatile unsigned int *)0xc00a6000))
#define I2CSTAT             (*((volatile unsigned int *)0xc00a6004))
#define I2CADD              (*((volatile unsigned int *)0xc00a6008))
#define I2CDS               (*((volatile unsigned int *)0xc00a600c))
#define I2CLC               (*((volatile unsigned int *)0xc00a6010))

void iic2_init(void){
    //GPIOD6 GPIOD7 fun1 SCL SDA
    GPIOD_ALTFN0 &= ~(3<<14 | 3<<12);
    GPIOD_ALTFN0 |= (1<<14 | 1<<12);

    //使能I2C控制器时钟
    I2CCLKENB2 |= (1<<3);

    //I2C控制器复位
    IPRESET0 &= ~(1<<22);
    IPRESET0 |= (1<<22);

    //I2C控制器配置
    I2CCON = (1<<8 | 1<<7 | 1<<6 | 1<<5 | 0x0f<<0);

    I2CLC = (1<<2 | 1);
}

//addr,从设备地址
//rdwr,1:读,2:写
void iic2_start(unsigned char addr, unsigned int rdwr){

    unsigned int stat = 0, iiccon = 0;

    //使能串行输出
    stat |= (1<<4);
    I2CSTAT = stat;

    //清除中断标志 使能中断 使能ACK
    iiccon = I2CCON;
    iiccon |= (1<<8) | (1<<7) | (1<<5);
    I2CCON = iiccon;

    //收发模式设置
    if(rdwr){//读操作
        stat |= (2<<6);//master receive
        addr = (addr<<1) | 1;//slave<<1|R
    }
    else{
        stat |= (3<<6);//master transmit
        addr = (addr<<1)|0;
    }

    //填充要发送的从设备地址+读写位
    I2CDS = addr;
    iiccon &= ~(1<<4);

    //START信号,发送I2CDS
    stat |= (1<<5);
    I2CSTAT = stat;

    //I2CCON[4]=1 --> interrupt pendding
    while(!(I2CCON & (1<<4)));

}

void iic2_stop(void){
    I2CSTAT &= ~(1<<5);//发送停止信号
}

//buf,要发送数据的首地址
//len,要发送数据的长度
void iic2_tx(unsigned char *buf, unsigned char len){
    int count = 0;
    for(; count<len; count++){
        //发送数据
        I2CDS = buf[count];
        //清除中断未决位,为了判断下一次数据是否完成
        I2CCON &= ~(1<<4);
        //polling send finished
        while(!(I2CCON & (1<<4)));
    }
}

void iic2_rx(unsigned char* buf, unsigned int len){
    int count = 0;
    unsigned int iiccon;
    while(count < len){

        if(count == len-1){
            //disable ack
            I2CCON &= ~(1<<7);
        }
        iiccon &= ~(1<<4);
        //poll whether received data
        while(!(I2CCON & (1<<4)));

        //read data
        buf[count] = I2CDS;
        count++;
    }
}

