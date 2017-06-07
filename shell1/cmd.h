#ifndef __CMD_H__
#define __CMD_H__

typedef struct{
    char *name;
    void (*cmd_func)(void);
}_cmd;

extern _cmd* find_cmd(char *);

#endif
