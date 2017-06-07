
.text
.arm

.global _start

_start:
    mov r1, #10
    mov r0, #0

sum:
    add r0, r0, r1 @r0=r0+r1
    sub r1, r1, #1 @r1=r1-1

    cmp r1, #0

    bne sum

    b .
.end
