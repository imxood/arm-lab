
.text
.code 32
.global _start

_start:
    mov r0, #100 @r0=100
    mov r1, #8
    sub r2, r0,r1 @r2=r0-r1

    b   . @while(1)
.end
