#ifndef __MMA8653_H_
#define __MMA8653_H_

extern void mma8653_read(unsigned char offset, unsigned char* buf, int len);
extern void mma8653_show_id(void);
extern void mma8653_get_xyz(void);

#endif
