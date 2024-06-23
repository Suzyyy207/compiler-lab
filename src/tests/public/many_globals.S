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
        sub     sp, sp, #48
testParam8:

        //bb2:

bb2:

        sub     sp, sp, #48
        //  %r391 = add i32 0, 0

        mov     x16, #0
        sub     sp, sp, x16
        mov     x16, x0
        add     x16, sp, #0
        str     x16, [x16]
        mov     x15, x1
        mov     x14, x2
        mov     x13, x3
        mov     x12, x4
        mov     x11, x5
        mov     x10, x6
        mov     x9, x7
        //  %r392 = add i32 %r100, 0

        add     x18, sp, #0
        ldr     x18, [x18]
        mov     x17, x18
        add     x17, sp, #8
        str     x17, [x17]
        //  %r393 = add i32 0, 0

        //  %r394 = add i32 %r102, 0

        mov     x19, x15
        add     x19, sp, #16
        str     x19, [x19]
        //  %r395 = add i32 0, 0

        //  %r396 = add i32 %r104, 0

        mov     x14, x14
        //  %r397 = add i32 0, 0

        //  %r398 = add i32 %r106, 0

        mov     x13, x13
        //  %r399 = add i32 0, 0

        //  %r400 = add i32 %r108, 0

        mov     x16, x12
        add     x16, sp, #24
        str     x16, [x16]
        //  %r401 = add i32 0, 0

        //  %r402 = add i32 %r110, 0

        mov     x17, x11
        add     x17, sp, #32
        str     x17, [x17]
        //  %r403 = add i32 0, 0

        //  %r404 = add i32 %r112, 0

        mov     x18, x10
        add     x18, sp, #40
        str     x18, [x18]
        //  %r405 = add i32 0, 0

        //  %r406 = add i32 %r114, 0

        mov     x9, x9
        //  br label %bb1


        b     bb1
        //bb1:

bb1:

        //  %r407 = add i32 %r392, %r394

        add     x19, sp, #8
        ldr     x19, [x19]
        add     x16, sp, #16
        ldr     x16, [x16]
        add     x10, x19, x16
        //  %r408 = add i32 %r407, %r396

        add     x10, x10, x14
        //  %r409 = add i32 %r408, %r398

        add     x10, x10, x13
        //  %r410 = add i32 %r409, %r400

        add     x17, sp, #24
        ldr     x17, [x17]
        add     x10, x10, x17
        //  %r411 = add i32 %r410, %r402

        add     x18, sp, #32
        ldr     x18, [x18]
        add     x10, x10, x18
        //  %r412 = add i32 %r411, %r404

        add     x19, sp, #40
        ldr     x19, [x19]
        add     x10, x10, x19
        //  %r413 = add i32 %r412, %r406

        add     x9, x10, x9
        //  ret i32 %r413

        mov     x0, x9
        mov     sp, x29
        ret
        sub     sp, sp, #232
testParam16:

        //bb4:

