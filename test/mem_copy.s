
.text
.arm
.global _start

_start:
    mov r0, #0x8e00
    mov r1, #1
    mov r2, #64

loop1:
    str r1, [r0]
    add r0, r0, #4
    add r1, r1, #1

    subs r2, r2, #1
    bne loop1

    mov r0, #0x8e00
    mov r1, #0x8f00
    mov r2, #4

loop2:
    ldmia r0!, {r3-r6}
    stmia r1!, {r3-r6}

    subs r2, r2, #1
    bne loop2

    b .

.data
    .space 1024

.end
