
.text
.code 32
.global _start

.equ    GPIOC_OUT,      0xc001c000
.equ    GPIOC_OUTENB,   0xc001c004
.equ    GPIOC_ALTFN0,   0xc001c020


_start:
    ldr r0, =GPIOC_ALTFN0
    ldr r1, [r0]

    mov r2, #0x03
    bic r1, r1, r2, lsl #24
    mov r2, #1
    orr r1, r1, r2, lsl #24
    str r1, [r0]

    ldr r0, =GPIOC_OUTENB
    ldr r1, [r0]
    mov r2, #1
    orr r1, r1, r2, lsl #12
    str r1, [r0]

    ldr r0, =GPIOC_OUT
    mov r2, #1

loop:
    ldr r1, [r0]
    bic r1, r1, r2, lsl #12
    str r1, [r0]

    bl delay

    ldr r1, [r0]
    orr r1, r1, r2, lsl #12
    str r1, [r0]

    bl delay

    b loop

delay:
    mov r0, #0xf000000
delay_loop:
    subs r0, r0, #1
    bne delay_loop
    mov pc, lr

