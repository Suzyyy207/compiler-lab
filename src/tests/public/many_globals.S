.section .data
.global    a0
.global    a1
.global    a2
.global    a3
.global    a4
.global    a5
.global    a6
.global    a7
.global    a8
.global    a9
.global    a10
.global    a11
.global    a12
.global    a13
.global    a14
.global    a15
.global    a16
.global    a17
.global    a18
.global    a19
.global    a20
.global    a21
.global    a22
.global    a23
.global    a24
.global    a25
.global    a26
.global    a27
.global    a28
.global    a29
.global    a30
.global    a31
.global    a32
.global    a33
.global    a34
.global    a35
.global    a36
.global    a37
.global    a38
.global    a39
a0:
        .quad   0
a1:
        .quad   0
a2:
        .quad   0
a3:
        .quad   0
a4:
        .quad   0
a5:
        .quad   0
a6:
        .quad   0
a7:
        .quad   0
a8:
        .quad   0
a9:
        .quad   0
a10:
        .quad   0
a11:
        .quad   0
a12:
        .quad   0
a13:
        .quad   0
a14:
        .quad   0
a15:
        .quad   0
a16:
        .quad   0
a17:
        .quad   0
a18:
        .quad   0
a19:
        .quad   0
a20:
        .quad   0
a21:
        .quad   0
a22:
        .quad   0
a23:
        .quad   0
a24:
        .quad   0
a25:
        .quad   0
a26:
        .quad   0
a27:
        .quad   0
a28:
        .quad   0
a29:
        .quad   0
a30:
        .quad   0
a31:
        .quad   0
a32:
        .quad   0
a33:
        .quad   0
a34:
        .quad   0
a35:
        .quad   0
a36:
        .quad   0
a37:
        .quad   0
a38:
        .quad   0
a39:
        .quad   0
.section .text
.global getch
.global getint
.global putch
.global putint
.global putarray
.global _sysy_starttime
.global _sysy_stoptime
.global testParam8
.global testParam16
.global testParam32
.global main
testParam8:

        //bb2:

