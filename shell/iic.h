#ifndef __IIC_H__
#define __IIC_H__

extern void iic2_init(void);
extern iic2_start(unsigned char, unsigned int);
extern iic2_stop(void);
extern iic2_tx(unsigned char*, unsigned int);
extern iic2_rx(unsigned char*, unsigned int);

#endif
