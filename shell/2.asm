
shell.elf：     文件格式 elf32-littlearm


Disassembly of section .text:

48000000 <main>:
48000000:	e92d4800 	push	{fp, lr}
48000004:	e28db004 	add	fp, sp, #4
48000008:	e24dd008 	sub	sp, sp, #8
4800000c:	e3a03000 	mov	r3, #0
48000010:	e50b3008 	str	r3, [fp, #-8]
48000014:	eb000018 	bl	4800007c <uart_init>
48000018:	eb0000eb 	bl	480003cc <led_init>
4800001c:	eb000180 	bl	48000624 <pwm_init>
48000020:	e30006f0 	movw	r0, #1776	; 0x6f0
48000024:	e3440800 	movt	r0, #18432	; 0x4800
48000028:	eb000094 	bl	48000280 <uart_puts>
4800002c:	e3080764 	movw	r0, #34660	; 0x8764
48000030:	e3440800 	movt	r0, #18432	; 0x4800
48000034:	e3a01020 	mov	r1, #32
48000038:	eb0000b8 	bl	48000320 <uart_gets>
4800003c:	e3080764 	movw	r0, #34660	; 0x8764
48000040:	e3440800 	movt	r0, #18432	; 0x4800
48000044:	eb000112 	bl	48000494 <find_cmd>
48000048:	e50b0008 	str	r0, [fp, #-8]
4800004c:	e51b3008 	ldr	r3, [fp, #-8]
48000050:	e3530000 	cmp	r3, #0
48000054:	0a000004 	beq	4800006c <main+0x6c>
48000058:	e51b3008 	ldr	r3, [fp, #-8]
4800005c:	e5933004 	ldr	r3, [r3, #4]
48000060:	e12fff33 	blx	r3
48000064:	e1a00000 	nop			; (mov r0, r0)
48000068:	eaffffec 	b	48000020 <main+0x20>
4800006c:	e30006f8 	movw	r0, #1784	; 0x6f8
48000070:	e3440800 	movt	r0, #18432	; 0x4800
48000074:	eb000081 	bl	48000280 <uart_puts>
48000078:	eaffffe8 	b	48000020 <main+0x20>

4800007c <uart_init>:
4800007c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
48000080:	e28db000 	add	fp, sp, #0
48000084:	e3a03a09 	mov	r3, #36864	; 0x9000
48000088:	e34c300a 	movt	r3, #49162	; 0xc00a
4800008c:	e3a02a09 	mov	r2, #36864	; 0x9000
48000090:	e34c200a 	movt	r2, #49162	; 0xc00a
48000094:	e5922000 	ldr	r2, [r2]
48000098:	e3c22004 	bic	r2, r2, #4
4800009c:	e5832000 	str	r2, [r3]
480000a0:	e30d3020 	movw	r3, #53280	; 0xd020
480000a4:	e34c3001 	movt	r3, #49153	; 0xc001
480000a8:	e30d2020 	movw	r2, #53280	; 0xd020
480000ac:	e34c2001 	movt	r2, #49153	; 0xc001
480000b0:	e5922000 	ldr	r2, [r2]
480000b4:	e3c22203 	bic	r2, r2, #805306368	; 0x30000000
480000b8:	e5832000 	str	r2, [r3]
480000bc:	e30d3020 	movw	r3, #53280	; 0xd020
480000c0:	e34c3001 	movt	r3, #49153	; 0xc001
480000c4:	e30d2020 	movw	r2, #53280	; 0xd020
480000c8:	e34c2001 	movt	r2, #49153	; 0xc001
480000cc:	e5922000 	ldr	r2, [r2]
480000d0:	e3822201 	orr	r2, r2, #268435456	; 0x10000000
480000d4:	e5832000 	str	r2, [r3]
480000d8:	e30d3024 	movw	r3, #53284	; 0xd024
480000dc:	e34c3001 	movt	r3, #49153	; 0xc001
480000e0:	e30d2024 	movw	r2, #53284	; 0xd024
480000e4:	e34c2001 	movt	r2, #49153	; 0xc001
480000e8:	e5922000 	ldr	r2, [r2]
480000ec:	e3c22030 	bic	r2, r2, #48	; 0x30
480000f0:	e5832000 	str	r2, [r3]
480000f4:	e30d3024 	movw	r3, #53284	; 0xd024
480000f8:	e34c3001 	movt	r3, #49153	; 0xc001
480000fc:	e30d2024 	movw	r2, #53284	; 0xd024
48000100:	e34c2001 	movt	r2, #49153	; 0xc001
48000104:	e5922000 	ldr	r2, [r2]
48000108:	e3822010 	orr	r2, r2, #16
4800010c:	e5832000 	str	r2, [r3]
48000110:	e30d3060 	movw	r3, #53344	; 0xd060
48000114:	e34c3001 	movt	r3, #49153	; 0xc001
48000118:	e30d2060 	movw	r2, #53344	; 0xd060
4800011c:	e34c2001 	movt	r2, #49153	; 0xc001
48000120:	e5922000 	ldr	r2, [r2]
48000124:	e3c22911 	bic	r2, r2, #278528	; 0x44000
48000128:	e5832000 	str	r2, [r3]
4800012c:	e3093004 	movw	r3, #36868	; 0x9004
48000130:	e34c300a 	movt	r3, #49162	; 0xc00a
48000134:	e3092004 	movw	r2, #36868	; 0x9004
48000138:	e34c200a 	movt	r2, #49162	; 0xc00a
4800013c:	e5922000 	ldr	r2, [r2]
48000140:	e3c2201c 	bic	r2, r2, #28
48000144:	e5832000 	str	r2, [r3]
48000148:	e3093004 	movw	r3, #36868	; 0x9004
4800014c:	e34c300a 	movt	r3, #49162	; 0xc00a
48000150:	e3092004 	movw	r2, #36868	; 0x9004
48000154:	e34c200a 	movt	r2, #49162	; 0xc00a
48000158:	e5922000 	ldr	r2, [r2]
4800015c:	e3822004 	orr	r2, r2, #4
48000160:	e5832000 	str	r2, [r3]
48000164:	e3093004 	movw	r3, #36868	; 0x9004
48000168:	e34c300a 	movt	r3, #49162	; 0xc00a
4800016c:	e3092004 	movw	r2, #36868	; 0x9004
48000170:	e34c200a 	movt	r2, #49162	; 0xc00a
48000174:	e5922000 	ldr	r2, [r2]
48000178:	e3c22d7f 	bic	r2, r2, #8128	; 0x1fc0
4800017c:	e3c22020 	bic	r2, r2, #32
48000180:	e5832000 	str	r2, [r3]
48000184:	e3093004 	movw	r3, #36868	; 0x9004
48000188:	e34c300a 	movt	r3, #49162	; 0xc00a
4800018c:	e3092004 	movw	r2, #36868	; 0x9004
48000190:	e34c200a 	movt	r2, #49162	; 0xc00a
48000194:	e5922000 	ldr	r2, [r2]
48000198:	e3822e1e 	orr	r2, r2, #480	; 0x1e0
4800019c:	e5832000 	str	r2, [r3]
480001a0:	e3a03a01 	mov	r3, #4096	; 0x1000
480001a4:	e34c300a 	movt	r3, #49162	; 0xc00a
480001a8:	e3a02003 	mov	r2, #3
480001ac:	e5832000 	str	r2, [r3]
480001b0:	e3013004 	movw	r3, #4100	; 0x1004
480001b4:	e34c300a 	movt	r3, #49162	; 0xc00a
480001b8:	e3a02005 	mov	r2, #5
480001bc:	e5832000 	str	r2, [r3]
480001c0:	e3013008 	movw	r3, #4104	; 0x1008
480001c4:	e34c300a 	movt	r3, #49162	; 0xc00a
480001c8:	e3012008 	movw	r2, #4104	; 0x1008
480001cc:	e34c200a 	movt	r2, #49162	; 0xc00a
480001d0:	e5922000 	ldr	r2, [r2]
480001d4:	e3c22006 	bic	r2, r2, #6
480001d8:	e5832000 	str	r2, [r3]
480001dc:	e3013028 	movw	r3, #4136	; 0x1028
480001e0:	e34c300a 	movt	r3, #49162	; 0xc00a
480001e4:	e3a0201a 	mov	r2, #26
480001e8:	e5832000 	str	r2, [r3]
480001ec:	e301302c 	movw	r3, #4140	; 0x102c
480001f0:	e34c300a 	movt	r3, #49162	; 0xc00a
480001f4:	e3a02002 	mov	r2, #2
480001f8:	e5832000 	str	r2, [r3]
480001fc:	e3a03a09 	mov	r3, #36864	; 0x9000
48000200:	e34c300a 	movt	r3, #49162	; 0xc00a
48000204:	e3a02a09 	mov	r2, #36864	; 0x9000
48000208:	e34c200a 	movt	r2, #49162	; 0xc00a
4800020c:	e5922000 	ldr	r2, [r2]
48000210:	e3822004 	orr	r2, r2, #4
48000214:	e5832000 	str	r2, [r3]
48000218:	e28bd000 	add	sp, fp, #0
4800021c:	e8bd0800 	ldmfd	sp!, {fp}
48000220:	e12fff1e 	bx	lr

48000224 <uart_putc>:
48000224:	e92d4800 	push	{fp, lr}
48000228:	e28db004 	add	fp, sp, #4
4800022c:	e24dd008 	sub	sp, sp, #8
48000230:	e1a03000 	mov	r3, r0
48000234:	e54b3005 	strb	r3, [fp, #-5]
48000238:	e1a00000 	nop			; (mov r0, r0)
4800023c:	e3013010 	movw	r3, #4112	; 0x1010
48000240:	e34c300a 	movt	r3, #49162	; 0xc00a
48000244:	e5933000 	ldr	r3, [r3]
48000248:	e2033002 	and	r3, r3, #2
4800024c:	e3530000 	cmp	r3, #0
48000250:	0afffff9 	beq	4800023c <uart_putc+0x18>
48000254:	e3013020 	movw	r3, #4128	; 0x1020
48000258:	e34c300a 	movt	r3, #49162	; 0xc00a
4800025c:	e55b2005 	ldrb	r2, [fp, #-5]
48000260:	e5832000 	str	r2, [r3]
48000264:	e55b3005 	ldrb	r3, [fp, #-5]
48000268:	e353000a 	cmp	r3, #10
4800026c:	1a000001 	bne	48000278 <uart_putc+0x54>
48000270:	e3a0000d 	mov	r0, #13
48000274:	ebffffea 	bl	48000224 <uart_putc>
48000278:	e24bd004 	sub	sp, fp, #4
4800027c:	e8bd8800 	pop	{fp, pc}

48000280 <uart_puts>:
48000280:	e92d4800 	push	{fp, lr}
48000284:	e28db004 	add	fp, sp, #4
48000288:	e24dd008 	sub	sp, sp, #8
4800028c:	e50b0008 	str	r0, [fp, #-8]
48000290:	e51b3008 	ldr	r3, [fp, #-8]
48000294:	e3530000 	cmp	r3, #0
48000298:	1a000008 	bne	480002c0 <uart_puts+0x40>
4800029c:	ea00000c 	b	480002d4 <uart_puts+0x54>
480002a0:	e51b3008 	ldr	r3, [fp, #-8]
480002a4:	e5d33000 	ldrb	r3, [r3]
480002a8:	e1a00003 	mov	r0, r3
480002ac:	ebffffdc 	bl	48000224 <uart_putc>
480002b0:	e51b3008 	ldr	r3, [fp, #-8]
480002b4:	e2833001 	add	r3, r3, #1
480002b8:	e50b3008 	str	r3, [fp, #-8]
480002bc:	ea000000 	b	480002c4 <uart_puts+0x44>
480002c0:	e1a00000 	nop			; (mov r0, r0)
480002c4:	e51b3008 	ldr	r3, [fp, #-8]
480002c8:	e5d33000 	ldrb	r3, [r3]
480002cc:	e3530000 	cmp	r3, #0
480002d0:	1afffff2 	bne	480002a0 <uart_puts+0x20>
480002d4:	e24bd004 	sub	sp, fp, #4
480002d8:	e8bd8800 	pop	{fp, pc}

480002dc <uart_getc>:
480002dc:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
480002e0:	e28db000 	add	fp, sp, #0
480002e4:	e1a00000 	nop			; (mov r0, r0)
480002e8:	e3013010 	movw	r3, #4112	; 0x1010
480002ec:	e34c300a 	movt	r3, #49162	; 0xc00a
480002f0:	e5933000 	ldr	r3, [r3]
480002f4:	e2033001 	and	r3, r3, #1
480002f8:	e3530000 	cmp	r3, #0
480002fc:	0afffff9 	beq	480002e8 <uart_getc+0xc>
48000300:	e3013024 	movw	r3, #4132	; 0x1024
48000304:	e34c300a 	movt	r3, #49162	; 0xc00a
48000308:	e5933000 	ldr	r3, [r3]
4800030c:	e6ef3073 	uxtb	r3, r3
48000310:	e1a00003 	mov	r0, r3
48000314:	e28bd000 	add	sp, fp, #0
48000318:	e8bd0800 	ldmfd	sp!, {fp}
4800031c:	e12fff1e 	bx	lr

48000320 <uart_gets>:
48000320:	e92d4800 	push	{fp, lr}
48000324:	e28db004 	add	fp, sp, #4
48000328:	e24dd010 	sub	sp, sp, #16
4800032c:	e50b0010 	str	r0, [fp, #-16]
48000330:	e50b1014 	str	r1, [fp, #-20]
48000334:	e3a03000 	mov	r3, #0
48000338:	e50b3008 	str	r3, [fp, #-8]
4800033c:	e3a03000 	mov	r3, #0
48000340:	e54b3009 	strb	r3, [fp, #-9]
48000344:	ea000010 	b	4800038c <uart_gets+0x6c>
48000348:	ebffffe3 	bl	480002dc <uart_getc>
4800034c:	e1a03000 	mov	r3, r0
48000350:	e54b3009 	strb	r3, [fp, #-9]
48000354:	e55b3009 	ldrb	r3, [fp, #-9]
48000358:	e1a00003 	mov	r0, r3
4800035c:	ebffffb0 	bl	48000224 <uart_putc>
48000360:	e51b3008 	ldr	r3, [fp, #-8]
48000364:	e51b2010 	ldr	r2, [fp, #-16]
48000368:	e0823003 	add	r3, r2, r3
4800036c:	e55b2009 	ldrb	r2, [fp, #-9]
48000370:	e5c32000 	strb	r2, [r3]
48000374:	e55b3009 	ldrb	r3, [fp, #-9]
48000378:	e353000d 	cmp	r3, #13
4800037c:	0a000008 	beq	480003a4 <uart_gets+0x84>
48000380:	e51b3008 	ldr	r3, [fp, #-8]
48000384:	e2833001 	add	r3, r3, #1
48000388:	e50b3008 	str	r3, [fp, #-8]
4800038c:	e51b3014 	ldr	r3, [fp, #-20]
48000390:	e2432001 	sub	r2, r3, #1
48000394:	e51b3008 	ldr	r3, [fp, #-8]
48000398:	e1520003 	cmp	r2, r3
4800039c:	caffffe9 	bgt	48000348 <uart_gets+0x28>
480003a0:	ea000000 	b	480003a8 <uart_gets+0x88>
480003a4:	e1a00000 	nop			; (mov r0, r0)
480003a8:	e51b3008 	ldr	r3, [fp, #-8]
480003ac:	e51b2010 	ldr	r2, [fp, #-16]
480003b0:	e0823003 	add	r3, r2, r3
480003b4:	e3a02000 	mov	r2, #0
480003b8:	e5c32000 	strb	r2, [r3]
480003bc:	e3a03000 	mov	r3, #0
480003c0:	e1a00003 	mov	r0, r3
480003c4:	e24bd004 	sub	sp, fp, #4
480003c8:	e8bd8800 	pop	{fp, pc}

480003cc <led_init>:
480003cc:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
480003d0:	e28db000 	add	fp, sp, #0
480003d4:	e30c3020 	movw	r3, #49184	; 0xc020
480003d8:	e34c3001 	movt	r3, #49153	; 0xc001
480003dc:	e30c2020 	movw	r2, #49184	; 0xc020
480003e0:	e34c2001 	movt	r2, #49153	; 0xc001
480003e4:	e5922000 	ldr	r2, [r2]
480003e8:	e3c22403 	bic	r2, r2, #50331648	; 0x3000000
480003ec:	e5832000 	str	r2, [r3]
480003f0:	e30c3020 	movw	r3, #49184	; 0xc020
480003f4:	e34c3001 	movt	r3, #49153	; 0xc001
480003f8:	e30c2020 	movw	r2, #49184	; 0xc020
480003fc:	e34c2001 	movt	r2, #49153	; 0xc001
48000400:	e5922000 	ldr	r2, [r2]
48000404:	e3822401 	orr	r2, r2, #16777216	; 0x1000000
48000408:	e5832000 	str	r2, [r3]
4800040c:	e30c3004 	movw	r3, #49156	; 0xc004
48000410:	e34c3001 	movt	r3, #49153	; 0xc001
48000414:	e30c2004 	movw	r2, #49156	; 0xc004
48000418:	e34c2001 	movt	r2, #49153	; 0xc001
4800041c:	e5922000 	ldr	r2, [r2]
48000420:	e3822a01 	orr	r2, r2, #4096	; 0x1000
48000424:	e5832000 	str	r2, [r3]
48000428:	e28bd000 	add	sp, fp, #0
4800042c:	e8bd0800 	ldmfd	sp!, {fp}
48000430:	e12fff1e 	bx	lr

48000434 <led1_off>:
48000434:	e92d4800 	push	{fp, lr}
48000438:	e28db004 	add	fp, sp, #4
4800043c:	e3a03903 	mov	r3, #49152	; 0xc000
48000440:	e34c3001 	movt	r3, #49153	; 0xc001
48000444:	e3a02903 	mov	r2, #49152	; 0xc000
48000448:	e34c2001 	movt	r2, #49153	; 0xc001
4800044c:	e5922000 	ldr	r2, [r2]
48000450:	e3822a01 	orr	r2, r2, #4096	; 0x1000
48000454:	e5832000 	str	r2, [r3]
48000458:	e3a00401 	mov	r0, #16777216	; 0x1000000
4800045c:	eb00005a 	bl	480005cc <delay>
48000460:	e8bd8800 	pop	{fp, pc}

48000464 <led1_on>:
48000464:	e92d4800 	push	{fp, lr}
48000468:	e28db004 	add	fp, sp, #4
4800046c:	e3a03903 	mov	r3, #49152	; 0xc000
48000470:	e34c3001 	movt	r3, #49153	; 0xc001
48000474:	e3a02903 	mov	r2, #49152	; 0xc000
48000478:	e34c2001 	movt	r2, #49153	; 0xc001
4800047c:	e5922000 	ldr	r2, [r2]
48000480:	e3c22a01 	bic	r2, r2, #4096	; 0x1000
48000484:	e5832000 	str	r2, [r3]
48000488:	e3a00401 	mov	r0, #16777216	; 0x1000000
4800048c:	eb00004e 	bl	480005cc <delay>
48000490:	e8bd8800 	pop	{fp, pc}

48000494 <find_cmd>:
48000494:	e92d4800 	push	{fp, lr}
48000498:	e28db004 	add	fp, sp, #4
4800049c:	e24dd010 	sub	sp, sp, #16
480004a0:	e50b0010 	str	r0, [fp, #-16]
480004a4:	e3a03004 	mov	r3, #4
480004a8:	e50b300c 	str	r3, [fp, #-12]
480004ac:	e3a03000 	mov	r3, #0
480004b0:	e50b3008 	str	r3, [fp, #-8]
480004b4:	ea000012 	b	48000504 <find_cmd+0x70>
480004b8:	e3083744 	movw	r3, #34628	; 0x8744
480004bc:	e3443800 	movt	r3, #18432	; 0x4800
480004c0:	e51b2008 	ldr	r2, [fp, #-8]
480004c4:	e7933182 	ldr	r3, [r3, r2, lsl #3]
480004c8:	e51b0010 	ldr	r0, [fp, #-16]
480004cc:	e1a01003 	mov	r1, r3
480004d0:	eb000013 	bl	48000524 <my_strcmp>
480004d4:	e1a03000 	mov	r3, r0
480004d8:	e3530000 	cmp	r3, #0
480004dc:	1a000005 	bne	480004f8 <find_cmd+0x64>
480004e0:	e51b3008 	ldr	r3, [fp, #-8]
480004e4:	e1a02183 	lsl	r2, r3, #3
480004e8:	e3083744 	movw	r3, #34628	; 0x8744
480004ec:	e3443800 	movt	r3, #18432	; 0x4800
480004f0:	e0823003 	add	r3, r2, r3
480004f4:	ea000007 	b	48000518 <find_cmd+0x84>
480004f8:	e51b3008 	ldr	r3, [fp, #-8]
480004fc:	e2833001 	add	r3, r3, #1
48000500:	e50b3008 	str	r3, [fp, #-8]
48000504:	e51b2008 	ldr	r2, [fp, #-8]
48000508:	e51b300c 	ldr	r3, [fp, #-12]
4800050c:	e1520003 	cmp	r2, r3
48000510:	baffffe8 	blt	480004b8 <find_cmd+0x24>
48000514:	e3a03000 	mov	r3, #0
48000518:	e1a00003 	mov	r0, r3
4800051c:	e24bd004 	sub	sp, fp, #4
48000520:	e8bd8800 	pop	{fp, pc}

48000524 <my_strcmp>:
48000524:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
48000528:	e28db000 	add	fp, sp, #0
4800052c:	e24dd00c 	sub	sp, sp, #12
48000530:	e50b0008 	str	r0, [fp, #-8]
48000534:	e50b100c 	str	r1, [fp, #-12]
48000538:	ea000005 	b	48000554 <my_strcmp+0x30>
4800053c:	e51b3008 	ldr	r3, [fp, #-8]
48000540:	e2833001 	add	r3, r3, #1
48000544:	e50b3008 	str	r3, [fp, #-8]
48000548:	e51b300c 	ldr	r3, [fp, #-12]
4800054c:	e2833001 	add	r3, r3, #1
48000550:	e50b300c 	str	r3, [fp, #-12]
48000554:	e51b3008 	ldr	r3, [fp, #-8]
48000558:	e5d32000 	ldrb	r2, [r3]
4800055c:	e51b300c 	ldr	r3, [fp, #-12]
48000560:	e5d33000 	ldrb	r3, [r3]
48000564:	e1520003 	cmp	r2, r3
48000568:	1a000003 	bne	4800057c <my_strcmp+0x58>
4800056c:	e51b3008 	ldr	r3, [fp, #-8]
48000570:	e5d33000 	ldrb	r3, [r3]
48000574:	e3530000 	cmp	r3, #0
48000578:	1affffef 	bne	4800053c <my_strcmp+0x18>
4800057c:	e51b3008 	ldr	r3, [fp, #-8]
48000580:	e5d33000 	ldrb	r3, [r3]
48000584:	e3530000 	cmp	r3, #0
48000588:	1a000005 	bne	480005a4 <my_strcmp+0x80>
4800058c:	e51b300c 	ldr	r3, [fp, #-12]
48000590:	e5d33000 	ldrb	r3, [r3]
48000594:	e3530000 	cmp	r3, #0
48000598:	1a000001 	bne	480005a4 <my_strcmp+0x80>
4800059c:	e3a03000 	mov	r3, #0
480005a0:	ea000005 	b	480005bc <my_strcmp+0x98>
480005a4:	e51b3008 	ldr	r3, [fp, #-8]
480005a8:	e5d33000 	ldrb	r3, [r3]
480005ac:	e1a02003 	mov	r2, r3
480005b0:	e51b300c 	ldr	r3, [fp, #-12]
480005b4:	e5d33000 	ldrb	r3, [r3]
480005b8:	e0633002 	rsb	r3, r3, r2
480005bc:	e1a00003 	mov	r0, r3
480005c0:	e28bd000 	add	sp, fp, #0
480005c4:	e8bd0800 	ldmfd	sp!, {fp}
480005c8:	e12fff1e 	bx	lr

480005cc <delay>:
480005cc:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
480005d0:	e28db000 	add	fp, sp, #0
480005d4:	e24dd00c 	sub	sp, sp, #12
480005d8:	e50b0008 	str	r0, [fp, #-8]
480005dc:	e51b3008 	ldr	r3, [fp, #-8]
480005e0:	e3022710 	movw	r2, #10000	; 0x2710
480005e4:	e0030392 	mul	r3, r2, r3
480005e8:	e50b3008 	str	r3, [fp, #-8]
480005ec:	e1a00000 	nop			; (mov r0, r0)
480005f0:	e51b3008 	ldr	r3, [fp, #-8]
480005f4:	e3530000 	cmp	r3, #0
480005f8:	03a03000 	moveq	r3, #0
480005fc:	13a03001 	movne	r3, #1
48000600:	e6ef3073 	uxtb	r3, r3
48000604:	e51b2008 	ldr	r2, [fp, #-8]
48000608:	e2422001 	sub	r2, r2, #1
4800060c:	e50b2008 	str	r2, [fp, #-8]
48000610:	e3530000 	cmp	r3, #0
48000614:	1afffff5 	bne	480005f0 <delay+0x24>
48000618:	e28bd000 	add	sp, fp, #0
4800061c:	e8bd0800 	ldmfd	sp!, {fp}
48000620:	e12fff1e 	bx	lr

48000624 <pwm_init>:
48000624:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
48000628:	e28db000 	add	fp, sp, #0
4800062c:	e30c3020 	movw	r3, #49184	; 0xc020
48000630:	e34c3001 	movt	r3, #49153	; 0xc001
48000634:	e30c2020 	movw	r2, #49184	; 0xc020
48000638:	e34c2001 	movt	r2, #49153	; 0xc001
4800063c:	e5922000 	ldr	r2, [r2]
48000640:	e3c22203 	bic	r2, r2, #805306368	; 0x30000000
48000644:	e5832000 	str	r2, [r3]
48000648:	e30c3020 	movw	r3, #49184	; 0xc020
4800064c:	e34c3001 	movt	r3, #49153	; 0xc001
48000650:	e30c2020 	movw	r2, #49184	; 0xc020
48000654:	e34c2001 	movt	r2, #49153	; 0xc001
48000658:	e5922000 	ldr	r2, [r2]
4800065c:	e3822201 	orr	r2, r2, #268435456	; 0x10000000
48000660:	e5832000 	str	r2, [r3]
48000664:	e30c3004 	movw	r3, #49156	; 0xc004
48000668:	e34c3001 	movt	r3, #49153	; 0xc001
4800066c:	e30c2004 	movw	r2, #49156	; 0xc004
48000670:	e34c2001 	movt	r2, #49153	; 0xc001
48000674:	e5922000 	ldr	r2, [r2]
48000678:	e3822901 	orr	r2, r2, #16384	; 0x4000
4800067c:	e5832000 	str	r2, [r3]
48000680:	e28bd000 	add	sp, fp, #0
48000684:	e8bd0800 	ldmfd	sp!, {fp}
48000688:	e12fff1e 	bx	lr

4800068c <pwm_on>:
4800068c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
48000690:	e28db000 	add	fp, sp, #0
48000694:	e3a03903 	mov	r3, #49152	; 0xc000
48000698:	e34c3001 	movt	r3, #49153	; 0xc001
4800069c:	e3a02903 	mov	r2, #49152	; 0xc000
480006a0:	e34c2001 	movt	r2, #49153	; 0xc001
480006a4:	e5922000 	ldr	r2, [r2]
480006a8:	e3822901 	orr	r2, r2, #16384	; 0x4000
480006ac:	e5832000 	str	r2, [r3]
480006b0:	e28bd000 	add	sp, fp, #0
480006b4:	e8bd0800 	ldmfd	sp!, {fp}
480006b8:	e12fff1e 	bx	lr

480006bc <pwm_off>:
480006bc:	e92d4800 	push	{fp, lr}
480006c0:	e28db004 	add	fp, sp, #4
480006c4:	e300072c 	movw	r0, #1836	; 0x72c
480006c8:	e3440800 	movt	r0, #18432	; 0x4800
480006cc:	ebfffeeb 	bl	48000280 <uart_puts>
480006d0:	e3a03903 	mov	r3, #49152	; 0xc000
480006d4:	e34c3001 	movt	r3, #49153	; 0xc001
480006d8:	e3a02903 	mov	r2, #49152	; 0xc000
480006dc:	e34c2001 	movt	r2, #49153	; 0xc001
480006e0:	e5922000 	ldr	r2, [r2]
480006e4:	e3c22901 	bic	r2, r2, #16384	; 0x4000
480006e8:	e5832000 	str	r2, [r3]
480006ec:	e8bd8800 	pop	{fp, pc}