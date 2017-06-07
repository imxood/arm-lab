
.text
.arm
.global _start

_start:
    ldr r0,=0x1ff
    ldr r1,=test
    ldr r2,test
    mov r1,#1
    mov r1,#1
    mov r1,#1
    NOP
    NOP
    mov r1,#1
    mov r1,#1

test:
    .word 0x12345678

    b .

.end