bb4:

        sub     sp, sp, #232
        //  %r430 = add i32 0, 0

        mov     x16, #0
        sub     sp, sp, x16
        mov     x13, x0
        mov     x12, x1
        mov     x16, x2
        add     x16, sp, #0
        str     x16, [x16]
        mov     x17, x3
        add     x17, sp, #8
        str     x17, [x17]
        mov     x18, x4
        add     x18, sp, #16
        str     x18, [x18]
        mov     x19, x5
        add     x19, sp, #24
        str     x19, [x19]
        mov     x16, x6
        add     x16, sp, #32
        str     x16, [x16]
        mov     x17, x7
        add     x17, sp, #40
        str     x17, [x17]
        ldr     x18, [x29]
        add     x18, sp, #48
        str     x18, [x18]
        mov     x19, x18
        add     x19, sp, #56
        str     x19, [x19]
        ldr     x16, [x29,#8]
        add     x16, sp, #64
        str     x16, [x16]
        mov     x17, x16
        add     x17, sp, #72
        str     x17, [x17]
        ldr     x18, [x29,#16]
        add     x18, sp, #80
        str     x18, [x18]
        mov     x11, x18
        ldr     x19, [x29,#24]
        add     x19, sp, #88
        str     x19, [x19]
        mov     x10, x19
        ldr     x16, [x29,#32]
        add     x16, sp, #96
        str     x16, [x16]
        mov     x9, x16
        ldr     x17, [x29,#40]
        add     x17, sp, #104
        str     x17, [x17]
        mov     x18, x17
        add     x18, sp, #112
        str     x18, [x18]
        ldr     x19, [x29,#48]
        add     x19, sp, #120
        str     x19, [x19]
        mov     x16, x19
        add     x16, sp, #128
        str     x16, [x16]
        ldr     x17, [x29,#56]
        add     x17, sp, #136
        str     x17, [x17]
        mov     x18, x17
        add     x18, sp, #144
        str     x18, [x18]
        //  %r431 = add i32 %r131, 0

        mov     x19, x13
        add     x19, sp, #152
        str     x19, [x19]
        //  %r432 = add i32 0, 0

        //  %r433 = add i32 %r133, 0

        mov     x16, x12
        add     x16, sp, #160
        str     x16, [x16]
        //  %r434 = add i32 0, 0

        //  %r435 = add i32 %r135, 0

        add     x18, sp, #0
        ldr     x18, [x18]
        mov     x17, x18
        add     x17, sp, #168
        str     x17, [x17]
        //  %r436 = add i32 0, 0

        //  %r437 = add i32 %r137, 0

        add     x16, sp, #8
        ldr     x16, [x16]
        mov     x19, x16
        add     x19, sp, #176
        str     x19, [x19]
        //  %r438 = add i32 0, 0

        //  %r439 = add i32 %r139, 0

        add     x18, sp, #16
        ldr     x18, [x18]
        mov     x17, x18
        add     x17, sp, #184
        str     x17, [x17]
        //  %r440 = add i32 0, 0

        //  %r441 = add i32 %r141, 0

        add     x16, sp, #24
        ldr     x16, [x16]
        mov     x19, x16
        add     x19, sp, #192
        str     x19, [x19]
        //  %r442 = add i32 0, 0

        //  %r443 = add i32 %r143, 0

        add     x18, sp, #32
        ldr     x18, [x18]
        mov     x17, x18
        add     x17, sp, #200
        str     x17, [x17]
        //  %r444 = add i32 0, 0

        //  %r445 = add i32 %r145, 0

        add     x16, sp, #40
        ldr     x16, [x16]
        mov     x19, x16
        add     x19, sp, #208
        str     x19, [x19]
        //  %r446 = add i32 0, 0

        //  %r447 = add i32 %r147, 0

        add     x18, sp, #56
        ldr     x18, [x18]
        mov     x17, x18
        add     x17, sp, #216
        str     x17, [x17]
        //  %r448 = add i32 0, 0

        //  %r449 = add i32 %r149, 0

        add     x16, sp, #72
        ldr     x16, [x16]
        mov     x19, x16
        add     x19, sp, #224
        str     x19, [x19]
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

        add     x17, sp, #112
        ldr     x17, [x17]
        mov     x11, x17
        //  %r458 = add i32 0, 0

        //  %r459 = add i32 %r159, 0

        add     x18, sp, #128
        ldr     x18, [x18]
        mov     x10, x18
        //  %r460 = add i32 0, 0

        //  %r461 = add i32 %r161, 0

        add     x19, sp, #144
        ldr     x19, [x19]
        mov     x9, x19
        //  br label %bb3


        b     bb3
        //bb3:

bb3:

        //  %r462 = add i32 %r431, %r433

        add     x16, sp, #152
        ldr     x16, [x16]
        add     x17, sp, #160
        ldr     x17, [x17]
        add     x15, x16, x17
        //  %r463 = add i32 %r462, %r435

        add     x18, sp, #168
        ldr     x18, [x18]
        add     x15, x15, x18
        //  %r464 = sub i32 %r463, %r437

        add     x19, sp, #176
        ldr     x19, [x19]
        sub     x15, x15, x19
        //  %r465 = sub i32 %r464, %r439

        add     x16, sp, #184
        ldr     x16, [x16]
        sub     x15, x15, x16
        //  %r466 = sub i32 %r465, %r441

        add     x17, sp, #192
        ldr     x17, [x17]
        sub     x15, x15, x17
        //  %r467 = sub i32 %r466, %r443

        add     x18, sp, #200
        ldr     x18, [x18]
        sub     x15, x15, x18
        //  %r468 = sub i32 %r467, %r445

        add     x19, sp, #208
        ldr     x19, [x19]
        sub     x15, x15, x19
        //  %r469 = add i32 %r468, %r447

        add     x16, sp, #216
        ldr     x16, [x16]
        add     x15, x15, x16
        //  %r470 = add i32 %r469, %r449

        add     x17, sp, #224
        ldr     x17, [x17]
        add     x15, x15, x17
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
        sub     sp, sp, #744
testParam32:

        //bb6:

bb6:

        sub     sp, sp, #744
        //  %r509 = add i32 0, 0

        mov     x16, #0
        sub     sp, sp, x16
        mov     x18, x0
        add     x18, sp, #0
        str     x18, [x18]
        mov     x19, x1
        add     x19, sp, #8
        str     x19, [x19]
        mov     x16, x2
        add     x16, sp, #16
        str     x16, [x16]
        mov     x17, x3
        add     x17, sp, #24
        str     x17, [x17]
        mov     x18, x4
        add     x18, sp, #32
        str     x18, [x18]
        mov     x19, x5
        add     x19, sp, #40
        str     x19, [x19]
        mov     x16, x6
        add     x16, sp, #48
        str     x16, [x16]
        mov     x17, x7
        add     x17, sp, #56
        str     x17, [x17]
        ldr     x18, [x29]
        add     x18, sp, #64
        str     x18, [x18]
        mov     x19, x18
        add     x19, sp, #72
        str     x19, [x19]
        ldr     x16, [x29,#8]
        add     x16, sp, #80
        str     x16, [x16]
        mov     x17, x16
        add     x17, sp, #88
        str     x17, [x17]
        ldr     x18, [x29,#16]
        add     x18, sp, #96
        str     x18, [x18]
        mov     x19, x18
        add     x19, sp, #104
        str     x19, [x19]
        ldr     x16, [x29,#24]
        add     x16, sp, #112
        str     x16, [x16]
        mov     x17, x16
        add     x17, sp, #120
        str     x17, [x17]
        ldr     x18, [x29,#32]
        add     x18, sp, #128
        str     x18, [x18]
        mov     x19, x18
        add     x19, sp, #136
        str     x19, [x19]
        ldr     x16, [x29,#40]
        add     x16, sp, #144
        str     x16, [x16]
        mov     x17, x16
        add     x17, sp, #152
        str     x17, [x17]
        ldr     x18, [x29,#48]
        add     x18, sp, #160
        str     x18, [x18]
        mov     x19, x18
        add     x19, sp, #168
        str     x19, [x19]
        ldr     x16, [x29,#56]
        add     x16, sp, #176
        str     x16, [x16]
        mov     x17, x16
        add     x17, sp, #184
        str     x17, [x17]
        ldr     x18, [x29,#64]
        add     x18, sp, #192
        str     x18, [x18]
        mov     x19, x18
        add     x16, sp, #24
        ldr     x16, [x16]
        add     x19, sp, #16
        str     x19, [x19]
        ldr     x17, [x29,#72]
        add     x18, sp, #56
        ldr     x18, [x18]
        add     x17, sp, #18
        str     x17, [x17]
        mov     x19, x17
        add     x16, sp, #120
        ldr     x16, [x16]
        add     x19, sp, #16
        str     x19, [x19]
        ldr     x17, [x29,#80]
        add     x18, sp, #184
        ldr     x18, [x18]
        add     x17, sp, #18
        str     x17, [x17]
        mov     x19, x17
        add     x16, sp, #240
        ldr     x16, [x16]
        add     x19, sp, #16
        str     x19, [x19]
        ldr     x17, [x29,#88]
        add     x18, sp, #256
        ldr     x18, [x18]
        add     x17, sp, #18
        str     x17, [x17]
        mov     x19, x17
        add     x16, sp, #264
        ldr     x16, [x16]
        add     x19, sp, #16
        str     x19, [x19]
        ldr     x17, [x29,#96]
        add     x17, sp, #272
        str     x17, [x17]
        mov     x18, x17
        add     x18, sp, #280
        str     x18, [x18]
        ldr     x19, [x29,#104]
        add     x19, sp, #288
        str     x19, [x19]
        mov     x16, x19
        add     x16, sp, #296
        str     x16, [x16]
        ldr     x17, [x29,#112]
        add     x17, sp, #304
        str     x17, [x17]
        mov     x18, x17
        add     x18, sp, #312
        str     x18, [x18]
        ldr     x19, [x29,#120]
        add     x19, sp, #320
        str     x19, [x19]
        mov     x16, x19
        add     x16, sp, #264
        str     x16, [x16]
        ldr     x17, [x29,#128]
        add     x17, sp, #328
        str     x17, [x17]
        mov     x18, x17
        add     x18, sp, #336
        str     x18, [x18]
        ldr     x19, [x29,#136]
        add     x19, sp, #344
        str     x19, [x19]
        mov     x16, x19
        add     x16, sp, #352
        str     x16, [x16]
        ldr     x17, [x29,#144]
        add     x17, sp, #360
        str     x17, [x17]
        mov     x18, x17
        add     x18, sp, #368
        str     x18, [x18]
        ldr     x19, [x29,#152]
        add     x19, sp, #376
        str     x19, [x19]
        mov     x16, x19
        add     x17, sp, #384
        ldr     x17, [x17]
        add     x16, sp, #17
        str     x16, [x16]
        ldr     x18, [x29,#160]
        add     x18, sp, #392
        str     x18, [x18]
        mov     x19, x18
        add     x19, sp, #400
        str     x19, [x19]
        ldr     x16, [x29,#168]
        add     x16, sp, #408
        str     x16, [x16]
        mov     x17, x16
        add     x17, sp, #416
        str     x17, [x17]
        ldr     x18, [x29,#176]
        add     x18, sp, #424
        str     x18, [x18]
        mov     x19, x18
        add     x19, sp, #432
        str     x19, [x19]
        ldr     x16, [x29,#184]
        add     x16, sp, #440
        str     x16, [x16]
        mov     x17, x16
        add     x17, sp, #384
        str     x17, [x17]
        //  %r510 = add i32 %r194, 0

        add     x19, sp, #0
        ldr     x19, [x19]
        mov     x18, x19
        add     x18, sp, #448
        str     x18, [x18]
        //  %r511 = add i32 0, 0

        //  %r512 = add i32 %r196, 0

        add     x17, sp, #8
        ldr     x17, [x17]
        mov     x16, x17
        add     x16, sp, #456
        str     x16, [x16]
        //  %r513 = add i32 0, 0

        //  %r514 = add i32 %r198, 0

        add     x19, sp, #16
        ldr     x19, [x19]
        mov     x18, x19
        add     x18, sp, #464
        str     x18, [x18]
        //  %r515 = add i32 0, 0

        //  %r516 = add i32 %r200, 0

        add     x17, sp, #24
        ldr     x17, [x17]
        mov     x16, x17
        add     x16, sp, #472
        str     x16, [x16]
        //  %r517 = add i32 0, 0

        //  %r518 = add i32 %r202, 0

        add     x19, sp, #32
        ldr     x19, [x19]
        mov     x18, x19
        add     x18, sp, #480
        str     x18, [x18]
        //  %r519 = add i32 0, 0

        //  %r520 = add i32 %r204, 0

        add     x17, sp, #40
        ldr     x17, [x17]
        mov     x16, x17
        add     x16, sp, #488
        str     x16, [x16]
        //  %r521 = add i32 0, 0

        //  %r522 = add i32 %r206, 0

        add     x19, sp, #48
        ldr     x19, [x19]
        mov     x18, x19
        add     x18, sp, #496
        str     x18, [x18]
        //  %r523 = add i32 0, 0

        //  %r524 = add i32 %r208, 0

        add     x17, sp, #56
        ldr     x17, [x17]
        mov     x16, x17
        add     x16, sp, #504
        str     x16, [x16]
        //  %r525 = add i32 0, 0

        //  %r526 = add i32 %r210, 0

        add     x19, sp, #72
        ldr     x19, [x19]
        mov     x18, x19
        add     x16, sp, #456
        ldr     x16, [x16]
        add     x18, sp, #16
        str     x18, [x18]
        //  %r527 = add i32 0, 0

        //  %r528 = add i32 %r212, 0

        add     x18, sp, #88
        ldr     x18, [x18]
        mov     x17, x18
        add     x19, sp, #488
        ldr     x19, [x19]
        add     x17, sp, #19
        str     x17, [x17]
        //  %r529 = add i32 0, 0

        //  %r530 = add i32 %r214, 0

        add     x17, sp, #104
        ldr     x17, [x17]
        mov     x16, x17
        add     x18, sp, #520
        ldr     x18, [x18]
        add     x16, sp, #18
        str     x16, [x16]
        //  %r531 = add i32 0, 0

        //  %r532 = add i32 %r216, 0

        add     x16, sp, #120
        ldr     x16, [x16]
        mov     x19, x16
        add     x17, sp, #544
        ldr     x17, [x17]
        add     x19, sp, #17
        str     x19, [x19]
        //  %r533 = add i32 0, 0

        //  %r534 = add i32 %r218, 0

        add     x19, sp, #136
        ldr     x19, [x19]
        mov     x18, x19
        add     x16, sp, #560
        ldr     x16, [x16]
        add     x18, sp, #16
        str     x18, [x18]
        //  %r535 = add i32 0, 0

        //  %r536 = add i32 %r220, 0

        add     x18, sp, #152
        ldr     x18, [x18]
        mov     x17, x18
        add     x19, sp, #568
        ldr     x19, [x19]
        add     x17, sp, #19
        str     x17, [x17]
        //  %r537 = add i32 0, 0

        //  %r538 = add i32 %r222, 0

        add     x17, sp, #168
        ldr     x17, [x17]
        mov     x16, x17
        add     x16, sp, #15
        str     x16, [x16]
        //  %r539 = add i32 0, 0

        //  %r540 = add i32 %r224, 0

        add     x19, sp, #184
        ldr     x19, [x19]
        mov     x18, x19
        add     x18, sp, #15
        str     x18, [x18]
        //  %r541 = add i32 0, 0

        //  %r542 = add i32 %r226, 0

        add     x17, sp, #200
        ldr     x17, [x17]
        mov     x16, x17
        add     x16, sp, #15
        str     x16, [x16]
        //  %r543 = add i32 0, 0

        //  %r544 = add i32 %r228, 0

        add     x19, sp, #216
        ldr     x19, [x19]
        mov     x18, x19
        add     x18, sp, #11
        str     x18, [x18]
        //  %r545 = add i32 0, 0

        //  %r546 = add i32 %r230, 0

        add     x17, sp, #232
        ldr     x17, [x17]
        mov     x16, x17
        add     x16, sp, #12
        str     x16, [x16]
        //  %r547 = add i32 0, 0

        //  %r548 = add i32 %r232, 0

        add     x19, sp, #240
        ldr     x19, [x19]
        mov     x18, x19
        add     x18, sp, #608
        str     x18, [x18]
        //  %r549 = add i32 0, 0

        //  %r550 = add i32 %r234, 0

        add     x17, sp, #280
        ldr     x17, [x17]
        mov     x16, x17
        add     x18, sp, #80
        ldr     x18, [x18]
        add     x16, sp, #18
        str     x16, [x16]
        //  %r551 = add i32 0, 0

        //  %r552 = add i32 %r236, 0

        add     x16, sp, #296
        ldr     x16, [x16]
        mov     x19, x16
        add     x17, sp, #624
        ldr     x17, [x17]
        add     x19, sp, #17
        str     x19, [x19]
        //  %r553 = add i32 0, 0

        //  %r554 = add i32 %r238, 0

        add     x19, sp, #312
        ldr     x19, [x19]
        mov     x18, x19
        add     x16, sp, #344
        ldr     x16, [x16]
        add     x18, sp, #16
        str     x18, [x18]
        //  %r555 = add i32 0, 0

        //  %r556 = add i32 %r240, 0

        add     x18, sp, #264
        ldr     x18, [x18]
        mov     x17, x18
        add     x17, sp, #640
        str     x17, [x17]
        //  %r557 = add i32 0, 0

        //  %r558 = add i32 %r242, 0

        add     x16, sp, #336
        ldr     x16, [x16]
        mov     x19, x16
        add     x19, sp, #648
        str     x19, [x19]
        //  %r559 = add i32 0, 0

        //  %r560 = add i32 %r244, 0

        add     x18, sp, #352
        ldr     x18, [x18]
        mov     x17, x18
        add     x19, sp, #208
        ldr     x19, [x19]
        add     x17, sp, #19
        str     x17, [x17]
        //  %r561 = add i32 0, 0

        //  %r562 = add i32 %r246, 0

        add     x16, sp, #368
        ldr     x16, [x16]
        mov     x14, x16
        //  %r563 = add i32 0, 0

        //  %r564 = add i32 %r248, 0

        add     x17, sp, #256
        ldr     x17, [x17]
        mov     x13, x17
        //  %r565 = add i32 0, 0

        //  %r566 = add i32 %r250, 0

        add     x18, sp, #400
        ldr     x18, [x18]
        mov     x12, x18
        //  %r567 = add i32 0, 0

        //  %r568 = add i32 %r252, 0

        add     x19, sp, #416
        ldr     x19, [x19]
        mov     x11, x19
        //  %r569 = add i32 0, 0

        //  %r570 = add i32 %r254, 0

        add     x16, sp, #432
        ldr     x16, [x16]
        mov     x10, x16
        //  %r571 = add i32 0, 0

        //  %r572 = add i32 %r256, 0

        add     x17, sp, #384
        ldr     x17, [x17]
        mov     x9, x17
        //  br label %bb5


        b     bb5
        //bb5:

bb5:

        //  %r573 = add i32 %r510, %r512

        add     x18, sp, #448
        ldr     x18, [x18]
        add     x19, sp, #456
        ldr     x19, [x19]
        add     x15, x18, x19
        //  %r574 = add i32 %r573, %r514

        add     x16, sp, #464
        ldr     x16, [x16]
        add     x15, x15, x16
        //  %r575 = add i32 %r574, %r516

        add     x17, sp, #472
        ldr     x17, [x17]
        add     x18, x15, x17
        add     x18, sp, #656
        str     x18, [x18]
        //  %r576 = add i32 %r575, %r518

        add     x19, sp, #656
        ldr     x19, [x19]
        add     x16, sp, #480
        ldr     x16, [x16]
        add     x15, x19, x16
        //  %r577 = add i32 %r576, %r520

        add     x17, sp, #488
        ldr     x17, [x17]
        add     x18, x15, x17
        add     x18, sp, #664
        str     x18, [x18]
        //  %r578 = add i32 %r577, %r522

        add     x19, sp, #664
        ldr     x19, [x19]
        add     x16, sp, #496
        ldr     x16, [x16]
        add     x15, x19, x16
        //  %r579 = add i32 %r578, %r524

        add     x17, sp, #504
        ldr     x17, [x17]
        add     x18, x15, x17
        add     x18, sp, #672
        str     x18, [x18]
        //  %r580 = add i32 %r579, %r526

        add     x19, sp, #672
        ldr     x19, [x19]
        add     x16, sp, #512
        ldr     x16, [x16]
        add     x15, x19, x16
        //  %r581 = add i32 %r580, %r528

        add     x17, sp, #520
        ldr     x17, [x17]
        add     x18, x15, x17
        add     x18, sp, #680
        str     x18, [x18]
        //  %r582 = add i32 %r581, %r530

        add     x19, sp, #680
        ldr     x19, [x19]
        add     x16, sp, #528
        ldr     x16, [x16]
        add     x15, x19, x16
        //  %r583 = add i32 %r582, %r532

        add     x17, sp, #536
        ldr     x17, [x17]
        add     x18, x15, x17
        add     x18, sp, #688
        str     x18, [x18]
        //  %r584 = add i32 %r583, %r534

        add     x19, sp, #688
        ldr     x19, [x19]
        add     x16, sp, #552
        ldr     x16, [x16]
        add     x15, x19, x16
        //  %r585 = add i32 %r584, %r536

        add     x17, sp, #544
        ldr     x17, [x17]
        add     x18, x15, x17
        add     x18, sp, #696
        str     x18, [x18]
        //  %r586 = add i32 %r585, %r538

        add     x19, sp, #696
        ldr     x19, [x19]
        add     x16, sp, #576
        ldr     x16, [x16]
        add     x15, x19, x16
        //  %r587 = add i32 %r586, %r540

        add     x17, sp, #584
        ldr     x17, [x17]
        add     x18, x15, x17
        add     x18, sp, #704
        str     x18, [x18]
        //  %r588 = add i32 %r587, %r542

        add     x19, sp, #704
        ldr     x19, [x19]
        add     x16, sp, #592
        ldr     x16, [x16]
        add     x15, x19, x16
        //  %r589 = add i32 %r588, %r544

        add     x17, sp, #568
        ldr     x17, [x17]
        add     x18, x15, x17
        add     x18, sp, #712
        str     x18, [x18]
        //  %r590 = sub i32 %r589, %r546

        add     x19, sp, #712
        ldr     x19, [x19]
        add     x16, sp, #600
        ldr     x16, [x16]
        sub     x15, x19, x16
        //  %r591 = sub i32 %r590, %r548

        add     x17, sp, #608
        ldr     x17, [x17]
        sub     x18, x15, x17
        add     x18, sp, #720
        str     x18, [x18]
        //  %r592 = sub i32 %r591, %r550

        add     x19, sp, #720
        ldr     x19, [x19]
        add     x16, sp, #616
        ldr     x16, [x16]
        sub     x15, x19, x16
        //  %r593 = sub i32 %r592, %r552

        add     x17, sp, #560
        ldr     x17, [x17]
        sub     x18, x15, x17
        add     x18, sp, #728
        str     x18, [x18]
        //  %r594 = sub i32 %r593, %r554

        add     x19, sp, #728
        ldr     x19, [x19]
        add     x16, sp, #632
        ldr     x16, [x16]
        sub     x15, x19, x16
        //  %r595 = add i32 %r594, %r556

        add     x17, sp, #640
        ldr     x17, [x17]
        add     x18, x15, x17
        add     x18, sp, #736
        str     x18, [x18]
        //  %r596 = add i32 %r595, %r558

        add     x19, sp, #736
        ldr     x19, [x19]
        add     x16, sp, #648
        ldr     x16, [x16]
        add     x15, x19, x16
        //  %r597 = add i32 %r596, %r560

        add     x17, sp, #624
        ldr     x17, [x17]
        add     x15, x15, x17
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
        sub     sp, sp, #560
main:

        //bb7:

bb7:

        sub     sp, sp, #560
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

        add     x18, sp, #0
        ldr     x18, [x18]
        adrp     x18, a7
        add     x18, x18, #:lo12:a7
        add     x16, sp, #0
        ldr     x16, [x16]
        ldr     x19, [x16]
        add     x19, sp, #8
        str     x19, [x19]
        //  %r604 = call i32 @testParam8(i32 %r321, i32 %r322, i32 %r323, i32 %r324, i32 %r325, i32 %r326, i32 %r327, i32 %r328)

        mov     x0, x9
        mov     x1, x10
        mov     x2, x11
        mov     x3, x12
        mov     x4, x13
        mov     x5, x14
        mov     x6, x15
        add     x17, sp, #8
        ldr     x17, [x17]
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
        ldr     x18, [x9]
        add     x18, sp, #16
        str     x18, [x18]
        //  %r332 = load i32, i32* @a33

        adrp     x9, a33
        add     x9, x9, #:lo12:a33
        ldr     x19, [x9]
        add     x19, sp, #24
        str     x19, [x19]
        //  %r333 = load i32, i32* @a34

        adrp     x9, a34
        add     x9, x9, #:lo12:a34
        ldr     x16, [x9]
        add     x16, sp, #32
        str     x16, [x16]
        //  %r334 = load i32, i32* @a35

        adrp     x9, a35
        add     x9, x9, #:lo12:a35
        ldr     x17, [x9]
        add     x17, sp, #40
        str     x17, [x17]
        //  %r335 = load i32, i32* @a36

        adrp     x9, a36
        add     x9, x9, #:lo12:a36
        ldr     x18, [x9]
        add     x18, sp, #48
        str     x18, [x18]
        //  %r336 = load i32, i32* @a37

        adrp     x9, a37
        add     x9, x9, #:lo12:a37
        ldr     x19, [x9]
        add     x19, sp, #56
        str     x19, [x19]
        //  %r337 = load i32, i32* @a38

        adrp     x9, a38
        add     x9, x9, #:lo12:a38
        ldr     x16, [x9]
        add     x16, sp, #64
        str     x16, [x16]
        //  %r338 = load i32, i32* @a39

        add     x17, sp, #72
        ldr     x17, [x17]
        adrp     x17, a39
        add     x17, x17, #:lo12:a39
        add     x19, sp, #72
        ldr     x19, [x19]
        ldr     x18, [x19]
        add     x18, sp, #80
        str     x18, [x18]
        //  %r339 = load i32, i32* @a8

        add     x16, sp, #88
        ldr     x16, [x16]
        adrp     x16, a8
        add     x16, x16, #:lo12:a8
        add     x18, sp, #88
        ldr     x18, [x18]
        ldr     x17, [x18]
        add     x17, sp, #96
        str     x17, [x17]
        //  %r340 = load i32, i32* @a9

        add     x19, sp, #104
        ldr     x19, [x19]
        adrp     x19, a9
        add     x19, x19, #:lo12:a9
        add     x16, sp, #104
        ldr     x16, [x16]
        ldr     x15, [x16]
        //  %r341 = load i32, i32* @a10

        add     x17, sp, #112
        ldr     x17, [x17]
        adrp     x17, a10
        add     x17, x17, #:lo12:a10
        add     x18, sp, #112
        ldr     x18, [x18]
        ldr     x14, [x18]
        //  %r342 = load i32, i32* @a11

        add     x19, sp, #120
        ldr     x19, [x19]
        adrp     x19, a11
        add     x19, x19, #:lo12:a11
        add     x16, sp, #120
        ldr     x16, [x16]
        ldr     x13, [x16]
        //  %r343 = load i32, i32* @a12

        add     x17, sp, #128
        ldr     x17, [x17]
        adrp     x17, a12
        add     x17, x17, #:lo12:a12
        add     x18, sp, #128
        ldr     x18, [x18]
        ldr     x12, [x18]
        //  %r344 = load i32, i32* @a13

        add     x19, sp, #136
        ldr     x19, [x19]
        adrp     x19, a13
        add     x19, x19, #:lo12:a13
        add     x16, sp, #136
        ldr     x16, [x16]
        ldr     x11, [x16]
        //  %r345 = load i32, i32* @a14

        add     x17, sp, #144
        ldr     x17, [x17]
        adrp     x17, a14
        add     x17, x17, #:lo12:a14
        add     x18, sp, #144
        ldr     x18, [x18]
        ldr     x10, [x18]
        //  %r346 = load i32, i32* @a15

        add     x19, sp, #152
        ldr     x19, [x19]
        adrp     x19, a15
        add     x19, x19, #:lo12:a15
        add     x16, sp, #152
        ldr     x16, [x16]
        ldr     x9, [x16]
        //  %r605 = call i32 @testParam16(i32 %r331, i32 %r332, i32 %r333, i32 %r334, i32 %r335, i32 %r336, i32 %r337, i32 %r338, i32 %r339, i32 %r340, i32 %r341, i32 %r342, i32 %r343, i32 %r344, i32 %r345, i32 %r346)

        add     x17, sp, #16
        ldr     x17, [x17]
        mov     x0, x17
        add     x18, sp, #24
        ldr     x18, [x18]
        mov     x1, x18
        add     x19, sp, #32
        ldr     x19, [x19]
        mov     x2, x19
        add     x16, sp, #40
        ldr     x16, [x16]
        mov     x3, x16
        add     x17, sp, #48
        ldr     x17, [x17]
        mov     x4, x17
        add     x18, sp, #56
        ldr     x18, [x18]
        mov     x5, x18
        add     x19, sp, #64
        ldr     x19, [x19]
        mov     x6, x19
        add     x16, sp, #80
        ldr     x16, [x16]
        mov     x7, x16
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
        add     x17, sp, #96
        ldr     x17, [x17]
        str     x17, [sp,#-136]
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
        ldr     x18, [x11]
        add     x18, sp, #160
        str     x18, [x18]
        //  %r356 = load i32, i32* @a7

        add     x19, sp, #168
        ldr     x19, [x19]
        adrp     x19, a7
        add     x19, x19, #:lo12:a7
        add     x17, sp, #168
        ldr     x17, [x17]
        ldr     x16, [x17]
        add     x16, sp, #176
        str     x16, [x16]
        //  %r357 = load i32, i32* @a8

        add     x18, sp, #184
        ldr     x18, [x18]
        adrp     x18, a8
        add     x18, x18, #:lo12:a8
        add     x16, sp, #184
        ldr     x16, [x16]
        ldr     x19, [x16]
        add     x19, sp, #192
        str     x19, [x19]
        //  %r358 = load i32, i32* @a9

        add     x17, sp, #200
        ldr     x17, [x17]
        adrp     x17, a9
        add     x17, x17, #:lo12:a9
        add     x19, sp, #200
        ldr     x19, [x19]
        ldr     x18, [x19]
        add     x18, sp, #208
        str     x18, [x18]
        //  %r359 = load i32, i32* @a10

        add     x16, sp, #216
        ldr     x16, [x16]
        adrp     x16, a10
        add     x16, x16, #:lo12:a10
        add     x18, sp, #216
        ldr     x18, [x18]
        ldr     x17, [x18]
        add     x17, sp, #224
        str     x17, [x17]
        //  %r360 = load i32, i32* @a11

        add     x19, sp, #232
        ldr     x19, [x19]
        adrp     x19, a11
        add     x19, x19, #:lo12:a11
        add     x17, sp, #232
        ldr     x17, [x17]
        ldr     x16, [x17]
        add     x16, sp, #240
        str     x16, [x16]
        //  %r361 = load i32, i32* @a12

        add     x18, sp, #248
        ldr     x18, [x18]
        adrp     x18, a12
        add     x18, x18, #:lo12:a12
        add     x16, sp, #248
        ldr     x16, [x16]
        ldr     x19, [x16]
        add     x19, sp, #256
        str     x19, [x19]
        //  %r362 = load i32, i32* @a13

        add     x17, sp, #264
        ldr     x17, [x17]
        adrp     x17, a13
        add     x17, x17, #:lo12:a13
        add     x19, sp, #264
        ldr     x19, [x19]
        ldr     x18, [x19]
        add     x18, sp, #272
        str     x18, [x18]
        //  %r363 = load i32, i32* @a14

        add     x16, sp, #280
        ldr     x16, [x16]
        adrp     x16, a14
        add     x16, x16, #:lo12:a14
        add     x18, sp, #280
        ldr     x18, [x18]
        ldr     x17, [x18]
        add     x17, sp, #288
        str     x17, [x17]
        //  %r364 = load i32, i32* @a15

        add     x19, sp, #296
        ldr     x19, [x19]
        adrp     x19, a15
        add     x19, x19, #:lo12:a15
        add     x17, sp, #296
        ldr     x17, [x17]
        ldr     x16, [x17]
        add     x16, sp, #304
        str     x16, [x16]
        //  %r365 = load i32, i32* @a16

        add     x18, sp, #312
        ldr     x18, [x18]
        adrp     x18, a16
        add     x18, x18, #:lo12:a16
        add     x16, sp, #312
        ldr     x16, [x16]
        ldr     x19, [x16]
        add     x19, sp, #320
        str     x19, [x19]
        //  %r366 = load i32, i32* @a17

        add     x17, sp, #328
        ldr     x17, [x17]
        adrp     x17, a17
        add     x17, x17, #:lo12:a17
        add     x19, sp, #328
        ldr     x19, [x19]
        ldr     x18, [x19]
        add     x16, sp, #56
        ldr     x16, [x16]
        add     x18, sp, #16
        str     x18, [x18]
        //  %r367 = load i32, i32* @a18

        add     x17, sp, #344
        ldr     x17, [x17]
        adrp     x17, a18
        add     x17, x17, #:lo12:a18
        add     x19, sp, #344
        ldr     x19, [x19]
        ldr     x18, [x19]
        add     x18, sp, #13
        str     x18, [x18]
        //  %r368 = load i32, i32* @a19

        add     x16, sp, #360
        ldr     x16, [x16]
        adrp     x16, a19
        add     x16, x16, #:lo12:a19
        add     x18, sp, #360
        ldr     x18, [x18]
        ldr     x17, [x18]
        add     x19, sp, #368
        ldr     x19, [x19]
        add     x17, sp, #19
        str     x17, [x17]
        //  %r369 = load i32, i32* @a20

        add     x16, sp, #376
        ldr     x16, [x16]
        adrp     x16, a20
        add     x16, x16, #:lo12:a20
        add     x18, sp, #376
        ldr     x18, [x18]
        ldr     x17, [x18]
        add     x17, sp, #384
        str     x17, [x17]
        //  %r370 = load i32, i32* @a21

        add     x19, sp, #392
        ldr     x19, [x19]
        adrp     x19, a21
        add     x19, x19, #:lo12:a21
        add     x17, sp, #392
        ldr     x17, [x17]
        ldr     x16, [x17]
        add     x16, sp, #400
        str     x16, [x16]
        //  %r371 = load i32, i32* @a22

        add     x18, sp, #408
        ldr     x18, [x18]
        adrp     x18, a22
        add     x18, x18, #:lo12:a22
        add     x16, sp, #408
        ldr     x16, [x16]
        ldr     x19, [x16]
        add     x19, sp, #416
        str     x19, [x19]
        //  %r372 = load i32, i32* @a23

        add     x17, sp, #424
        ldr     x17, [x17]
        adrp     x17, a23
        add     x17, x17, #:lo12:a23
        add     x19, sp, #424
        ldr     x19, [x19]
        ldr     x18, [x19]
        add     x18, sp, #432
        str     x18, [x18]
        //  %r373 = load i32, i32* @a24

        add     x16, sp, #440
        ldr     x16, [x16]
        adrp     x16, a24
        add     x16, x16, #:lo12:a24
        add     x18, sp, #440
        ldr     x18, [x18]
        ldr     x17, [x18]
        add     x17, sp, #448
        str     x17, [x17]
        //  %r374 = load i32, i32* @a25

        add     x19, sp, #456
        ldr     x19, [x19]
        adrp     x19, a25
        add     x19, x19, #:lo12:a25
        add     x17, sp, #456
        ldr     x17, [x17]
        ldr     x16, [x17]
        add     x16, sp, #464
        str     x16, [x16]
        //  %r375 = load i32, i32* @a26

        add     x18, sp, #472
        ldr     x18, [x18]
        adrp     x18, a26
        add     x18, x18, #:lo12:a26
        add     x16, sp, #472
        ldr     x16, [x16]
        ldr     x19, [x16]
        add     x19, sp, #480
        str     x19, [x19]
        //  %r376 = load i32, i32* @a27

        add     x17, sp, #488
        ldr     x17, [x17]
        adrp     x17, a27
        add     x17, x17, #:lo12:a27
        add     x19, sp, #488
        ldr     x19, [x19]
        ldr     x18, [x19]
        add     x18, sp, #496
        str     x18, [x18]
        //  %r377 = load i32, i32* @a28

        add     x16, sp, #504
        ldr     x16, [x16]
        adrp     x16, a28
        add     x16, x16, #:lo12:a28
        add     x18, sp, #504
        ldr     x18, [x18]
        ldr     x17, [x18]
        add     x17, sp, #512
        str     x17, [x17]
        //  %r378 = load i32, i32* @a29

        add     x19, sp, #520
        ldr     x19, [x19]
        adrp     x19, a29
        add     x19, x19, #:lo12:a29
        add     x17, sp, #520
        ldr     x17, [x17]
        ldr     x16, [x17]
        add     x16, sp, #528
        str     x16, [x16]
        //  %r379 = load i32, i32* @a30

        add     x18, sp, #536
        ldr     x18, [x18]
        adrp     x18, a30
        add     x18, x18, #:lo12:a30
        add     x16, sp, #536
        ldr     x16, [x16]
        ldr     x19, [x16]
        add     x19, sp, #544
        str     x19, [x19]
        //  %r380 = load i32, i32* @a31

        add     x17, sp, #552
        ldr     x17, [x17]
        adrp     x17, a31
        add     x17, x17, #:lo12:a31
        add     x18, sp, #552
        ldr     x18, [x18]
        ldr     x11, [x18]
        //  %r606 = call i32 @testParam32(i32 %r349, i32 %r350, i32 %r351, i32 %r352, i32 %r353, i32 %r354, i32 %r355, i32 %r356, i32 %r357, i32 %r358, i32 %r359, i32 %r360, i32 %r361, i32 %r362, i32 %r363, i32 %r364, i32 %r365, i32 %r366, i32 %r367, i32 %r368, i32 %r369, i32 %r370, i32 %r371, i32 %r372, i32 %r373, i32 %r374, i32 %r375, i32 %r376, i32 %r377, i32 %r378, i32 %r379, i32 %r380)

        mov     x0, x9
        mov     x1, x10
        mov     x2, x12
        mov     x3, x13
        mov     x4, x14
        mov     x5, x15
        add     x19, sp, #160
        ldr     x19, [x19]
        mov     x6, x19
        add     x16, sp, #176
        ldr     x16, [x16]
        mov     x7, x16
        mov     x28, sp
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     sp, x28
        str     x11, [sp,#-80]
        add     x17, sp, #544
        ldr     x17, [x17]
        str     x17, [sp,#-88]
        add     x18, sp, #528
        ldr     x18, [x18]
        str     x18, [sp,#-96]
        add     x19, sp, #512
        ldr     x19, [x19]
        str     x19, [sp,#-104]
        add     x16, sp, #496
        ldr     x16, [x16]
        str     x16, [sp,#-112]
        add     x17, sp, #480
        ldr     x17, [x17]
        str     x17, [sp,#-120]
        add     x18, sp, #464
        ldr     x18, [x18]
        str     x18, [sp,#-128]
        add     x19, sp, #448
        ldr     x19, [x19]
        str     x19, [sp,#-136]
        add     x16, sp, #432
        ldr     x16, [x16]
        str     x16, [sp,#-144]
        add     x17, sp, #416
        ldr     x17, [x17]
        str     x17, [sp,#-152]
        add     x18, sp, #400
        ldr     x18, [x18]
        str     x18, [sp,#-160]
        add     x19, sp, #384
        ldr     x19, [x19]
        str     x19, [sp,#-168]
        add     x16, sp, #368
        ldr     x16, [x16]
        str     x16, [sp,#-176]
        add     x17, sp, #352
        ldr     x17, [x17]
        str     x17, [sp,#-184]
        add     x18, sp, #336
        ldr     x18, [x18]
        str     x18, [sp,#-192]
        add     x19, sp, #320
        ldr     x19, [x19]
        str     x19, [sp,#-200]
        add     x16, sp, #304
        ldr     x16, [x16]
        str     x16, [sp,#-208]
        add     x17, sp, #288
        ldr     x17, [x17]
        str     x17, [sp,#-216]
        add     x18, sp, #272
        ldr     x18, [x18]
        str     x18, [sp,#-224]
        add     x19, sp, #256
        ldr     x19, [x19]
        str     x19, [sp,#-232]
        add     x16, sp, #240
        ldr     x16, [x16]
        str     x16, [sp,#-240]
        add     x17, sp, #224
        ldr     x17, [x17]
        str     x17, [sp,#-248]
        add     x18, sp, #208
        ldr     x18, [x18]
        str     x18, [sp,#-256]
        mov     x27, #-264
        add     x19, sp, #192
        ldr     x19, [x19]
        str     x19, [sp,x27]
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
