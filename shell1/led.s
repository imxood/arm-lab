
.text
.arm
.global led_init
.global led1_on
.global led1_off

.equ    GPIOC_OUT       0xc001c000
.equ    GPIOC_OUTENB    0xc001c004
.equ    GPIOC_ALTFN0    0xc001c020

led_init:
    
    /*stmfd sp!, {lr}*/
    ldr r0, =GPIOC_ALTFN0
    ldr r1, [r0]

    mov r2, #3
    bic r1, r1, r2, lsl #24

    mov r2, #1
    orr r1, r1, r2, lsl #24
    str r1, [r0]

    ldr r0, =GPIOC_ALTFN0
    ldr r1, [r0]
    mov r2, #1
    orr r1, r1, r2, lsl #24


    mov pc, lr
    /*ldmfd sp!, {pc}*/

