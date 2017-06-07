
#include "iic.h"

#define SLA_ADDR            0x1D
#define ID_REGISTER         0x0D

//Read the data of the specified length from mma8653
void mma8653_read(unsigned char offset, unsigned char* buf, int len){
    //send the START signal, addr<<1|W
    iic2_start(SLA_ADDR, 0);
    //send the offset addr of the register to access
    iic2_tx(&offset, 1);
    //send the START signal,addr<<1|R
    iic2_start(SLA_ADDR, 1);
    //receive the returned data
    iic2_rx(buf, len);
}

void mma8653_write(unsigned char offset, unsigned char* buf, int len){
    iic2_start(SLA_ADDR, 0);
    iic2_tx(&offset, 1);
    iic2_tx(buf, len);
    iic2_stop();
}

void mma8653_show_id(void){
    unsigned char id;
    char buf[11];
    mma8653_read(ID_REGISTER, &id, 1);
    itoa(buf, id);
    uart_puts("\n");
    uart_puts(buf);
}

void mma8653_active(void){
    unsigned char ctrl_reg = 0;
    //according to the agreement
    mma8653_read(0x2a, &ctrl_reg, 1);
    ctrl_reg |= 1;
    mma8653_write(0x2a, &ctrl_reg, 1);
}

void mma8653_get_xyz(void){
    unsigned char buf[6];
    unsigned char itoa_buf[10];

    int x=0, y=0, z=0;
    //将mma8653设置为active
    mma8653_active();
    //读取xyz方向加速度值
    mma8653_read(0x01, buf, 6);

    x = (buf[0]<<2) | (buf[1]>>6);
    y = (buf[2]<<2) | (buf[3]>>6);
    x = (buf[4]<<2) | (buf[5]>>6);

    //打印读取到的加速度值
    itoa(itoa_buf, x);
    uart_puts("\n X:");
    uart_puts(itoa_buf);
    uart_puts("\n");

    itoa(itoa_buf, y);
    uart_puts("\n Y:");
    uart_puts(itoa_buf);
    uart_puts("\n");

    itoa(itoa_buf, z);
    uart_puts("\n Z:");
    uart_puts(itoa_buf);
    uart_puts("\n");
}

