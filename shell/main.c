
#include "uart.h"
#include "strcmp.h"
#include "cmd.h"
#include "pwm.h"
#include "led.h"

#define CMD_MAX_LEN 32

char cmd_buf[CMD_MAX_LEN];

int main(void)
{
    _cmd *ptr = (_cmd*)0;
    /*8N1 115200 轮询 NO-FIFO*/
    uart_init();
    led_init();//配置为输出管脚
    pwm_init();

    while(1)
    {
        //输出命令提示符
        uart_puts("\nshell#");

        //等待接收用户输入的命令
        if(uart_gets(cmd_buf, CMD_MAX_LEN)==0){
            continue;
        }

        ptr = find_cmd(cmd_buf);

        if(ptr){
            ptr->cmd_func();
            continue;
        }
        else{
            uart_puts("\nunkonwn command!");
        }



        //分析用户输入的命令是否支持


        //支持执行的命令,不支持则打印出错信息
    }
    return 0;
}

