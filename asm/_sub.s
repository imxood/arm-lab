
sub：     文件格式 elf32-littlearm


Disassembly of section .text:

00008054 <_start>:
    8054:	e3a00064 	mov	r0, #100	; 0x64
    8058:	e3a01008 	mov	r1, #8
    805c:	e0402001 	sub	r2, r0, r1
    8060:	eafffffe 	b	8060 <_start+0xc>