bb2:

        //  %r391 = add i32 0, 0

        mov     x16, #0
        sub     sp, sp, x16
        str     x16, [sp, #-8]!
        mov     x17, x0
        str     x17, [sp, #-8]!
        mov     x15, x1
        mov     x14, x2
        mov     x13, x3
        mov     x12, x4
        mov     x11, x5
        mov     x10, x6
        mov     x9, x7
        //  %r392 = add i32 %r100, 0

        str     x18, [sp, #-8]!
        ldr     x16, [sp], #8
        mov     x19, x16
        str     x19, [sp, #-8]!
        //  %r393 = add i32 0, 0

        //  %r394 = add i32 %r102, 0

        str     x17, [sp, #-8]!
        mov     x18, x15
        str     x18, [sp, #-8]!
        //  %r395 = add i32 0, 0

        //  %r396 = add i32 %r104, 0

        mov     x14, x14
        //  %r397 = add i32 0, 0

        //  %r398 = add i32 %r106, 0

        mov     x13, x13
        //  %r399 = add i32 0, 0

        //  %r400 = add i32 %r108, 0

        str     x19, [sp, #-8]!
        mov     x16, x12
        str     x16, [sp, #-8]!
        //  %r401 = add i32 0, 0

        //  %r402 = add i32 %r110, 0

        str     x17, [sp, #-8]!
        mov     x18, x11
        str     x18, [sp, #-8]!
        //  %r403 = add i32 0, 0

        //  %r404 = add i32 %r112, 0

        str     x19, [sp, #-8]!
        mov     x16, x10
        str     x16, [sp, #-8]!
        //  %r405 = add i32 0, 0

        //  %r406 = add i32 %r114, 0

        mov     x9, x9
        //  br label %bb1


        b     bb1
        //bb1:

bb1:

        //  %r407 = add i32 %r392, %r394

        ldr     x17, [sp], #8
        ldr     x18, [sp], #8
        add     x10, x17, x18
        //  %r408 = add i32 %r407, %r396

        add     x10, x10, x14
        //  %r409 = add i32 %r408, %r398

        add     x10, x10, x13
        //  %r410 = add i32 %r409, %r400

        ldr     x19, [sp], #8
        add     x10, x10, x19
        //  %r411 = add i32 %r410, %r402

        ldr     x16, [sp], #8
        add     x10, x10, x16
        //  %r412 = add i32 %r411, %r404

        ldr     x17, [sp], #8
        add     x10, x10, x17
        //  %r413 = add i32 %r412, %r406

        add     x9, x10, x9
        //  ret i32 %r413

        mov     x0, x9
        mov     sp, x29
        ret
testParam16:

        //bb4:

bb4:

        //  %r430 = add i32 0, 0

        mov     x16, #0
        sub     sp, sp, x16
        mov     x13, x0
        mov     x12, x1
        str     x18, [sp, #-8]!
        mov     x19, x2
        str     x19, [sp, #-8]!
        str     x16, [sp, #-8]!
        mov     x17, x3
        str     x17, [sp, #-8]!
        str     x18, [sp, #-8]!
        mov     x19, x4
        str     x19, [sp, #-8]!
        str     x16, [sp, #-8]!
        mov     x17, x5
        str     x17, [sp, #-8]!
        str     x18, [sp, #-8]!
        mov     x19, x6
        str     x19, [sp, #-8]!
        str     x16, [sp, #-8]!
        mov     x17, x7
        str     x17, [sp, #-8]!
        str     x18, [sp, #-8]!
        ldr     x19, [x29]
        str     x19, [sp, #-8]!
        str     x16, [sp, #-8]!
        mov     x17, x19
        str     x17, [sp, #-8]!
        str     x18, [sp, #-8]!
        ldr     x19, [x29,#8]
        str     x19, [sp, #-8]!
        str     x16, [sp, #-8]!
        mov     x17, x19
        str     x17, [sp, #-8]!
        str     x18, [sp, #-8]!
        ldr     x19, [x29,#16]
        str     x19, [sp, #-8]!
        mov     x11, x19
        str     x16, [sp, #-8]!
        ldr     x17, [x29,#24]
        str     x17, [sp, #-8]!
        mov     x10, x17
        str     x18, [sp, #-8]!
        ldr     x19, [x29,#32]
        str     x19, [sp, #-8]!
        mov     x9, x19
        str     x16, [sp, #-8]!
        ldr     x17, [x29,#40]
        str     x17, [sp, #-8]!
        str     x18, [sp, #-8]!
        mov     x19, x17
        str     x19, [sp, #-8]!
        str     x16, [sp, #-8]!
        ldr     x17, [x29,#48]
        str     x17, [sp, #-8]!
        str     x18, [sp, #-8]!
        mov     x19, x17
        str     x19, [sp, #-8]!
        str     x16, [sp, #-8]!
        ldr     x17, [x29,#56]
        str     x17, [sp, #-8]!
        str     x18, [sp, #-8]!
        mov     x19, x17
        str     x19, [sp, #-8]!
        //  %r431 = add i32 %r131, 0

        str     x16, [sp, #-8]!
        mov     x17, x13
        str     x17, [sp, #-8]!
        //  %r432 = add i32 0, 0

        //  %r433 = add i32 %r133, 0

        str     x18, [sp, #-8]!
        mov     x19, x12
        str     x19, [sp, #-8]!
        //  %r434 = add i32 0, 0

        //  %r435 = add i32 %r135, 0

        str     x16, [sp, #-8]!
        ldr     x18, [sp], #8
        mov     x17, x18
        str     x17, [sp, #-8]!
        //  %r436 = add i32 0, 0

        //  %r437 = add i32 %r137, 0

        str     x19, [sp, #-8]!
        ldr     x17, [sp], #8
        mov     x16, x17
        str     x16, [sp, #-8]!
        //  %r438 = add i32 0, 0

        //  %r439 = add i32 %r139, 0

        str     x18, [sp, #-8]!
        ldr     x16, [sp], #8
        mov     x19, x16
        str     x19, [sp, #-8]!
        //  %r440 = add i32 0, 0

        //  %r441 = add i32 %r141, 0

        str     x17, [sp, #-8]!
        ldr     x19, [sp], #8
        mov     x18, x19
        str     x18, [sp, #-8]!
        //  %r442 = add i32 0, 0

        //  %r443 = add i32 %r143, 0

        str     x16, [sp, #-8]!
        ldr     x18, [sp], #8
        mov     x17, x18
        str     x17, [sp, #-8]!
        //  %r444 = add i32 0, 0

        //  %r445 = add i32 %r145, 0

        str     x19, [sp, #-8]!
        ldr     x17, [sp], #8
        mov     x16, x17
        str     x16, [sp, #-8]!
        //  %r446 = add i32 0, 0

        //  %r447 = add i32 %r147, 0

        str     x18, [sp, #-8]!
        ldr     x16, [sp], #8
        mov     x19, x16
        str     x19, [sp, #-8]!
        //  %r448 = add i32 0, 0

        //  %r449 = add i32 %r149, 0

        str     x17, [sp, #-8]!
        ldr     x19, [sp], #8
        mov     x18, x19
        str     x18, [sp, #-8]!
        //  %r450 = add i32 0, 0

        //  %r451 = add i32 %r151, 0

        mov     x14, x11
        //  %r452 = add i32 0, 0

        //  %r453 = add i32 %r153, 0

        mov     x13, x10
        //  %r454 = add i32 0, 0

        //  %r455 = add i32 %r155, 0

        mov     x12, x9
        //  %r456 = add i32 0, 0

        //  %r457 = add i32 %r157, 0

        ldr     x16, [sp], #8
        mov     x11, x16
        //  %r458 = add i32 0, 0

        //  %r459 = add i32 %r159, 0

        ldr     x17, [sp], #8
        mov     x10, x17
        //  %r460 = add i32 0, 0

        //  %r461 = add i32 %r161, 0

        ldr     x18, [sp], #8
        mov     x9, x18
        //  br label %bb3


        b     bb3
        //bb3:

bb3:

        //  %r462 = add i32 %r431, %r433

        ldr     x19, [sp], #8
        ldr     x16, [sp], #8
        add     x15, x19, x16
        //  %r463 = add i32 %r462, %r435

        ldr     x17, [sp], #8
        add     x15, x15, x17
        //  %r464 = sub i32 %r463, %r437

        ldr     x18, [sp], #8
        sub     x15, x15, x18
        //  %r465 = sub i32 %r464, %r439

        ldr     x19, [sp], #8
        sub     x15, x15, x19
        //  %r466 = sub i32 %r465, %r441

        ldr     x16, [sp], #8
        sub     x15, x15, x16
        //  %r467 = sub i32 %r466, %r443

        ldr     x17, [sp], #8
        sub     x15, x15, x17
        //  %r468 = sub i32 %r467, %r445

        ldr     x18, [sp], #8
        sub     x15, x15, x18
        //  %r469 = add i32 %r468, %r447

        ldr     x19, [sp], #8
        add     x15, x15, x19
        //  %r470 = add i32 %r469, %r449

        ldr     x16, [sp], #8
        add     x15, x15, x16
        //  %r471 = add i32 %r470, %r451

        add     x14, x15, x14
        //  %r472 = add i32 %r471, %r453

        add     x13, x14, x13
        //  %r473 = add i32 %r472, %r455

        add     x12, x13, x12
        //  %r474 = add i32 %r473, %r457

        add     x11, x12, x11
        //  %r475 = add i32 %r474, %r459

        add     x10, x11, x10
        //  %r476 = add i32 %r475, %r461

        add     x9, x10, x9
        //  ret i32 %r476

        mov     x0, x9
        mov     sp, x29
        ret
testParam32:

        //bb6:

bb6:

        //  %r509 = add i32 0, 0

        mov     x16, #0
        sub     sp, sp, x16
        str     x17, [sp, #-8]!
        mov     x18, x0
        str     x18, [sp, #-8]!
        str     x19, [sp, #-8]!
        mov     x16, x1
        str     x16, [sp, #-8]!
        str     x17, [sp, #-8]!
        mov     x18, x2
        str     x18, [sp, #-8]!
        str     x19, [sp, #-8]!
        mov     x16, x3
        str     x16, [sp, #-8]!
        str     x17, [sp, #-8]!
        mov     x18, x4
        str     x18, [sp, #-8]!
        str     x19, [sp, #-8]!
        mov     x16, x5
        str     x16, [sp, #-8]!
        str     x17, [sp, #-8]!
        mov     x18, x6
        str     x18, [sp, #-8]!
        str     x19, [sp, #-8]!
        mov     x16, x7
        str     x16, [sp, #-8]!
        str     x17, [sp, #-8]!
        ldr     x18, [x29]
        str     x18, [sp, #-8]!
        str     x19, [sp, #-8]!
        mov     x16, x18
        str     x16, [sp, #-8]!
        str     x17, [sp, #-8]!
        ldr     x18, [x29,#8]
        str     x18, [sp, #-8]!
        str     x19, [sp, #-8]!
        mov     x16, x18
        str     x16, [sp, #-8]!
        str     x17, [sp, #-8]!
        ldr     x18, [x29,#16]
        str     x18, [sp, #-8]!
        str     x19, [sp, #-8]!
        mov     x16, x18
        str     x16, [sp, #-8]!
        str     x17, [sp, #-8]!
        ldr     x18, [x29,#24]
        str     x18, [sp, #-8]!
        str     x19, [sp, #-8]!
        mov     x16, x18
        str     x16, [sp, #-8]!
        str     x17, [sp, #-8]!
        ldr     x18, [x29,#32]
        str     x18, [sp, #-8]!
        str     x19, [sp, #-8]!
        mov     x16, x18
        str     x16, [sp, #-8]!
        str     x17, [sp, #-8]!
        ldr     x18, [x29,#40]
        str     x18, [sp, #-8]!
        str     x19, [sp, #-8]!
        mov     x16, x18
        str     x16, [sp, #-8]!
        str     x17, [sp, #-8]!
        ldr     x18, [x29,#48]
        str     x18, [sp, #-8]!
        str     x19, [sp, #-8]!
        mov     x16, x18
        str     x16, [sp, #-8]!
        str     x17, [sp, #-8]!
        ldr     x18, [x29,#56]
        str     x18, [sp, #-8]!
        str     x19, [sp, #-8]!
        mov     x16, x18
        str     x16, [sp, #-8]!
        str     x17, [sp, #-8]!
        ldr     x18, [x29,#64]
        str     x18, [sp, #-8]!
        str     x19, [sp, #-8]!
        mov     x16, x18
        str     x16, [sp, #-8]!
        str     x17, [sp, #-8]!
        ldr     x18, [x29,#72]
        str     x18, [sp, #-8]!
        str     x19, [sp, #-8]!
        mov     x16, x18
        str     x16, [sp, #-8]!
        str     x17, [sp, #-8]!
        ldr     x18, [x29,#80]
        str     x18, [sp, #-8]!
        str     x19, [sp, #-8]!
        mov     x16, x18
        str     x16, [sp, #-8]!
        str     x17, [sp, #-8]!
        ldr     x18, [x29,#88]
        str     x18, [sp, #-8]!
        str     x19, [sp, #-8]!
        mov     x16, x18
        str     x16, [sp, #-8]!
        str     x17, [sp, #-8]!
        ldr     x18, [x29,#96]
        str     x18, [sp, #-8]!
        str     x19, [sp, #-8]!
        mov     x16, x18
        str     x16, [sp, #-8]!
        str     x17, [sp, #-8]!
        ldr     x18, [x29,#104]
        str     x18, [sp, #-8]!
        str     x19, [sp, #-8]!
        mov     x16, x18
        str     x16, [sp, #-8]!
        str     x17, [sp, #-8]!
        ldr     x18, [x29,#112]
        str     x18, [sp, #-8]!
        str     x19, [sp, #-8]!
        mov     x16, x18
        str     x16, [sp, #-8]!
        str     x17, [sp, #-8]!
        ldr     x18, [x29,#120]
        str     x18, [sp, #-8]!
        str     x19, [sp, #-8]!
        mov     x16, x18
        str     x16, [sp, #-8]!
        str     x17, [sp, #-8]!
        ldr     x18, [x29,#128]
        str     x18, [sp, #-8]!
        str     x19, [sp, #-8]!
        mov     x16, x18
        str     x16, [sp, #-8]!
        str     x17, [sp, #-8]!
        ldr     x18, [x29,#136]
        str     x18, [sp, #-8]!
        str     x19, [sp, #-8]!
        mov     x16, x18
        str     x16, [sp, #-8]!
        str     x17, [sp, #-8]!
        ldr     x18, [x29,#144]
        str     x18, [sp, #-8]!
        str     x19, [sp, #-8]!
        mov     x16, x18
        str     x16, [sp, #-8]!
        str     x17, [sp, #-8]!
        ldr     x18, [x29,#152]
        str     x18, [sp, #-8]!
        str     x19, [sp, #-8]!
        mov     x16, x18
        str     x16, [sp, #-8]!
        str     x17, [sp, #-8]!
        ldr     x18, [x29,#160]
        str     x18, [sp, #-8]!
        str     x19, [sp, #-8]!
        mov     x16, x18
        str     x16, [sp, #-8]!
        str     x17, [sp, #-8]!
        ldr     x18, [x29,#168]
        str     x18, [sp, #-8]!
        str     x19, [sp, #-8]!
        mov     x16, x18
        str     x16, [sp, #-8]!
        str     x17, [sp, #-8]!
        ldr     x18, [x29,#176]
        str     x18, [sp, #-8]!
        str     x19, [sp, #-8]!
        mov     x16, x18
        str     x16, [sp, #-8]!
        str     x17, [sp, #-8]!
        ldr     x18, [x29,#184]
        str     x18, [sp, #-8]!
        str     x19, [sp, #-8]!
        mov     x16, x18
        str     x16, [sp, #-8]!
        //  %r510 = add i32 %r194, 0

        str     x17, [sp, #-8]!
        ldr     x19, [sp], #8
        mov     x18, x19
        str     x18, [sp, #-8]!
        //  %r511 = add i32 0, 0

        //  %r512 = add i32 %r196, 0

        str     x16, [sp, #-8]!
        ldr     x18, [sp], #8
        mov     x17, x18
        str     x17, [sp, #-8]!
        //  %r513 = add i32 0, 0

        //  %r514 = add i32 %r198, 0

        str     x19, [sp, #-8]!
        ldr     x17, [sp], #8
        mov     x16, x17
        str     x16, [sp, #-8]!
        //  %r515 = add i32 0, 0

        //  %r516 = add i32 %r200, 0

        str     x18, [sp, #-8]!
        ldr     x16, [sp], #8
        mov     x19, x16
        str     x19, [sp, #-8]!
        //  %r517 = add i32 0, 0

        //  %r518 = add i32 %r202, 0

        str     x17, [sp, #-8]!
        ldr     x19, [sp], #8
        mov     x18, x19
        str     x18, [sp, #-8]!
        //  %r519 = add i32 0, 0

        //  %r520 = add i32 %r204, 0

        str     x16, [sp, #-8]!
        ldr     x18, [sp], #8
        mov     x17, x18
        str     x17, [sp, #-8]!
        //  %r521 = add i32 0, 0

        //  %r522 = add i32 %r206, 0

        str     x19, [sp, #-8]!
        ldr     x17, [sp], #8
        mov     x16, x17
        str     x16, [sp, #-8]!
        //  %r523 = add i32 0, 0

        //  %r524 = add i32 %r208, 0

        str     x18, [sp, #-8]!
        ldr     x16, [sp], #8
        mov     x19, x16
        str     x19, [sp, #-8]!
        //  %r525 = add i32 0, 0

        //  %r526 = add i32 %r210, 0

        str     x17, [sp, #-8]!
        ldr     x19, [sp], #8
        mov     x18, x19
        str     x18, [sp, #-8]!
        //  %r527 = add i32 0, 0

        //  %r528 = add i32 %r212, 0

        str     x16, [sp, #-8]!
        ldr     x18, [sp], #8
        mov     x17, x18
        str     x17, [sp, #-8]!
        //  %r529 = add i32 0, 0

        //  %r530 = add i32 %r214, 0

        str     x19, [sp, #-8]!
        ldr     x17, [sp], #8
        mov     x16, x17
        str     x16, [sp, #-8]!
        //  %r531 = add i32 0, 0

        //  %r532 = add i32 %r216, 0

        str     x18, [sp, #-8]!
        ldr     x16, [sp], #8
        mov     x19, x16
        str     x19, [sp, #-8]!
        //  %r533 = add i32 0, 0

        //  %r534 = add i32 %r218, 0

        str     x17, [sp, #-8]!
        ldr     x19, [sp], #8
        mov     x18, x19
        str     x18, [sp, #-8]!
        //  %r535 = add i32 0, 0

        //  %r536 = add i32 %r220, 0

        str     x16, [sp, #-8]!
        ldr     x18, [sp], #8
        mov     x17, x18
        str     x17, [sp, #-8]!
        //  %r537 = add i32 0, 0

        //  %r538 = add i32 %r222, 0

        str     x19, [sp, #-8]!
        ldr     x17, [sp], #8
        mov     x16, x17
        str     x16, [sp, #-8]!
        //  %r539 = add i32 0, 0

        //  %r540 = add i32 %r224, 0

        str     x18, [sp, #-8]!
        ldr     x16, [sp], #8
        mov     x19, x16
        str     x19, [sp, #-8]!
        //  %r541 = add i32 0, 0

        //  %r542 = add i32 %r226, 0

        str     x17, [sp, #-8]!
        ldr     x19, [sp], #8
        mov     x18, x19
        str     x18, [sp, #-8]!
        //  %r543 = add i32 0, 0

        //  %r544 = add i32 %r228, 0

        str     x16, [sp, #-8]!
        ldr     x18, [sp], #8
        mov     x17, x18
        str     x17, [sp, #-8]!
        //  %r545 = add i32 0, 0

        //  %r546 = add i32 %r230, 0

        str     x19, [sp, #-8]!
        ldr     x17, [sp], #8
        mov     x16, x17
        str     x16, [sp, #-8]!
        //  %r547 = add i32 0, 0

        //  %r548 = add i32 %r232, 0

        str     x18, [sp, #-8]!
        ldr     x16, [sp], #8
        mov     x19, x16
        str     x19, [sp, #-8]!
        //  %r549 = add i32 0, 0

        //  %r550 = add i32 %r234, 0

        str     x17, [sp, #-8]!
        ldr     x19, [sp], #8
        mov     x18, x19
        str     x18, [sp, #-8]!
        //  %r551 = add i32 0, 0

        //  %r552 = add i32 %r236, 0

        str     x16, [sp, #-8]!
        ldr     x18, [sp], #8
        mov     x17, x18
        str     x17, [sp, #-8]!
        //  %r553 = add i32 0, 0

        //  %r554 = add i32 %r238, 0

        str     x19, [sp, #-8]!
        ldr     x17, [sp], #8
        mov     x16, x17
        str     x16, [sp, #-8]!
        //  %r555 = add i32 0, 0

        //  %r556 = add i32 %r240, 0

        str     x18, [sp, #-8]!
        ldr     x16, [sp], #8
        mov     x19, x16
        str     x19, [sp, #-8]!
        //  %r557 = add i32 0, 0

        //  %r558 = add i32 %r242, 0

        str     x17, [sp, #-8]!
        ldr     x19, [sp], #8
        mov     x18, x19
        str     x18, [sp, #-8]!
        //  %r559 = add i32 0, 0

        //  %r560 = add i32 %r244, 0

        str     x16, [sp, #-8]!
        ldr     x18, [sp], #8
        mov     x17, x18
        str     x17, [sp, #-8]!
        //  %r561 = add i32 0, 0

        //  %r562 = add i32 %r246, 0

        ldr     x19, [sp], #8
        mov     x14, x19
        //  %r563 = add i32 0, 0

        //  %r564 = add i32 %r248, 0

        ldr     x16, [sp], #8
        mov     x13, x16
        //  %r565 = add i32 0, 0

        //  %r566 = add i32 %r250, 0

        ldr     x17, [sp], #8
        mov     x12, x17
        //  %r567 = add i32 0, 0

        //  %r568 = add i32 %r252, 0

        ldr     x18, [sp], #8
        mov     x11, x18
        //  %r569 = add i32 0, 0

        //  %r570 = add i32 %r254, 0

        ldr     x19, [sp], #8
        mov     x10, x19
        //  %r571 = add i32 0, 0

        //  %r572 = add i32 %r256, 0

        ldr     x16, [sp], #8
        mov     x9, x16
        //  br label %bb5


        b     bb5
        //bb5:

bb5:

        //  %r573 = add i32 %r510, %r512

        ldr     x17, [sp], #8
        ldr     x18, [sp], #8
        add     x15, x17, x18
        //  %r574 = add i32 %r573, %r514

        ldr     x19, [sp], #8
        add     x15, x15, x19
        //  %r575 = add i32 %r574, %r516

        ldr     x16, [sp], #8
        str     x17, [sp, #-8]!
        add     x18, x15, x16
        str     x18, [sp, #-8]!
        //  %r576 = add i32 %r575, %r518

        ldr     x19, [sp], #8
        ldr     x16, [sp], #8
        add     x15, x19, x16
        //  %r577 = add i32 %r576, %r520

        ldr     x17, [sp], #8
        str     x18, [sp, #-8]!
        add     x19, x15, x17
        str     x19, [sp, #-8]!
        //  %r578 = add i32 %r577, %r522

        ldr     x16, [sp], #8
        ldr     x17, [sp], #8
        add     x15, x16, x17
        //  %r579 = add i32 %r578, %r524

        ldr     x18, [sp], #8
        str     x19, [sp, #-8]!
        add     x16, x15, x18
        str     x16, [sp, #-8]!
        //  %r580 = add i32 %r579, %r526

        ldr     x17, [sp], #8
        ldr     x18, [sp], #8
        add     x15, x17, x18
        //  %r581 = add i32 %r580, %r528

        ldr     x19, [sp], #8
        str     x16, [sp, #-8]!
        add     x17, x15, x19
        str     x17, [sp, #-8]!
        //  %r582 = add i32 %r581, %r530

        ldr     x18, [sp], #8
        ldr     x19, [sp], #8
        add     x15, x18, x19
        //  %r583 = add i32 %r582, %r532

        ldr     x16, [sp], #8
        str     x17, [sp, #-8]!
        add     x18, x15, x16
        str     x18, [sp, #-8]!
        //  %r584 = add i32 %r583, %r534

        ldr     x19, [sp], #8
        ldr     x16, [sp], #8
        add     x15, x19, x16
        //  %r585 = add i32 %r584, %r536

        ldr     x17, [sp], #8
        str     x18, [sp, #-8]!
        add     x19, x15, x17
        str     x19, [sp, #-8]!
        //  %r586 = add i32 %r585, %r538

        ldr     x16, [sp], #8
        ldr     x17, [sp], #8
        add     x15, x16, x17
        //  %r587 = add i32 %r586, %r540

        ldr     x18, [sp], #8
        str     x19, [sp, #-8]!
        add     x16, x15, x18
        str     x16, [sp, #-8]!
        //  %r588 = add i32 %r587, %r542

        ldr     x17, [sp], #8
        ldr     x18, [sp], #8
        add     x15, x17, x18
        //  %r589 = add i32 %r588, %r544

        ldr     x19, [sp], #8
        str     x16, [sp, #-8]!
        add     x17, x15, x19
        str     x17, [sp, #-8]!
        //  %r590 = sub i32 %r589, %r546

        ldr     x18, [sp], #8
        ldr     x19, [sp], #8
        sub     x15, x18, x19
        //  %r591 = sub i32 %r590, %r548

        ldr     x16, [sp], #8
        str     x17, [sp, #-8]!
        sub     x18, x15, x16
        str     x18, [sp, #-8]!
        //  %r592 = sub i32 %r591, %r550

        ldr     x19, [sp], #8
        ldr     x16, [sp], #8
        sub     x15, x19, x16
        //  %r593 = sub i32 %r592, %r552

        ldr     x17, [sp], #8
        str     x18, [sp, #-8]!
        sub     x19, x15, x17
        str     x19, [sp, #-8]!
        //  %r594 = sub i32 %r593, %r554

        ldr     x16, [sp], #8
        ldr     x17, [sp], #8
        sub     x15, x16, x17
        //  %r595 = add i32 %r594, %r556

        ldr     x18, [sp], #8
        str     x19, [sp, #-8]!
        add     x16, x15, x18
        str     x16, [sp, #-8]!
        //  %r596 = add i32 %r595, %r558

        ldr     x17, [sp], #8
        ldr     x18, [sp], #8
        add     x15, x17, x18
        //  %r597 = add i32 %r596, %r560

        ldr     x19, [sp], #8
        add     x15, x15, x19
        //  %r598 = add i32 %r597, %r562

        add     x14, x15, x14
        //  %r599 = add i32 %r598, %r564

        add     x13, x14, x13
        //  %r600 = add i32 %r599, %r566

        add     x12, x13, x12
        //  %r601 = add i32 %r600, %r568

        add     x11, x12, x11
        //  %r602 = add i32 %r601, %r570

        add     x10, x11, x10
        //  %r603 = add i32 %r602, %r572

        add     x9, x10, x9
        //  ret i32 %r603

        mov     x0, x9
        mov     sp, x29
        ret
main:

        //bb7:

bb7:

        //  call void @_sysy_starttime(i32 97)

        mov     x16, #0
        sub     sp, sp, x16
        mov     x0, #97
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     _sysy_starttime
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        //  store i32 0, i32* @a0

        mov     x10, #0
        adrp     x9, a0
        add     x9, x9, #:lo12:a0
        str     x10, [x9]
        //  store i32 1, i32* @a1

        mov     x10, #1
        adrp     x9, a1
        add     x9, x9, #:lo12:a1
        str     x10, [x9]
        //  store i32 2, i32* @a2

        mov     x10, #2
        adrp     x9, a2
        add     x9, x9, #:lo12:a2
        str     x10, [x9]
        //  store i32 3, i32* @a3

        mov     x10, #3
        adrp     x9, a3
        add     x9, x9, #:lo12:a3
        str     x10, [x9]
        //  store i32 4, i32* @a4

        mov     x10, #4
        adrp     x9, a4
        add     x9, x9, #:lo12:a4
        str     x10, [x9]
        //  store i32 5, i32* @a5

        mov     x10, #5
        adrp     x9, a5
        add     x9, x9, #:lo12:a5
        str     x10, [x9]
        //  store i32 6, i32* @a6

        mov     x10, #6
        adrp     x9, a6
        add     x9, x9, #:lo12:a6
        str     x10, [x9]
        //  store i32 7, i32* @a7

        mov     x10, #7
        adrp     x9, a7
        add     x9, x9, #:lo12:a7
        str     x10, [x9]
        //  store i32 8, i32* @a8

        mov     x10, #8
        adrp     x9, a8
        add     x9, x9, #:lo12:a8
        str     x10, [x9]
        //  store i32 9, i32* @a9

        mov     x10, #9
        adrp     x9, a9
        add     x9, x9, #:lo12:a9
        str     x10, [x9]
        //  store i32 0, i32* @a10

        mov     x10, #0
        adrp     x9, a10
        add     x9, x9, #:lo12:a10
        str     x10, [x9]
        //  store i32 1, i32* @a11

        mov     x10, #1
        adrp     x9, a11
        add     x9, x9, #:lo12:a11
        str     x10, [x9]
        //  store i32 2, i32* @a12

        mov     x10, #2
        adrp     x9, a12
        add     x9, x9, #:lo12:a12
        str     x10, [x9]
        //  store i32 3, i32* @a13

        mov     x10, #3
        adrp     x9, a13
        add     x9, x9, #:lo12:a13
        str     x10, [x9]
        //  store i32 4, i32* @a14

        mov     x10, #4
        adrp     x9, a14
        add     x9, x9, #:lo12:a14
        str     x10, [x9]
        //  store i32 5, i32* @a15

        mov     x10, #5
        adrp     x9, a15
        add     x9, x9, #:lo12:a15
        str     x10, [x9]
        //  store i32 6, i32* @a16

        mov     x10, #6
        adrp     x9, a16
        add     x9, x9, #:lo12:a16
        str     x10, [x9]
        //  store i32 7, i32* @a17

        mov     x10, #7
        adrp     x9, a17
        add     x9, x9, #:lo12:a17
        str     x10, [x9]
        //  store i32 8, i32* @a18

        mov     x10, #8
        adrp     x9, a18
        add     x9, x9, #:lo12:a18
        str     x10, [x9]
        //  store i32 9, i32* @a19

        mov     x10, #9
        adrp     x9, a19
        add     x9, x9, #:lo12:a19
        str     x10, [x9]
        //  store i32 0, i32* @a20

        mov     x10, #0
        adrp     x9, a20
        add     x9, x9, #:lo12:a20
        str     x10, [x9]
        //  store i32 1, i32* @a21

        mov     x10, #1
        adrp     x9, a21
        add     x9, x9, #:lo12:a21
        str     x10, [x9]
        //  store i32 2, i32* @a22

        mov     x10, #2
        adrp     x9, a22
        add     x9, x9, #:lo12:a22
        str     x10, [x9]
        //  store i32 3, i32* @a23

        mov     x10, #3
        adrp     x9, a23
        add     x9, x9, #:lo12:a23
        str     x10, [x9]
        //  store i32 4, i32* @a24

        mov     x10, #4
        adrp     x9, a24
        add     x9, x9, #:lo12:a24
        str     x10, [x9]
        //  store i32 5, i32* @a25

        mov     x10, #5
        adrp     x9, a25
        add     x9, x9, #:lo12:a25
        str     x10, [x9]
        //  store i32 6, i32* @a26

        mov     x10, #6
        adrp     x9, a26
        add     x9, x9, #:lo12:a26
        str     x10, [x9]
        //  store i32 7, i32* @a27

        mov     x10, #7
        adrp     x9, a27
        add     x9, x9, #:lo12:a27
        str     x10, [x9]
        //  store i32 8, i32* @a28

        mov     x10, #8
        adrp     x9, a28
        add     x9, x9, #:lo12:a28
        str     x10, [x9]
        //  store i32 9, i32* @a29

        mov     x10, #9
        adrp     x9, a29
        add     x9, x9, #:lo12:a29
        str     x10, [x9]
        //  store i32 0, i32* @a30

        mov     x10, #0
        adrp     x9, a30
        add     x9, x9, #:lo12:a30
        str     x10, [x9]
        //  store i32 1, i32* @a31

        mov     x9, #1
        adrp     x10, a31
        add     x10, x10, #:lo12:a31
        str     x9, [x10]
        //  store i32 4, i32* @a32

        mov     x9, #4
        adrp     x10, a32
        add     x10, x10, #:lo12:a32
        str     x9, [x10]
        //  store i32 5, i32* @a33

        mov     x9, #5
        adrp     x10, a33
        add     x10, x10, #:lo12:a33
        str     x9, [x10]
        //  store i32 6, i32* @a34

        mov     x9, #6
        adrp     x10, a34
        add     x10, x10, #:lo12:a34
        str     x9, [x10]
        //  store i32 7, i32* @a35

        mov     x9, #7
        adrp     x10, a35
        add     x10, x10, #:lo12:a35
        str     x9, [x10]
        //  store i32 8, i32* @a36

        mov     x9, #8
        adrp     x10, a36
        add     x10, x10, #:lo12:a36
        str     x9, [x10]
        //  store i32 9, i32* @a37

        mov     x9, #9
        adrp     x10, a37
        add     x10, x10, #:lo12:a37
        str     x9, [x10]
        //  store i32 0, i32* @a38

        mov     x9, #0
        adrp     x10, a38
        add     x10, x10, #:lo12:a38
        str     x9, [x10]
        //  store i32 1, i32* @a39

        mov     x9, #1
        adrp     x10, a39
        add     x10, x10, #:lo12:a39
        str     x9, [x10]
        //  %r321 = load i32, i32* @a0

        adrp     x9, a0
        add     x9, x9, #:lo12:a0
        ldr     x9, [x9]
        //  %r322 = load i32, i32* @a1

        adrp     x10, a1
        add     x10, x10, #:lo12:a1
        ldr     x10, [x10]
        //  %r323 = load i32, i32* @a2

        adrp     x11, a2
        add     x11, x11, #:lo12:a2
        ldr     x11, [x11]
        //  %r324 = load i32, i32* @a3

        adrp     x12, a3
        add     x12, x12, #:lo12:a3
        ldr     x12, [x12]
        //  %r325 = load i32, i32* @a4

        adrp     x13, a4
        add     x13, x13, #:lo12:a4
        ldr     x13, [x13]
        //  %r326 = load i32, i32* @a5

        adrp     x14, a5
        add     x14, x14, #:lo12:a5
        ldr     x14, [x14]
        //  %r327 = load i32, i32* @a6

        adrp     x15, a6
        add     x15, x15, #:lo12:a6
        ldr     x15, [x15]
        //  %r328 = load i32, i32* @a7

        str     x16, [sp, #-8]!
        ldr     x17, [sp], #8
        adrp     x17, a7
        add     x17, x17, #:lo12:a7
        str     x18, [sp, #-8]!
        ldr     x16, [sp], #8
        ldr     x19, [x16]
        str     x19, [sp, #-8]!
        //  %r604 = call i32 @testParam8(i32 %r321, i32 %r322, i32 %r323, i32 %r324, i32 %r325, i32 %r326, i32 %r327, i32 %r328)

        mov     x0, x9
        mov     x1, x10
        mov     x2, x11
        mov     x3, x12
        mov     x4, x13
        mov     x5, x14
        mov     x6, x15
        ldr     x17, [sp], #8
        mov     x7, x17
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     testParam8
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        //  store i32 %r604, i32* @a0

        adrp     x10, a0
        add     x10, x10, #:lo12:a0
        str     x9, [x10]
        //  %r330 = load i32, i32* @a0

        adrp     x9, a0
        add     x9, x9, #:lo12:a0
        ldr     x9, [x9]
        //  call void @putint(i32 %r330)

        mov     x0, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     putint
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        //  %r331 = load i32, i32* @a32

        adrp     x9, a32
        add     x9, x9, #:lo12:a32
        str     x18, [sp, #-8]!
        ldr     x19, [x9]
        str     x19, [sp, #-8]!
        //  %r332 = load i32, i32* @a33

        adrp     x9, a33
        add     x9, x9, #:lo12:a33
        str     x16, [sp, #-8]!
        ldr     x17, [x9]
        str     x17, [sp, #-8]!
        //  %r333 = load i32, i32* @a34

        adrp     x9, a34
        add     x9, x9, #:lo12:a34
        str     x18, [sp, #-8]!
        ldr     x19, [x9]
        str     x19, [sp, #-8]!
        //  %r334 = load i32, i32* @a35

        adrp     x9, a35
        add     x9, x9, #:lo12:a35
        str     x16, [sp, #-8]!
        ldr     x17, [x9]
        str     x17, [sp, #-8]!
        //  %r335 = load i32, i32* @a36

        adrp     x9, a36
        add     x9, x9, #:lo12:a36
        str     x18, [sp, #-8]!
        ldr     x19, [x9]
        str     x19, [sp, #-8]!
        //  %r336 = load i32, i32* @a37

        adrp     x9, a37
        add     x9, x9, #:lo12:a37
        str     x16, [sp, #-8]!
        ldr     x17, [x9]
        str     x17, [sp, #-8]!
        //  %r337 = load i32, i32* @a38

        adrp     x9, a38
        add     x9, x9, #:lo12:a38
        str     x18, [sp, #-8]!
        ldr     x19, [x9]
        str     x19, [sp, #-8]!
        //  %r338 = load i32, i32* @a39

        str     x16, [sp, #-8]!
        ldr     x17, [sp], #8
        adrp     x17, a39
        add     x17, x17, #:lo12:a39
        str     x18, [sp, #-8]!
        ldr     x16, [sp], #8
        ldr     x19, [x16]
        str     x19, [sp, #-8]!
        //  %r339 = load i32, i32* @a8

        str     x17, [sp, #-8]!
        ldr     x18, [sp], #8
        adrp     x18, a8
        add     x18, x18, #:lo12:a8
        str     x19, [sp, #-8]!
        ldr     x17, [sp], #8
        ldr     x16, [x17]
        str     x16, [sp, #-8]!
        //  %r340 = load i32, i32* @a9

        str     x18, [sp, #-8]!
        ldr     x19, [sp], #8
        adrp     x19, a9
        add     x19, x19, #:lo12:a9
        ldr     x16, [sp], #8
        ldr     x15, [x16]
        //  %r341 = load i32, i32* @a10

        str     x17, [sp, #-8]!
        ldr     x18, [sp], #8
        adrp     x18, a10
        add     x18, x18, #:lo12:a10
        ldr     x19, [sp], #8
        ldr     x14, [x19]
        //  %r342 = load i32, i32* @a11

        str     x16, [sp, #-8]!
        ldr     x17, [sp], #8
        adrp     x17, a11
        add     x17, x17, #:lo12:a11
        ldr     x18, [sp], #8
        ldr     x13, [x18]
        //  %r343 = load i32, i32* @a12

        str     x19, [sp, #-8]!
        ldr     x16, [sp], #8
        adrp     x16, a12
        add     x16, x16, #:lo12:a12
        ldr     x17, [sp], #8
        ldr     x12, [x17]
        //  %r344 = load i32, i32* @a13

        str     x18, [sp, #-8]!
        ldr     x19, [sp], #8
        adrp     x19, a13
        add     x19, x19, #:lo12:a13
        ldr     x16, [sp], #8
        ldr     x11, [x16]
        //  %r345 = load i32, i32* @a14

        str     x17, [sp, #-8]!
        ldr     x18, [sp], #8
        adrp     x18, a14
        add     x18, x18, #:lo12:a14
        ldr     x19, [sp], #8
        ldr     x10, [x19]
        //  %r346 = load i32, i32* @a15

        str     x16, [sp, #-8]!
        ldr     x17, [sp], #8
        adrp     x17, a15
        add     x17, x17, #:lo12:a15
        ldr     x18, [sp], #8
        ldr     x9, [x18]
        //  %r605 = call i32 @testParam16(i32 %r331, i32 %r332, i32 %r333, i32 %r334, i32 %r335, i32 %r336, i32 %r337, i32 %r338, i32 %r339, i32 %r340, i32 %r341, i32 %r342, i32 %r343, i32 %r344, i32 %r345, i32 %r346)

        ldr     x19, [sp], #8
        mov     x0, x19
        ldr     x16, [sp], #8
        mov     x1, x16
        ldr     x17, [sp], #8
        mov     x2, x17
        ldr     x18, [sp], #8
        mov     x3, x18
        ldr     x19, [sp], #8
        mov     x4, x19
        ldr     x16, [sp], #8
        mov     x5, x16
        ldr     x17, [sp], #8
        mov     x6, x17
        ldr     x18, [sp], #8
        mov     x7, x18
        mov     x28, sp
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     sp, x28
        str     x9, [sp,#-80]
        str     x10, [sp,#-88]
        str     x11, [sp,#-96]
        str     x12, [sp,#-104]
        str     x13, [sp,#-112]
        str     x14, [sp,#-120]
        str     x15, [sp,#-128]
        ldr     x19, [sp], #8
        str     x19, [sp,#-136]
        sub     sp, sp, #136
        mov     x29, sp
        bl     testParam16
        add     sp, sp, #64
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        //  store i32 %r605, i32* @a0

        adrp     x10, a0
        add     x10, x10, #:lo12:a0
        str     x9, [x10]
        //  %r348 = load i32, i32* @a0

        adrp     x9, a0
        add     x9, x9, #:lo12:a0
        ldr     x9, [x9]
        //  call void @putint(i32 %r348)

        mov     x0, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     putint
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        //  %r349 = load i32, i32* @a0

        adrp     x9, a0
        add     x9, x9, #:lo12:a0
        ldr     x9, [x9]
        //  %r350 = load i32, i32* @a1

        adrp     x10, a1
        add     x10, x10, #:lo12:a1
        ldr     x10, [x10]
        //  %r351 = load i32, i32* @a2

        adrp     x11, a2
        add     x11, x11, #:lo12:a2
        ldr     x12, [x11]
        //  %r352 = load i32, i32* @a3

        adrp     x11, a3
        add     x11, x11, #:lo12:a3
        ldr     x13, [x11]
        //  %r353 = load i32, i32* @a4

        adrp     x11, a4
        add     x11, x11, #:lo12:a4
        ldr     x14, [x11]
        //  %r354 = load i32, i32* @a5

        adrp     x11, a5
        add     x11, x11, #:lo12:a5
        ldr     x15, [x11]
        //  %r355 = load i32, i32* @a6

        adrp     x11, a6
        add     x11, x11, #:lo12:a6
        str     x16, [sp, #-8]!
        ldr     x17, [x11]
        str     x17, [sp, #-8]!
        //  %r356 = load i32, i32* @a7

        str     x18, [sp, #-8]!
        ldr     x19, [sp], #8
        adrp     x19, a7
        add     x19, x19, #:lo12:a7
        str     x16, [sp, #-8]!
        ldr     x18, [sp], #8
        ldr     x17, [x18]
        str     x17, [sp, #-8]!
        //  %r357 = load i32, i32* @a8

        str     x19, [sp, #-8]!
        ldr     x16, [sp], #8
        adrp     x16, a8
        add     x16, x16, #:lo12:a8
        str     x17, [sp, #-8]!
        ldr     x19, [sp], #8
        ldr     x18, [x19]
        str     x18, [sp, #-8]!
        //  %r358 = load i32, i32* @a9

        str     x16, [sp, #-8]!
        ldr     x17, [sp], #8
        adrp     x17, a9
        add     x17, x17, #:lo12:a9
        str     x18, [sp, #-8]!
        ldr     x16, [sp], #8
        ldr     x19, [x16]
        str     x19, [sp, #-8]!
        //  %r359 = load i32, i32* @a10

        str     x17, [sp, #-8]!
        ldr     x18, [sp], #8
        adrp     x18, a10
        add     x18, x18, #:lo12:a10
        str     x19, [sp, #-8]!
        ldr     x17, [sp], #8
        ldr     x16, [x17]
        str     x16, [sp, #-8]!
        //  %r360 = load i32, i32* @a11

        str     x18, [sp, #-8]!
        ldr     x19, [sp], #8
        adrp     x19, a11
        add     x19, x19, #:lo12:a11
        str     x16, [sp, #-8]!
        ldr     x18, [sp], #8
        ldr     x17, [x18]
        str     x17, [sp, #-8]!
        //  %r361 = load i32, i32* @a12

        str     x19, [sp, #-8]!
        ldr     x16, [sp], #8
        adrp     x16, a12
        add     x16, x16, #:lo12:a12
        str     x17, [sp, #-8]!
        ldr     x19, [sp], #8
        ldr     x18, [x19]
        str     x18, [sp, #-8]!
        //  %r362 = load i32, i32* @a13

        str     x16, [sp, #-8]!
        ldr     x17, [sp], #8
        adrp     x17, a13
        add     x17, x17, #:lo12:a13
        str     x18, [sp, #-8]!
        ldr     x16, [sp], #8
        ldr     x19, [x16]
        str     x19, [sp, #-8]!
        //  %r363 = load i32, i32* @a14

        str     x17, [sp, #-8]!
        ldr     x18, [sp], #8
        adrp     x18, a14
        add     x18, x18, #:lo12:a14
        str     x19, [sp, #-8]!
        ldr     x17, [sp], #8
        ldr     x16, [x17]
        str     x16, [sp, #-8]!
        //  %r364 = load i32, i32* @a15

        str     x18, [sp, #-8]!
        ldr     x19, [sp], #8
        adrp     x19, a15
        add     x19, x19, #:lo12:a15
        str     x16, [sp, #-8]!
        ldr     x18, [sp], #8
        ldr     x17, [x18]
        str     x17, [sp, #-8]!
        //  %r365 = load i32, i32* @a16

        str     x19, [sp, #-8]!
        ldr     x16, [sp], #8
        adrp     x16, a16
        add     x16, x16, #:lo12:a16
        str     x17, [sp, #-8]!
        ldr     x19, [sp], #8
        ldr     x18, [x19]
        str     x18, [sp, #-8]!
        //  %r366 = load i32, i32* @a17

        str     x16, [sp, #-8]!
        ldr     x17, [sp], #8
        adrp     x17, a17
        add     x17, x17, #:lo12:a17
        str     x18, [sp, #-8]!
        ldr     x16, [sp], #8
        ldr     x19, [x16]
        str     x19, [sp, #-8]!
        //  %r367 = load i32, i32* @a18

        str     x17, [sp, #-8]!
        ldr     x18, [sp], #8
        adrp     x18, a18
        add     x18, x18, #:lo12:a18
        str     x19, [sp, #-8]!
        ldr     x17, [sp], #8
        ldr     x16, [x17]
        str     x16, [sp, #-8]!
        //  %r368 = load i32, i32* @a19

        str     x18, [sp, #-8]!
        ldr     x19, [sp], #8
        adrp     x19, a19
        add     x19, x19, #:lo12:a19
        str     x16, [sp, #-8]!
        ldr     x18, [sp], #8
        ldr     x17, [x18]
        str     x17, [sp, #-8]!
        //  %r369 = load i32, i32* @a20

        str     x19, [sp, #-8]!
        ldr     x16, [sp], #8
        adrp     x16, a20
        add     x16, x16, #:lo12:a20
        str     x17, [sp, #-8]!
        ldr     x19, [sp], #8
        ldr     x18, [x19]
        str     x18, [sp, #-8]!
        //  %r370 = load i32, i32* @a21

        str     x16, [sp, #-8]!
        ldr     x17, [sp], #8
        adrp     x17, a21
        add     x17, x17, #:lo12:a21
        str     x18, [sp, #-8]!
        ldr     x16, [sp], #8
        ldr     x19, [x16]
        str     x19, [sp, #-8]!
        //  %r371 = load i32, i32* @a22

        str     x17, [sp, #-8]!
        ldr     x18, [sp], #8
        adrp     x18, a22
        add     x18, x18, #:lo12:a22
        str     x19, [sp, #-8]!
        ldr     x17, [sp], #8
        ldr     x16, [x17]
        str     x16, [sp, #-8]!
        //  %r372 = load i32, i32* @a23

        str     x18, [sp, #-8]!
        ldr     x19, [sp], #8
        adrp     x19, a23
        add     x19, x19, #:lo12:a23
        str     x16, [sp, #-8]!
        ldr     x18, [sp], #8
        ldr     x17, [x18]
        str     x17, [sp, #-8]!
        //  %r373 = load i32, i32* @a24

        str     x19, [sp, #-8]!
        ldr     x16, [sp], #8
        adrp     x16, a24
        add     x16, x16, #:lo12:a24
        str     x17, [sp, #-8]!
        ldr     x19, [sp], #8
        ldr     x18, [x19]
        str     x18, [sp, #-8]!
        //  %r374 = load i32, i32* @a25

        str     x16, [sp, #-8]!
        ldr     x17, [sp], #8
        adrp     x17, a25
        add     x17, x17, #:lo12:a25
        str     x18, [sp, #-8]!
        ldr     x16, [sp], #8
        ldr     x19, [x16]
        str     x19, [sp, #-8]!
        //  %r375 = load i32, i32* @a26

        str     x17, [sp, #-8]!
        ldr     x18, [sp], #8
        adrp     x18, a26
        add     x18, x18, #:lo12:a26
        str     x19, [sp, #-8]!
        ldr     x17, [sp], #8
        ldr     x16, [x17]
        str     x16, [sp, #-8]!
        //  %r376 = load i32, i32* @a27

        str     x18, [sp, #-8]!
        ldr     x19, [sp], #8
        adrp     x19, a27
        add     x19, x19, #:lo12:a27
        str     x16, [sp, #-8]!
        ldr     x18, [sp], #8
        ldr     x17, [x18]
        str     x17, [sp, #-8]!
        //  %r377 = load i32, i32* @a28

        str     x19, [sp, #-8]!
        ldr     x16, [sp], #8
        adrp     x16, a28
        add     x16, x16, #:lo12:a28
        str     x17, [sp, #-8]!
        ldr     x19, [sp], #8
        ldr     x18, [x19]
        str     x18, [sp, #-8]!
        //  %r378 = load i32, i32* @a29

        str     x16, [sp, #-8]!
        ldr     x17, [sp], #8
        adrp     x17, a29
        add     x17, x17, #:lo12:a29
        str     x18, [sp, #-8]!
        ldr     x16, [sp], #8
        ldr     x19, [x16]
        str     x19, [sp, #-8]!
        //  %r379 = load i32, i32* @a30

        str     x17, [sp, #-8]!
        ldr     x18, [sp], #8
        adrp     x18, a30
        add     x18, x18, #:lo12:a30
        str     x19, [sp, #-8]!
        ldr     x17, [sp], #8
        ldr     x16, [x17]
        str     x16, [sp, #-8]!
        //  %r380 = load i32, i32* @a31

        str     x18, [sp, #-8]!
        ldr     x19, [sp], #8
        adrp     x19, a31
        add     x19, x19, #:lo12:a31
        ldr     x16, [sp], #8
        ldr     x11, [x16]
        //  %r606 = call i32 @testParam32(i32 %r349, i32 %r350, i32 %r351, i32 %r352, i32 %r353, i32 %r354, i32 %r355, i32 %r356, i32 %r357, i32 %r358, i32 %r359, i32 %r360, i32 %r361, i32 %r362, i32 %r363, i32 %r364, i32 %r365, i32 %r366, i32 %r367, i32 %r368, i32 %r369, i32 %r370, i32 %r371, i32 %r372, i32 %r373, i32 %r374, i32 %r375, i32 %r376, i32 %r377, i32 %r378, i32 %r379, i32 %r380)

        mov     x0, x9
        mov     x1, x10
        mov     x2, x12
        mov     x3, x13
        mov     x4, x14
        mov     x5, x15
        ldr     x17, [sp], #8
        mov     x6, x17
        ldr     x18, [sp], #8
        mov     x7, x18
        mov     x28, sp
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     sp, x28
        str     x11, [sp,#-80]
        ldr     x19, [sp], #8
        str     x19, [sp,#-88]
        ldr     x16, [sp], #8
        str     x16, [sp,#-96]
        ldr     x17, [sp], #8
        str     x17, [sp,#-104]
        ldr     x18, [sp], #8
        str     x18, [sp,#-112]
        ldr     x19, [sp], #8
        str     x19, [sp,#-120]
        ldr     x16, [sp], #8
        str     x16, [sp,#-128]
        ldr     x17, [sp], #8
        str     x17, [sp,#-136]
        ldr     x18, [sp], #8
        str     x18, [sp,#-144]
        ldr     x19, [sp], #8
        str     x19, [sp,#-152]
        ldr     x16, [sp], #8
        str     x16, [sp,#-160]
        ldr     x17, [sp], #8
        str     x17, [sp,#-168]
        ldr     x18, [sp], #8
        str     x18, [sp,#-176]
        ldr     x19, [sp], #8
        str     x19, [sp,#-184]
        ldr     x16, [sp], #8
        str     x16, [sp,#-192]
        ldr     x17, [sp], #8
        str     x17, [sp,#-200]
        ldr     x18, [sp], #8
        str     x18, [sp,#-208]
        ldr     x19, [sp], #8
        str     x19, [sp,#-216]
        ldr     x16, [sp], #8
        str     x16, [sp,#-224]
        ldr     x17, [sp], #8
        str     x17, [sp,#-232]
        ldr     x18, [sp], #8
        str     x18, [sp,#-240]
        ldr     x19, [sp], #8
        str     x19, [sp,#-248]
        ldr     x16, [sp], #8
        str     x16, [sp,#-256]
        mov     x27, #-264
        ldr     x17, [sp], #8
        str     x17, [sp,x27]
        sub     sp, sp, #264
        mov     x29, sp
        bl     testParam32
        add     sp, sp, #192
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        //  store i32 %r606, i32* @a0

        adrp     x10, a0
        add     x10, x10, #:lo12:a0
        str     x9, [x10]
        //  %r382 = load i32, i32* @a0

        adrp     x9, a0
        add     x9, x9, #:lo12:a0
        ldr     x9, [x9]
        //  call void @putint(i32 %r382)

        mov     x0, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     putint
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        //  call void @_sysy_stoptime(i32 117)

        mov     x0, #117
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     _sysy_stoptime
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        //  ret i32 0

        mov     x9, #0
        mov     x0, x9
        mov     sp, x29
        ret
