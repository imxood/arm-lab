#include "cmd.h"
#include "strcmp.h"
#include "led.h"
#include "pwm.h"
#include "mma8653.h"

_cmd cmd_list[] = 
{
    {"led1on", led1_on},
    {"led1off", led1_off},
    {"pwmon", pwm_on},
    {"pwmoff", pwm_off},
    {"mmaid", mma8653_show_id},
    {"mmaxyz", mma8653_get_xyz}
};

_cmd* find_cmd(char* user_input){
    int num = sizeof(cmd_list)/sizeof(cmd_list[0]);
    int i=0;
    for(; i<num; i++){
        if( my_strcmp(user_input, cmd_list[i].name)==0 ){
            return cmd_list+i;
        }
    }
    return (_cmd*)0;
}
