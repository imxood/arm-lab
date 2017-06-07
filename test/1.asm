
pedo：     文件格式 elf32-littlearm


Disassembly of section .text:

00008054 <_start>:
    8054:	e59f0028 	ldr	r0, [pc, #40]	; 8084 <test+0x8>
    8058:	e59f1028 	ldr	r1, [pc, #40]	; 8088 <test+0xc>
    805c:	e59f2018 	ldr	r2, [pc, #24]	; 807c <test>
    8060:	e3a01001 	mov	r1, #1
    8064:	e3a01001 	mov	r1, #1
    8068:	e3a01001 	mov	r1, #1
    806c:	e1a00000 	nop			; (mov r0, r0)
    8070:	e1a00000 	nop			; (mov r0, r0)
    8074:	e3a01001 	mov	r1, #1
    8078:	e3a01001 	mov	r1, #1

0000807c <test>:
    807c:	12345678 	.word	0x12345678
    8080:	eafffffe 	b	8080 <test+0x4>
    8084:	000001ff 	.word	0x000001ff
    8088:	0000807c 	.word	0x0000807c
