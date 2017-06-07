
a.out：     文件格式 elf32-littlearm


Disassembly of section .init:

00008390 <_init>:
    8390:	e92d4008 	push	{r3, lr}
    8394:	eb00001d 	bl	8410 <call_weak_fn>
    8398:	e8bd8008 	pop	{r3, pc}

Disassembly of section .plt:

0000839c <.plt>:
    839c:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    83a0:	e59fe004 	ldr	lr, [pc, #4]	; 83ac <_init+0x1c>
    83a4:	e08fe00e 	add	lr, pc, lr
    83a8:	e5bef008 	ldr	pc, [lr, #8]!
    83ac:	00008380 	.word	0x00008380
    83b0:	e28fc600 	add	ip, pc, #0, 12
    83b4:	e28cca08 	add	ip, ip, #8, 20	; 0x8000
    83b8:	e5bcf380 	ldr	pc, [ip, #896]!	; 0x380
    83bc:	e28fc600 	add	ip, pc, #0, 12
    83c0:	e28cca08 	add	ip, ip, #8, 20	; 0x8000
    83c4:	e5bcf378 	ldr	pc, [ip, #888]!	; 0x378
    83c8:	e28fc600 	add	ip, pc, #0, 12
    83cc:	e28cca08 	add	ip, ip, #8, 20	; 0x8000
    83d0:	e5bcf370 	ldr	pc, [ip, #880]!	; 0x370

Disassembly of section .text:

000083d4 <_start>:
    83d4:	e3a0b000 	mov	fp, #0
    83d8:	e3a0e000 	mov	lr, #0
    83dc:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
    83e0:	e1a0200d 	mov	r2, sp
    83e4:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
    83e8:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
    83ec:	e59fc010 	ldr	ip, [pc, #16]	; 8404 <_start+0x30>
    83f0:	e52dc004 	push	{ip}		; (str ip, [sp, #-4]!)
    83f4:	e59f000c 	ldr	r0, [pc, #12]	; 8408 <_start+0x34>
    83f8:	e59f300c 	ldr	r3, [pc, #12]	; 840c <_start+0x38>
    83fc:	ebffffeb 	bl	83b0 <_init+0x20>
    8400:	ebfffff0 	bl	83c8 <_init+0x38>
    8404:	00008590 	.word	0x00008590
    8408:	0000851c 	.word	0x0000851c
    840c:	0000852c 	.word	0x0000852c

00008410 <call_weak_fn>:
    8410:	e59f3014 	ldr	r3, [pc, #20]	; 842c <call_weak_fn+0x1c>
    8414:	e59f2014 	ldr	r2, [pc, #20]	; 8430 <call_weak_fn+0x20>
    8418:	e08f3003 	add	r3, pc, r3
    841c:	e7932002 	ldr	r2, [r3, r2]
    8420:	e3520000 	cmp	r2, #0
    8424:	012fff1e 	bxeq	lr
    8428:	eaffffe3 	b	83bc <_init+0x2c>
    842c:	0000830c 	.word	0x0000830c
    8430:	00000018 	.word	0x00000018

00008434 <deregister_tm_clones>:
    8434:	e92d4008 	push	{r3, lr}
    8438:	e59f0020 	ldr	r0, [pc, #32]	; 8460 <deregister_tm_clones+0x2c>
    843c:	e59f3020 	ldr	r3, [pc, #32]	; 8464 <deregister_tm_clones+0x30>
    8440:	e0603003 	rsb	r3, r0, r3
    8444:	e3530006 	cmp	r3, #6
    8448:	98bd8008 	popls	{r3, pc}
    844c:	e59f3014 	ldr	r3, [pc, #20]	; 8468 <deregister_tm_clones+0x34>
    8450:	e3530000 	cmp	r3, #0
    8454:	08bd8008 	popeq	{r3, pc}
    8458:	e12fff33 	blx	r3
    845c:	e8bd8008 	pop	{r3, pc}
    8460:	00010750 	.word	0x00010750
    8464:	00010753 	.word	0x00010753
    8468:	00000000 	.word	0x00000000

0000846c <register_tm_clones>:
    846c:	e92d4008 	push	{r3, lr}
    8470:	e59f0028 	ldr	r0, [pc, #40]	; 84a0 <register_tm_clones+0x34>
    8474:	e59f3028 	ldr	r3, [pc, #40]	; 84a4 <register_tm_clones+0x38>
    8478:	e0603003 	rsb	r3, r0, r3
    847c:	e1a03143 	asr	r3, r3, #2
    8480:	e0833fa3 	add	r3, r3, r3, lsr #31
    8484:	e1b010c3 	asrs	r1, r3, #1
    8488:	08bd8008 	popeq	{r3, pc}
    848c:	e59f2014 	ldr	r2, [pc, #20]	; 84a8 <register_tm_clones+0x3c>
    8490:	e3520000 	cmp	r2, #0
    8494:	08bd8008 	popeq	{r3, pc}
    8498:	e12fff32 	blx	r2
    849c:	e8bd8008 	pop	{r3, pc}
    84a0:	00010750 	.word	0x00010750
    84a4:	00010750 	.word	0x00010750
    84a8:	00000000 	.word	0x00000000

000084ac <__do_global_dtors_aux>:
    84ac:	e92d4010 	push	{r4, lr}
    84b0:	e59f4018 	ldr	r4, [pc, #24]	; 84d0 <__do_global_dtors_aux+0x24>
    84b4:	e5d43000 	ldrb	r3, [r4]
    84b8:	e3530000 	cmp	r3, #0
    84bc:	18bd8010 	popne	{r4, pc}
    84c0:	ebffffdb 	bl	8434 <deregister_tm_clones>
    84c4:	e3a03001 	mov	r3, #1
    84c8:	e5c43000 	strb	r3, [r4]
    84cc:	e8bd8010 	pop	{r4, pc}
    84d0:	00010750 	.word	0x00010750

000084d4 <frame_dummy>:
    84d4:	e59f0024 	ldr	r0, [pc, #36]	; 8500 <frame_dummy+0x2c>
    84d8:	e92d4008 	push	{r3, lr}
    84dc:	e5903000 	ldr	r3, [r0]
    84e0:	e3530000 	cmp	r3, #0
    84e4:	0a000003 	beq	84f8 <frame_dummy+0x24>
    84e8:	e59f3014 	ldr	r3, [pc, #20]	; 8504 <frame_dummy+0x30>
    84ec:	e3530000 	cmp	r3, #0
    84f0:	0a000000 	beq	84f8 <frame_dummy+0x24>
    84f4:	e12fff33 	blx	r3
    84f8:	e8bd4008 	pop	{r3, lr}
    84fc:	eaffffda 	b	846c <register_tm_clones>
    8500:	00010638 	.word	0x00010638
    8504:	00000000 	.word	0x00000000

00008508 <func>:
    8508:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    850c:	e28db000 	add	fp, sp, #0
    8510:	e28bd000 	add	sp, fp, #0
    8514:	e8bd0800 	ldmfd	sp!, {fp}
    8518:	e12fff1e 	bx	lr

0000851c <main>:
    851c:	e92d4800 	push	{fp, lr}
    8520:	e28db004 	add	fp, sp, #4
    8524:	ebfffff7 	bl	8508 <func>
    8528:	e8bd8800 	pop	{fp, pc}

0000852c <__libc_csu_init>:
    852c:	e92d45f8 	push	{r3, r4, r5, r6, r7, r8, sl, lr}
    8530:	e1a07000 	mov	r7, r0
    8534:	e59f604c 	ldr	r6, [pc, #76]	; 8588 <__libc_csu_init+0x5c>
    8538:	e1a08001 	mov	r8, r1
    853c:	e1a0a002 	mov	sl, r2
    8540:	e59f5044 	ldr	r5, [pc, #68]	; 858c <__libc_csu_init+0x60>
    8544:	e08f6006 	add	r6, pc, r6
    8548:	ebffff90 	bl	8390 <_init>
    854c:	e08f5005 	add	r5, pc, r5
    8550:	e0656006 	rsb	r6, r5, r6
    8554:	e1b06146 	asrs	r6, r6, #2
    8558:	08bd85f8 	popeq	{r3, r4, r5, r6, r7, r8, sl, pc}
    855c:	e2455004 	sub	r5, r5, #4
    8560:	e3a04000 	mov	r4, #0
    8564:	e2844001 	add	r4, r4, #1
    8568:	e5b53004 	ldr	r3, [r5, #4]!
    856c:	e1a00007 	mov	r0, r7
    8570:	e1a01008 	mov	r1, r8
    8574:	e1a0200a 	mov	r2, sl
    8578:	e12fff33 	blx	r3
    857c:	e1540006 	cmp	r4, r6
    8580:	1afffff7 	bne	8564 <__libc_csu_init+0x38>
    8584:	e8bd85f8 	pop	{r3, r4, r5, r6, r7, r8, sl, pc}
    8588:	000080e8 	.word	0x000080e8
    858c:	000080dc 	.word	0x000080dc

00008590 <__libc_csu_fini>:
    8590:	e12fff1e 	bx	lr

Disassembly of section .fini:

00008594 <_fini>:
    8594:	e92d4008 	push	{r3, lr}
    8598:	e8bd8008 	pop	{r3, pc}
