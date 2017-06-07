
.text
.code 32
.global _start

_start:
    ldr r0, =str1
    ldr r1, =str2

loop:
    ldrb r2, [r0], #1
    ldrb r3, [r1], #1
    cmp r2, #0
    beq end_cmp
    cmp r2, r3
    beq loop

end_cmp:
    sub r0, r2, r3
    b .

str1:
    .ascii "hello\0"
str2:
    .ascii "hello12\0"

.end

