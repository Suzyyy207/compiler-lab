.section .data
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
a1:
        .quad   1
a2:
        .quad   2
a3:
        .quad   3
a4:
        .quad   4
a5:
        .quad   5
a6:
        .quad   6
a7:
        .quad   7
a8:
        .quad   8
a9:
        .quad   9
a10:
        .quad   10
a11:
        .quad   11
a12:
        .quad   12
a13:
        .quad   13
a14:
        .quad   14
a15:
        .quad   15
a16:
        .quad   16
a17:
        .quad   1
a18:
        .quad   2
a19:
        .quad   3
a20:
        .quad   4
a21:
        .quad   5
a22:
        .quad   6
a23:
        .quad   7
a24:
        .quad   8
a25:
        .quad   9
a26:
        .quad   10
a27:
        .quad   11
a28:
        .quad   12
a29:
        .quad   13
a30:
        .quad   14
a31:
        .quad   15
a32:
        .quad   16
.section .text
.global getch
.global getint
.global putch
.global putint
.global putarray
.global _sysy_starttime
.global _sysy_stoptime
.global func
.global main
        sub     sp, sp, #1736
func:

        //bb2:

bb2:

        sub     sp, sp, #1736
        //  %r612 = add i32 0, 0

        mov     x16, #0
        sub     sp, sp, x16
        mov     x10, x0
        mov     x9, x1
        //  %r613 = add i32 0, 0

        //  %r614 = add i32 0, 0

        //  %r615 = add i32 0, 0

        //  %r616 = add i32 0, 0

        //  %r617 = add i32 0, 0

        //  %r618 = add i32 0, 0

        //  %r619 = add i32 0, 0

        //  %r620 = add i32 0, 0

        //  %r621 = add i32 0, 0

        //  %r622 = add i32 0, 0

        //  %r623 = add i32 0, 0

        //  %r624 = add i32 0, 0

        //  %r625 = add i32 0, 0

        //  %r626 = add i32 0, 0

        //  %r627 = add i32 0, 0

        //  %r628 = add i32 0, 0

        //  %r629 = add i32 0, 0

        //  %r630 = add i32 0, 0

        //  %r631 = add i32 0, 0

        //  %r632 = add i32 0, 0

        //  %r633 = add i32 0, 0

        //  %r634 = add i32 0, 0

        //  %r635 = add i32 0, 0

        //  %r636 = add i32 0, 0

        //  %r637 = add i32 0, 0

        //  %r638 = add i32 0, 0

        //  %r639 = add i32 0, 0

        //  %r640 = add i32 0, 0

        //  %r641 = add i32 0, 0

        //  %r642 = add i32 0, 0

        //  %r643 = add i32 0, 0

        //  %r644 = add i32 0, 0

        //  %r645 = add i32 0, 0

        //  %r646 = add i32 0, 0

        //  %r647 = add i32 0, 0

        //  %r648 = add i32 0, 0

        //  %r649 = add i32 0, 0

        //  %r650 = add i32 %r100, 0

        mov     x16, x10
        add     x16, sp, #0
        str     x16, [x16]
        //  %r651 = add i32 0, 0

        //  %r652 = add i32 %r102, 0

        mov     x17, x9
        add     x17, sp, #8
        str     x17, [x17]
        //  br label %bb1


        b     bb1
        //bb1:

bb1:

        //  %r653 = add i32 %r650, %r652

        add     x18, sp, #0
        ldr     x18, [x18]
        add     x19, sp, #8
        ldr     x19, [x19]
        add     x9, x18, x19
        //  %r654 = add i32 %r653, 0

        //  %r655 = call i32 @getint()

        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     getint
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        //  %r656 = add i32 %r655, 0

        mov     x16, x9
        add     x16, sp, #16
        str     x16, [x16]
        //  %r657 = call i32 @getint()

        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     getint
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        //  %r658 = add i32 %r657, 0

        mov     x17, x9
        add     x17, sp, #24
        str     x17, [x17]
        //  %r659 = call i32 @getint()

        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     getint
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        //  %r660 = add i32 %r659, 0

        mov     x18, x9
        add     x18, sp, #32
        str     x18, [x18]
        //  %r661 = call i32 @getint()

        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     getint
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        //  %r662 = add i32 %r661, 0

        mov     x19, x9
        add     x19, sp, #40
        str     x19, [x19]
        //  %r663 = add i32 1, %r656

        mov     x9, #1
        add     x16, sp, #16
        ldr     x16, [x16]
        add     x10, x9, x16
        //  %r150 = load i32, i32* @a1

        adrp     x9, a1
        add     x9, x9, #:lo12:a1
        ldr     x17, [x9]
        add     x17, sp, #48
        str     x17, [x17]
        //  %r664 = add i32 %r663, %r150

        add     x18, sp, #48
        ldr     x18, [x18]
        add     x9, x10, x18
        //  %r665 = add i32 %r664, 0

        mov     x19, x9
        add     x19, sp, #56
        str     x19, [x19]
        //  %r666 = add i32 2, %r658

        mov     x9, #2
        add     x16, sp, #24
        ldr     x16, [x16]
        add     x17, x9, x16
        add     x17, sp, #64
        str     x17, [x17]
        //  %r154 = load i32, i32* @a2

        adrp     x9, a2
        add     x9, x9, #:lo12:a2
        ldr     x18, [x9]
        add     x18, sp, #72
        str     x18, [x18]
        //  %r667 = add i32 %r666, %r154

        add     x19, sp, #64
        ldr     x19, [x19]
        add     x16, sp, #72
        ldr     x16, [x16]
        add     x9, x19, x16
        //  %r668 = add i32 %r667, 0

        mov     x17, x9
        add     x17, sp, #80
        str     x17, [x17]
        //  %r669 = add i32 3, %r660

        mov     x9, #3
        add     x18, sp, #32
        ldr     x18, [x18]
        add     x19, x9, x18
        add     x19, sp, #88
        str     x19, [x19]
        //  %r158 = load i32, i32* @a3

        adrp     x9, a3
        add     x9, x9, #:lo12:a3
        ldr     x16, [x9]
        add     x16, sp, #96
        str     x16, [x16]
        //  %r670 = add i32 %r669, %r158

        add     x17, sp, #88
        ldr     x17, [x17]
        add     x18, sp, #96
        ldr     x18, [x18]
        add     x19, x17, x18
        add     x19, sp, #104
        str     x19, [x19]
        //  %r671 = add i32 %r670, 0

        add     x17, sp, #104
        ldr     x17, [x17]
        mov     x16, x17
        add     x16, sp, #112
        str     x16, [x16]
        //  %r672 = add i32 4, %r662

        mov     x9, #4
        add     x18, sp, #40
        ldr     x18, [x18]
        add     x10, x9, x18
        //  %r162 = load i32, i32* @a4

        adrp     x9, a4
        add     x9, x9, #:lo12:a4
        ldr     x19, [x9]
        add     x19, sp, #120
        str     x19, [x19]
        //  %r673 = add i32 %r672, %r162

        add     x16, sp, #120
        ldr     x16, [x16]
        add     x17, x10, x16
        add     x17, sp, #128
        str     x17, [x17]
        //  %r674 = add i32 %r673, 0

        add     x19, sp, #128
        ldr     x19, [x19]
        mov     x18, x19
        add     x18, sp, #136
        str     x18, [x18]
        //  %r675 = add i32 1, %r665

        mov     x9, #1
        add     x16, sp, #56
        ldr     x16, [x16]
        add     x10, x9, x16
        //  %r166 = load i32, i32* @a5

        adrp     x9, a5
        add     x9, x9, #:lo12:a5
        ldr     x17, [x9]
        add     x17, sp, #144
        str     x17, [x17]
        //  %r676 = add i32 %r675, %r166

        add     x18, sp, #144
        ldr     x18, [x18]
        add     x9, x10, x18
        //  %r677 = add i32 %r676, 0

        mov     x19, x9
        add     x19, sp, #152
        str     x19, [x19]
        //  %r678 = add i32 2, %r668

        mov     x9, #2
        add     x16, sp, #80
        ldr     x16, [x16]
        add     x17, x9, x16
        add     x17, sp, #160
        str     x17, [x17]
        //  %r170 = load i32, i32* @a6

        adrp     x9, a6
        add     x9, x9, #:lo12:a6
        ldr     x18, [x9]
        add     x18, sp, #168
        str     x18, [x18]
        //  %r679 = add i32 %r678, %r170

        add     x19, sp, #160
        ldr     x19, [x19]
        add     x16, sp, #168
        ldr     x16, [x16]
        add     x9, x19, x16
        //  %r680 = add i32 %r679, 0

        mov     x17, x9
        add     x17, sp, #176
        str     x17, [x17]
        //  %r681 = add i32 3, %r671

        mov     x9, #3
        add     x18, sp, #112
        ldr     x18, [x18]
        add     x19, x9, x18
        add     x19, sp, #184
        str     x19, [x19]
        //  %r174 = load i32, i32* @a7

        adrp     x9, a7
        add     x9, x9, #:lo12:a7
        ldr     x16, [x9]
        add     x16, sp, #192
        str     x16, [x16]
        //  %r682 = add i32 %r681, %r174

        add     x17, sp, #184
        ldr     x17, [x17]
        add     x18, sp, #192
        ldr     x18, [x18]
        add     x19, x17, x18
        add     x19, sp, #200
        str     x19, [x19]
        //  %r683 = add i32 %r682, 0

        add     x17, sp, #200
        ldr     x17, [x17]
        mov     x16, x17
        add     x16, sp, #208
        str     x16, [x16]
        //  %r684 = add i32 4, %r674

        mov     x9, #4
        add     x18, sp, #136
        ldr     x18, [x18]
        add     x10, x9, x18
        //  %r178 = load i32, i32* @a8

        adrp     x9, a8
        add     x9, x9, #:lo12:a8
        ldr     x19, [x9]
        add     x19, sp, #216
        str     x19, [x19]
        //  %r685 = add i32 %r684, %r178

        add     x16, sp, #216
        ldr     x16, [x16]
        add     x17, x10, x16
        add     x17, sp, #224
        str     x17, [x17]
        //  %r686 = add i32 %r685, 0

        add     x19, sp, #224
        ldr     x19, [x19]
        mov     x18, x19
        add     x18, sp, #232
        str     x18, [x18]
        //  %r687 = add i32 1, %r677

        mov     x9, #1
        add     x16, sp, #152
        ldr     x16, [x16]
        add     x17, x9, x16
        add     x17, sp, #240
        str     x17, [x17]
        //  %r182 = load i32, i32* @a9

        adrp     x9, a9
        add     x9, x9, #:lo12:a9
        ldr     x18, [x9]
        add     x18, sp, #248
        str     x18, [x18]
        //  %r688 = add i32 %r687, %r182

        add     x19, sp, #240
        ldr     x19, [x19]
        add     x16, sp, #248
        ldr     x16, [x16]
        add     x9, x19, x16
        //  %r689 = add i32 %r688, 0

        mov     x17, x9
        add     x17, sp, #256
        str     x17, [x17]
        //  %r690 = add i32 2, %r680

        mov     x9, #2
        add     x18, sp, #176
        ldr     x18, [x18]
        add     x19, x9, x18
        add     x19, sp, #264
        str     x19, [x19]
        //  %r186 = load i32, i32* @a10

        adrp     x9, a10
        add     x9, x9, #:lo12:a10
        ldr     x16, [x9]
        add     x16, sp, #272
        str     x16, [x16]
        //  %r691 = add i32 %r690, %r186

        add     x17, sp, #264
        ldr     x17, [x17]
        add     x18, sp, #272
        ldr     x18, [x18]
        add     x19, x17, x18
        add     x19, sp, #280
        str     x19, [x19]
        //  %r692 = add i32 %r691, 0

        add     x17, sp, #280
        ldr     x17, [x17]
        mov     x16, x17
        add     x16, sp, #288
        str     x16, [x16]
        //  %r693 = add i32 3, %r683

        mov     x9, #3
        add     x18, sp, #208
        ldr     x18, [x18]
        add     x19, x9, x18
        add     x19, sp, #296
        str     x19, [x19]
        //  %r190 = load i32, i32* @a11

        adrp     x9, a11
        add     x9, x9, #:lo12:a11
        ldr     x16, [x9]
        add     x16, sp, #304
        str     x16, [x16]
        //  %r694 = add i32 %r693, %r190

        add     x17, sp, #296
        ldr     x17, [x17]
        add     x18, sp, #304
        ldr     x18, [x18]
        add     x19, x17, x18
        add     x19, sp, #312
        str     x19, [x19]
        //  %r695 = add i32 %r694, 0

        add     x17, sp, #312
        ldr     x17, [x17]
        mov     x16, x17
        add     x16, sp, #320
        str     x16, [x16]
        //  %r696 = add i32 4, %r686

        mov     x9, #4
        add     x18, sp, #232
        ldr     x18, [x18]
        add     x10, x9, x18
        //  %r194 = load i32, i32* @a12

        adrp     x9, a12
        add     x9, x9, #:lo12:a12
        ldr     x19, [x9]
        add     x19, sp, #328
        str     x19, [x19]
        //  %r697 = add i32 %r696, %r194

        add     x16, sp, #328
        ldr     x16, [x16]
        add     x17, x10, x16
        add     x17, sp, #336
        str     x17, [x17]
        //  %r698 = add i32 %r697, 0

        add     x19, sp, #336
        ldr     x19, [x19]
        mov     x18, x19
        add     x18, sp, #344
        str     x18, [x18]
        //  %r699 = add i32 1, %r689

        mov     x9, #1
        add     x16, sp, #256
        ldr     x16, [x16]
        add     x17, x9, x16
        add     x17, sp, #352
        str     x17, [x17]
        //  %r198 = load i32, i32* @a13

        adrp     x9, a13
        add     x9, x9, #:lo12:a13
        ldr     x18, [x9]
        add     x18, sp, #360
        str     x18, [x18]
        //  %r700 = add i32 %r699, %r198

        add     x19, sp, #352
        ldr     x19, [x19]
        add     x16, sp, #360
        ldr     x16, [x16]
        add     x9, x19, x16
        //  %r701 = add i32 %r700, 0

        mov     x17, x9
        add     x17, sp, #368
        str     x17, [x17]
        //  %r702 = add i32 2, %r692

        mov     x9, #2
        add     x18, sp, #288
        ldr     x18, [x18]
        add     x19, x9, x18
        add     x19, sp, #376
        str     x19, [x19]
        //  %r202 = load i32, i32* @a14

        adrp     x9, a14
        add     x9, x9, #:lo12:a14
        ldr     x16, [x9]
        add     x16, sp, #384
        str     x16, [x16]
        //  %r703 = add i32 %r702, %r202

        add     x17, sp, #376
        ldr     x17, [x17]
        add     x18, sp, #384
        ldr     x18, [x18]
        add     x19, x17, x18
        add     x19, sp, #392
        str     x19, [x19]
        //  %r704 = add i32 %r703, 0

        add     x17, sp, #392
        ldr     x17, [x17]
        mov     x16, x17
        add     x16, sp, #400
        str     x16, [x16]
        //  %r705 = add i32 3, %r695

        mov     x9, #3
        add     x18, sp, #320
        ldr     x18, [x18]
        add     x19, x9, x18
        add     x19, sp, #408
        str     x19, [x19]
        //  %r206 = load i32, i32* @a15

        adrp     x9, a15
        add     x9, x9, #:lo12:a15
        ldr     x16, [x9]
        add     x16, sp, #416
        str     x16, [x16]
        //  %r706 = add i32 %r705, %r206

        add     x17, sp, #408
        ldr     x17, [x17]
        add     x18, sp, #416
        ldr     x18, [x18]
        add     x19, x17, x18
        add     x19, sp, #424
        str     x19, [x19]
        //  %r707 = add i32 %r706, 0

        add     x17, sp, #424
        ldr     x17, [x17]
        mov     x16, x17
        add     x16, sp, #432
        str     x16, [x16]
        //  %r708 = add i32 4, %r698

        mov     x9, #4
        add     x18, sp, #344
        ldr     x18, [x18]
        add     x10, x9, x18
        //  %r210 = load i32, i32* @a16

        adrp     x9, a16
        add     x9, x9, #:lo12:a16
        ldr     x19, [x9]
        add     x19, sp, #440
        str     x19, [x19]
        //  %r709 = add i32 %r708, %r210

        add     x16, sp, #440
        ldr     x16, [x16]
        add     x17, x10, x16
        add     x17, sp, #448
        str     x17, [x17]
        //  %r710 = add i32 %r709, 0

        add     x19, sp, #448
        ldr     x19, [x19]
        mov     x18, x19
        add     x18, sp, #456
        str     x18, [x18]
        //  %r711 = add i32 1, %r701

        mov     x9, #1
        add     x16, sp, #368
        ldr     x16, [x16]
        add     x17, x9, x16
        add     x17, sp, #464
        str     x17, [x17]
        //  %r214 = load i32, i32* @a17

        adrp     x9, a17
        add     x9, x9, #:lo12:a17
        ldr     x18, [x9]
        add     x18, sp, #472
        str     x18, [x18]
        //  %r712 = add i32 %r711, %r214

        add     x19, sp, #464
        ldr     x19, [x19]
        add     x16, sp, #472
        ldr     x16, [x16]
        add     x9, x19, x16
        //  %r713 = add i32 %r712, 0

        mov     x17, x9
        add     x17, sp, #480
        str     x17, [x17]
        //  %r714 = add i32 2, %r704

        mov     x9, #2
        add     x18, sp, #400
        ldr     x18, [x18]
        add     x19, x9, x18
        add     x19, sp, #488
        str     x19, [x19]
        //  %r218 = load i32, i32* @a18

        adrp     x9, a18
        add     x9, x9, #:lo12:a18
        ldr     x16, [x9]
        add     x16, sp, #496
        str     x16, [x16]
        //  %r715 = add i32 %r714, %r218

        add     x17, sp, #488
        ldr     x17, [x17]
        add     x18, sp, #496
        ldr     x18, [x18]
        add     x19, x17, x18
        add     x19, sp, #504
        str     x19, [x19]
        //  %r716 = add i32 %r715, 0

        add     x17, sp, #504
        ldr     x17, [x17]
        mov     x16, x17
        add     x16, sp, #512
        str     x16, [x16]
        //  %r717 = add i32 3, %r707

        mov     x9, #3
        add     x18, sp, #432
        ldr     x18, [x18]
        add     x19, x9, x18
        add     x19, sp, #520
        str     x19, [x19]
        //  %r222 = load i32, i32* @a19

        adrp     x9, a19
        add     x9, x9, #:lo12:a19
        ldr     x16, [x9]
        add     x16, sp, #528
        str     x16, [x16]
        //  %r718 = add i32 %r717, %r222

        add     x17, sp, #520
        ldr     x17, [x17]
        add     x18, sp, #528
        ldr     x18, [x18]
        add     x19, x17, x18
        add     x19, sp, #536
        str     x19, [x19]
        //  %r719 = add i32 %r718, 0

        add     x17, sp, #536
        ldr     x17, [x17]
        mov     x16, x17
        add     x16, sp, #544
        str     x16, [x16]
        //  %r720 = add i32 4, %r710

        mov     x9, #4
        add     x18, sp, #456
        ldr     x18, [x18]
        add     x9, x9, x18
        //  %r226 = load i32, i32* @a20

        adrp     x10, a20
        add     x10, x10, #:lo12:a20
        ldr     x10, [x10]
        //  %r721 = add i32 %r720, %r226

        add     x19, x9, x10
        add     x19, sp, #552
        str     x19, [x19]
        //  %r722 = add i32 %r721, 0

        add     x17, sp, #552
        ldr     x17, [x17]
        mov     x16, x17
        add     x16, sp, #560
        str     x16, [x16]
        //  %r723 = add i32 1, %r713

        mov     x9, #1
        add     x18, sp, #480
        ldr     x18, [x18]
        add     x19, x9, x18
        add     x19, sp, #568
        str     x19, [x19]
        //  %r230 = load i32, i32* @a21

        adrp     x9, a21
        add     x9, x9, #:lo12:a21
        ldr     x9, [x9]
        //  %r724 = add i32 %r723, %r230

        add     x16, sp, #568
        ldr     x16, [x16]
        add     x9, x16, x9
        //  %r725 = add i32 %r724, 0

        mov     x17, x9
        add     x17, sp, #576
        str     x17, [x17]
        //  %r726 = add i32 2, %r716

        mov     x9, #2
        add     x18, sp, #512
        ldr     x18, [x18]
        add     x19, x9, x18
        add     x19, sp, #584
        str     x19, [x19]
        //  %r234 = load i32, i32* @a22

        adrp     x9, a22
        add     x9, x9, #:lo12:a22
        ldr     x9, [x9]
        //  %r727 = add i32 %r726, %r234

        add     x16, sp, #584
        ldr     x16, [x16]
        add     x17, x16, x9
        add     x17, sp, #592
        str     x17, [x17]
        //  %r728 = add i32 %r727, 0

        add     x19, sp, #592
        ldr     x19, [x19]
        mov     x18, x19
        add     x18, sp, #600
        str     x18, [x18]
        //  %r729 = add i32 3, %r719

        mov     x9, #3
        add     x16, sp, #544
        ldr     x16, [x16]
        add     x17, x9, x16
        add     x17, sp, #608
        str     x17, [x17]
        //  %r238 = load i32, i32* @a23

        adrp     x9, a23
        add     x9, x9, #:lo12:a23
        ldr     x9, [x9]
        //  %r730 = add i32 %r729, %r238

        add     x18, sp, #608
        ldr     x18, [x18]
        add     x19, x18, x9
        add     x19, sp, #9
        str     x19, [x19]
        //  %r731 = add i32 %r730, 0

        add     x17, sp, #616
        ldr     x17, [x17]
        mov     x16, x17
        add     x16, sp, #9
        str     x16, [x16]
        //  %r732 = add i32 4, %r722

        mov     x9, #4
        add     x18, sp, #560
        ldr     x18, [x18]
        add     x9, x9, x18
        //  %r242 = load i32, i32* @a24

        adrp     x10, a24
        add     x10, x10, #:lo12:a24
        ldr     x10, [x10]
        //  %r733 = add i32 %r732, %r242

        add     x19, x9, x10
        add     x19, sp, #9
        str     x19, [x19]
        //  %r734 = add i32 %r733, 0

        add     x17, sp, #632
        ldr     x17, [x17]
        mov     x16, x17
        add     x16, sp, #9
        str     x16, [x16]
        //  %r735 = add i32 1, %r725

        mov     x9, #1
        add     x18, sp, #576
        ldr     x18, [x18]
        add     x19, x9, x18
        add     x19, sp, #9
        str     x19, [x19]
        //  %r246 = load i32, i32* @a25

        adrp     x9, a25
        add     x9, x9, #:lo12:a25
        ldr     x9, [x9]
        //  %r736 = add i32 %r735, %r246

        add     x16, sp, #648
        ldr     x16, [x16]
        add     x9, x16, x9
        //  %r737 = add i32 %r736, 0

        mov     x17, x9
        add     x18, sp, #16
        ldr     x18, [x18]
        add     x17, sp, #18
        str     x17, [x17]
        //  %r738 = add i32 2, %r728

        mov     x9, #2
        add     x19, sp, #600
        ldr     x19, [x19]
        add     x16, x9, x19
        add     x16, sp, #9
        str     x16, [x16]
        //  %r250 = load i32, i32* @a26

        adrp     x9, a26
        add     x9, x9, #:lo12:a26
        ldr     x9, [x9]
        //  %r739 = add i32 %r738, %r250

        add     x17, sp, #664
        ldr     x17, [x17]
        add     x18, x17, x9
        add     x18, sp, #10
        str     x18, [x18]
        //  %r740 = add i32 %r739, 0

        add     x19, sp, #672
        ldr     x19, [x19]
        mov     x10, x19
        //  %r741 = add i32 3, %r731

        mov     x9, #3
        add     x16, sp, #624
        ldr     x16, [x16]
        add     x17, x9, x16
        add     x18, sp, #176
        ldr     x18, [x18]
        add     x17, sp, #18
        str     x17, [x17]
        //  %r254 = load i32, i32* @a27

        adrp     x9, a27
        add     x9, x9, #:lo12:a27
        ldr     x9, [x9]
        //  %r742 = add i32 %r741, %r254

        add     x19, sp, #680
        ldr     x19, [x19]
        add     x16, x19, x9
        add     x16, sp, #9
        str     x16, [x16]
        //  %r743 = add i32 %r742, 0

        add     x18, sp, #688
        ldr     x18, [x18]
        mov     x17, x18
        add     x17, sp, #10
        str     x17, [x17]
        //  %r744 = add i32 4, %r734

        mov     x9, #4
        add     x19, sp, #640
        ldr     x19, [x19]
        add     x9, x9, x19
        //  %r258 = load i32, i32* @a28

        adrp     x11, a28
        add     x11, x11, #:lo12:a28
        ldr     x11, [x11]
        //  %r745 = add i32 %r744, %r258

        add     x16, x9, x11
        add     x17, sp, #400
        ldr     x17, [x17]
        add     x16, sp, #17
        str     x16, [x16]
        //  %r746 = add i32 %r745, 0

        add     x19, sp, #704
        ldr     x19, [x19]
        mov     x18, x19
        add     x18, sp, #9
        str     x18, [x18]
        //  %r747 = add i32 1, %r737

        mov     x9, #1
        add     x16, sp, #656
        ldr     x16, [x16]
        add     x17, x9, x16
        add     x17, sp, #9
        str     x17, [x17]
        //  %r262 = load i32, i32* @a29

        adrp     x9, a29
        add     x9, x9, #:lo12:a29
        ldr     x9, [x9]
        //  %r748 = add i32 %r747, %r262

        add     x18, sp, #720
        ldr     x18, [x18]
        add     x9, x18, x9
        //  %r749 = add i32 %r748, 0

        //  %r750 = add i32 2, %r740

        mov     x9, #2
        add     x19, x9, x10
        add     x16, sp, #600
        ldr     x16, [x16]
        add     x19, sp, #16
        str     x19, [x19]
        //  %r266 = load i32, i32* @a30

        adrp     x9, a30
        add     x9, x9, #:lo12:a30
        ldr     x9, [x9]
        //  %r751 = add i32 %r750, %r266

        add     x17, sp, #728
        ldr     x17, [x17]
        add     x18, x17, x9
        add     x18, sp, #9
        str     x18, [x18]
        //  %r752 = add i32 %r751, 0

        //  %r753 = add i32 3, %r743

        mov     x9, #3
        add     x19, sp, #696
        ldr     x19, [x19]
        add     x16, x9, x19
        add     x16, sp, #9
        str     x16, [x16]
        //  %r270 = load i32, i32* @a31

        adrp     x9, a31
        add     x9, x9, #:lo12:a31
        ldr     x9, [x9]
        //  %r754 = add i32 %r753, %r270

        add     x17, sp, #744
        ldr     x17, [x17]
        add     x18, x17, x9
        add     x18, sp, #9
        str     x18, [x18]
        //  %r755 = add i32 %r754, 0

        //  %r756 = add i32 4, %r746

        mov     x9, #4
        add     x19, sp, #712
        ldr     x19, [x19]
        add     x11, x9, x19
        //  %r274 = load i32, i32* @a32

        adrp     x9, a32
        add     x9, x9, #:lo12:a32
        ldr     x16, [x9]
        add     x16, sp, #9
        str     x16, [x16]
        //  %r757 = add i32 %r756, %r274

        add     x17, sp, #760
        ldr     x17, [x17]
        add     x18, x11, x17
        add     x18, sp, #10
        str     x18, [x18]
        //  %r758 = add i32 %r757, 0

        //  %r759 = sub i32 %r650, %r652

        add     x19, sp, #0
        ldr     x19, [x19]
        add     x16, sp, #8
        ldr     x16, [x16]
        sub     x17, x19, x16
        add     x18, sp, #784
        ldr     x18, [x18]
        add     x17, sp, #18
        str     x17, [x17]
        //  %r760 = add i32 %r759, 10

        mov     x9, #10
        add     x19, sp, #776
        ldr     x19, [x19]
        add     x9, x19, x9
        //  %r761 = add i32 %r760, 0

        mov     x16, x9
        add     x16, sp, #10
        str     x16, [x16]
        //  %r762 = add i32 1, %r737

        mov     x9, #1
        add     x17, sp, #656
        ldr     x17, [x17]
        add     x18, x9, x17
        add     x19, sp, #808
        ldr     x19, [x19]
        add     x18, sp, #19
        str     x18, [x18]
        //  %r282 = load i32, i32* @a29

        adrp     x9, a29
        add     x9, x9, #:lo12:a29
        ldr     x9, [x9]
        //  %r763 = add i32 %r762, %r282

        add     x16, sp, #800
        ldr     x16, [x16]
        add     x17, x16, x9
        add     x17, sp, #10
        str     x17, [x17]
        //  %r764 = add i32 %r763, 0

        add     x19, sp, #816
        ldr     x19, [x19]
        mov     x18, x19
        add     x16, sp, #832
        ldr     x16, [x16]
        add     x18, sp, #16
        str     x18, [x18]
        //  %r765 = add i32 2, %r740

        mov     x9, #2
        add     x17, x9, x10
        add     x17, sp, #9
        str     x17, [x17]
        //  %r286 = load i32, i32* @a30

        adrp     x9, a30
        add     x9, x9, #:lo12:a30
        ldr     x9, [x9]
        //  %r766 = add i32 %r765, %r286

        add     x18, sp, #840
        ldr     x18, [x18]
        add     x9, x18, x9
        //  %r767 = add i32 %r766, 0

        mov     x19, x9
        add     x19, sp, #9
        str     x19, [x19]
        //  %r768 = add i32 3, %r743

        mov     x9, #3
        add     x16, sp, #696
        ldr     x16, [x16]
        add     x10, x9, x16
        //  %r290 = load i32, i32* @a31

        adrp     x9, a31
        add     x9, x9, #:lo12:a31
        ldr     x17, [x9]
        add     x17, sp, #9
        str     x17, [x17]
        //  %r769 = add i32 %r768, %r290

        add     x18, sp, #856
        ldr     x18, [x18]
        add     x9, x10, x18
        //  %r770 = add i32 %r769, 0

        mov     x19, x9
        add     x19, sp, #9
        str     x19, [x19]
        //  %r771 = add i32 4, %r746

        mov     x9, #4
        add     x16, sp, #712
        ldr     x16, [x16]
        add     x10, x9, x16
        //  %r294 = load i32, i32* @a32

        adrp     x9, a32
        add     x9, x9, #:lo12:a32
        ldr     x17, [x9]
        add     x17, sp, #15
        str     x17, [x17]
        //  %r772 = add i32 %r771, %r294

        add     x18, sp, #872
        ldr     x18, [x18]
        add     x9, x10, x18
        //  %r773 = add i32 %r772, 0

        mov     x19, x9
        add     x19, sp, #9
        str     x19, [x19]
        //  %r774 = add i32 1, %r725

        mov     x9, #1
        add     x16, sp, #576
        ldr     x16, [x16]
        add     x10, x9, x16
        //  %r298 = load i32, i32* @a25

        adrp     x9, a25
        add     x9, x9, #:lo12:a25
        ldr     x17, [x9]
        add     x17, sp, #9
        str     x17, [x17]
        //  %r775 = add i32 %r774, %r298

        add     x18, sp, #888
        ldr     x18, [x18]
        add     x9, x10, x18
        //  %r776 = add i32 %r775, 0

        mov     x19, x9
        add     x19, sp, #9
        str     x19, [x19]
        //  %r777 = add i32 2, %r728

        mov     x9, #2
        add     x16, sp, #600
        ldr     x16, [x16]
        add     x10, x9, x16
        //  %r302 = load i32, i32* @a26

        adrp     x9, a26
        add     x9, x9, #:lo12:a26
        ldr     x17, [x9]
        add     x17, sp, #9
        str     x17, [x17]
        //  %r778 = add i32 %r777, %r302

        add     x18, sp, #896
        ldr     x18, [x18]
        add     x9, x10, x18
        //  %r779 = add i32 %r778, 0

        mov     x19, x9
        add     x19, sp, #9
        str     x19, [x19]
        //  %r780 = add i32 3, %r731

        mov     x9, #3
        add     x16, sp, #624
        ldr     x16, [x16]
        add     x10, x9, x16
        //  %r306 = load i32, i32* @a27

        adrp     x9, a27
        add     x9, x9, #:lo12:a27
        ldr     x17, [x9]
        add     x17, sp, #9
        str     x17, [x17]
        //  %r781 = add i32 %r780, %r306

        add     x18, sp, #912
        ldr     x18, [x18]
        add     x9, x10, x18
        //  %r782 = add i32 %r781, 0

        mov     x19, x9
        add     x19, sp, #9
        str     x19, [x19]
        //  %r783 = add i32 4, %r734

        mov     x9, #4
        add     x16, sp, #640
        ldr     x16, [x16]
        add     x10, x9, x16
        //  %r310 = load i32, i32* @a28

        adrp     x9, a28
        add     x9, x9, #:lo12:a28
        ldr     x17, [x9]
        add     x17, sp, #9
        str     x17, [x17]
        //  %r784 = add i32 %r783, %r310

        add     x18, sp, #928
        ldr     x18, [x18]
        add     x9, x10, x18
        //  %r785 = add i32 %r784, 0

        mov     x19, x9
        add     x19, sp, #9
        str     x19, [x19]
        //  %r786 = add i32 1, %r713

        mov     x9, #1
        add     x16, sp, #480
        ldr     x16, [x16]
        add     x10, x9, x16
        //  %r314 = load i32, i32* @a21

        adrp     x9, a21
        add     x9, x9, #:lo12:a21
        ldr     x17, [x9]
        add     x17, sp, #944
        str     x17, [x17]
        //  %r787 = add i32 %r786, %r314

        add     x18, sp, #944
        ldr     x18, [x18]
        add     x9, x10, x18
        //  %r788 = add i32 %r787, 0

        mov     x19, x9
        add     x19, sp, #9
        str     x19, [x19]
        //  %r789 = add i32 2, %r716

        mov     x9, #2
        add     x16, sp, #512
        ldr     x16, [x16]
        add     x10, x9, x16
        //  %r318 = load i32, i32* @a22

        adrp     x9, a22
        add     x9, x9, #:lo12:a22
        ldr     x17, [x9]
        add     x17, sp, #9
        str     x17, [x17]
        //  %r790 = add i32 %r789, %r318

        add     x18, sp, #960
        ldr     x18, [x18]
        add     x9, x10, x18
        //  %r791 = add i32 %r790, 0

        mov     x19, x9
        add     x19, sp, #9
        str     x19, [x19]
        //  %r792 = add i32 3, %r719

        mov     x9, #3
        add     x16, sp, #544
        ldr     x16, [x16]
        add     x10, x9, x16
        //  %r322 = load i32, i32* @a23

        adrp     x9, a23
        add     x9, x9, #:lo12:a23
        ldr     x17, [x9]
        add     x17, sp, #9
        str     x17, [x17]
        //  %r793 = add i32 %r792, %r322

        add     x18, sp, #976
        ldr     x18, [x18]
        add     x9, x10, x18
        //  %r794 = add i32 %r793, 0

        mov     x19, x9
        add     x19, sp, #9
        str     x19, [x19]
        //  %r795 = add i32 4, %r722

        mov     x9, #4
        add     x16, sp, #560
        ldr     x16, [x16]
        add     x17, x9, x16
        add     x17, sp, #9
        str     x17, [x17]
        //  %r326 = load i32, i32* @a24

        adrp     x9, a24
        add     x9, x9, #:lo12:a24
        ldr     x18, [x9]
        add     x18, sp, #9
        str     x18, [x18]
        //  %r796 = add i32 %r795, %r326

        add     x19, sp, #992
        ldr     x19, [x19]
        add     x16, sp, #1000
        ldr     x16, [x16]
        add     x9, x19, x16
        //  %r797 = add i32 %r796, 0

        mov     x17, x9
        add     x17, sp, #9
        str     x17, [x17]
        //  %r798 = add i32 1, %r701

        mov     x18, #1
        add     x18, sp, #9
        str     x18, [x18]
        add     x19, sp, #368
        ldr     x19, [x19]
        add     x10, x18, x19
        //  %r330 = load i32, i32* @a17

        adrp     x9, a17
        add     x9, x9, #:lo12:a17
        ldr     x16, [x9]
        add     x16, sp, #9
        str     x16, [x16]
        //  %r799 = add i32 %r798, %r330

        add     x17, sp, #1024
        ldr     x17, [x17]
        add     x18, x10, x17
        add     x18, sp, #9
        str     x18, [x18]
        //  %r800 = add i32 %r799, 0

        add     x16, sp, #1032
        ldr     x16, [x16]
        mov     x19, x16
        add     x19, sp, #9
        str     x19, [x19]
        //  %r801 = add i32 2, %r704

        mov     x17, #2
        add     x18, sp, #1040
        ldr     x18, [x18]
        add     x17, sp, #18
        str     x17, [x17]
        add     x19, sp, #400
        ldr     x19, [x19]
        add     x10, x17, x19
        //  %r334 = load i32, i32* @a18

        adrp     x9, a18
        add     x9, x9, #:lo12:a18
        ldr     x16, [x9]
        add     x17, sp, #1056
        ldr     x17, [x17]
        add     x16, sp, #17
        str     x16, [x16]
        //  %r802 = add i32 %r801, %r334

        add     x18, sp, #1048
        ldr     x18, [x18]
        add     x9, x10, x18
        //  %r803 = add i32 %r802, 0

        mov     x19, x9
        add     x16, sp, #1072
        ldr     x16, [x16]
        add     x19, sp, #16
        str     x19, [x19]
        //  %r804 = add i32 3, %r707

        mov     x17, #3
        add     x18, sp, #1088
        ldr     x18, [x18]
        add     x17, sp, #18
        str     x17, [x17]
        add     x19, sp, #432
        ldr     x19, [x19]
        add     x10, x17, x19
        //  %r338 = load i32, i32* @a19

        adrp     x9, a19
        add     x9, x9, #:lo12:a19
        ldr     x16, [x9]
        add     x16, sp, #9
        str     x16, [x16]
        //  %r805 = add i32 %r804, %r338

        add     x17, sp, #1096
        ldr     x17, [x17]
        add     x9, x10, x17
        //  %r806 = add i32 %r805, 0

        mov     x18, x9
        add     x18, sp, #9
        str     x18, [x18]
        //  %r807 = add i32 4, %r710

        mov     x19, #4
        add     x19, sp, #9
        str     x19, [x19]
        add     x16, sp, #456
        ldr     x16, [x16]
        add     x17, x19, x16
        add     x17, sp, #1120
        str     x17, [x17]
        //  %r342 = load i32, i32* @a20

        adrp     x9, a20
        add     x9, x9, #:lo12:a20
        ldr     x18, [x9]
        add     x18, sp, #1128
        str     x18, [x18]
        //  %r808 = add i32 %r807, %r342

        add     x19, sp, #1120
        ldr     x19, [x19]
        add     x16, sp, #1128
        ldr     x16, [x16]
        add     x9, x19, x16
        //  %r809 = add i32 %r808, 0

        mov     x17, x9
        add     x17, sp, #1136
        str     x17, [x17]
        //  %r810 = add i32 1, %r689

        mov     x18, #1
        add     x18, sp, #1144
        str     x18, [x18]
        add     x19, sp, #256
        ldr     x19, [x19]
        add     x10, x18, x19
        //  %r346 = load i32, i32* @a13

        adrp     x9, a13
        add     x9, x9, #:lo12:a13
        ldr     x16, [x9]
        add     x16, sp, #1152
        str     x16, [x16]
        //  %r811 = add i32 %r810, %r346

        add     x17, sp, #1152
        ldr     x17, [x17]
        add     x18, x10, x17
        add     x18, sp, #1160
        str     x18, [x18]
        //  %r812 = add i32 %r811, 0

        add     x16, sp, #1160
        ldr     x16, [x16]
        mov     x19, x16
        add     x19, sp, #1168
        str     x19, [x19]
        //  %r813 = add i32 2, %r692

        mov     x17, #2
        add     x18, sp, #1176
        ldr     x18, [x18]
        add     x17, sp, #18
        str     x17, [x17]
        add     x19, sp, #288
        ldr     x19, [x19]
        add     x10, x17, x19
        //  %r350 = load i32, i32* @a14

        adrp     x9, a14
        add     x9, x9, #:lo12:a14
        ldr     x16, [x9]
        add     x16, sp, #1184
        str     x16, [x16]
        //  %r814 = add i32 %r813, %r350

        add     x17, sp, #1184
        ldr     x17, [x17]
        add     x9, x10, x17
        //  %r815 = add i32 %r814, 0

        mov     x18, x9
        add     x18, sp, #1192
        str     x18, [x18]
        //  %r816 = add i32 3, %r695

        mov     x19, #3
        add     x19, sp, #1200
        str     x19, [x19]
        add     x16, sp, #320
        ldr     x16, [x16]
        add     x10, x19, x16
        //  %r354 = load i32, i32* @a15

        adrp     x9, a15
        add     x9, x9, #:lo12:a15
        ldr     x17, [x9]
        add     x17, sp, #1208
        str     x17, [x17]
        //  %r817 = add i32 %r816, %r354

        add     x18, sp, #1208
        ldr     x18, [x18]
        add     x9, x10, x18
        //  %r818 = add i32 %r817, 0

        mov     x19, x9
        add     x19, sp, #1216
        str     x19, [x19]
        //  %r819 = add i32 4, %r698

        mov     x16, #4
        add     x16, sp, #1224
        str     x16, [x16]
        add     x17, sp, #344
        ldr     x17, [x17]
        add     x10, x16, x17
        //  %r358 = load i32, i32* @a16

        adrp     x9, a16
        add     x9, x9, #:lo12:a16
        ldr     x18, [x9]
        add     x18, sp, #1232
        str     x18, [x18]
        //  %r820 = add i32 %r819, %r358

        add     x19, sp, #1232
        ldr     x19, [x19]
        add     x9, x10, x19
        //  %r821 = add i32 %r820, 0

        mov     x16, x9
        add     x16, sp, #1240
        str     x16, [x16]
        //  %r822 = add i32 1, %r677

        mov     x17, #1
        add     x17, sp, #1248
        str     x17, [x17]
        add     x18, sp, #152
        ldr     x18, [x18]
        add     x10, x17, x18
        //  %r362 = load i32, i32* @a9

        adrp     x9, a9
        add     x9, x9, #:lo12:a9
        ldr     x19, [x9]
        add     x19, sp, #1256
        str     x19, [x19]
        //  %r823 = add i32 %r822, %r362

        add     x16, sp, #1256
        ldr     x16, [x16]
        add     x17, x10, x16
        add     x17, sp, #1264
        str     x17, [x17]
        //  %r824 = add i32 %r823, 0

        add     x19, sp, #1264
        ldr     x19, [x19]
        mov     x18, x19
        add     x18, sp, #9
        str     x18, [x18]
        //  %r825 = add i32 2, %r680

        mov     x16, #2
        add     x16, sp, #1176
        str     x16, [x16]
        add     x17, sp, #176
        ldr     x17, [x17]
        add     x10, x16, x17
        //  %r366 = load i32, i32* @a10

        adrp     x9, a10
        add     x9, x9, #:lo12:a10
        ldr     x18, [x9]
        add     x18, sp, #1272
        str     x18, [x18]
        //  %r826 = add i32 %r825, %r366

        add     x19, sp, #1272
        ldr     x19, [x19]
        add     x9, x10, x19
        //  %r827 = add i32 %r826, 0

        mov     x16, x9
        add     x16, sp, #1280
        str     x16, [x16]
        //  %r828 = add i32 3, %r683

        mov     x17, #3
        add     x17, sp, #1288
        str     x17, [x17]
        add     x18, sp, #208
        ldr     x18, [x18]
        add     x10, x17, x18
        //  %r370 = load i32, i32* @a11

        adrp     x9, a11
        add     x9, x9, #:lo12:a11
        ldr     x19, [x9]
        add     x19, sp, #1296
        str     x19, [x19]
        //  %r829 = add i32 %r828, %r370

        add     x16, sp, #1296
        ldr     x16, [x16]
        add     x9, x10, x16
        //  %r830 = add i32 %r829, 0

        mov     x17, x9
        add     x17, sp, #1304
        str     x17, [x17]
        //  %r831 = add i32 4, %r686

        mov     x18, #4
        add     x18, sp, #1312
        str     x18, [x18]
        add     x19, sp, #232
        ldr     x19, [x19]
        add     x16, x18, x19
        add     x16, sp, #1320
        str     x16, [x16]
        //  %r374 = load i32, i32* @a12

        adrp     x9, a12
        add     x9, x9, #:lo12:a12
        ldr     x17, [x9]
        add     x17, sp, #1328
        str     x17, [x17]
        //  %r832 = add i32 %r831, %r374

        add     x18, sp, #1320
        ldr     x18, [x18]
        add     x19, sp, #1328
        ldr     x19, [x19]
        add     x9, x18, x19
        //  %r833 = add i32 %r832, 0

        mov     x16, x9
        add     x16, sp, #1336
        str     x16, [x16]
        //  %r834 = add i32 1, %r665

        mov     x17, #1
        add     x17, sp, #1344
        str     x17, [x17]
        add     x18, sp, #56
        ldr     x18, [x18]
        add     x9, x17, x18
        //  %r378 = load i32, i32* @a5

        add     x19, sp, #1352
        ldr     x19, [x19]
        adrp     x19, a5
        add     x19, x19, #:lo12:a5
        add     x17, sp, #1352
        ldr     x17, [x17]
        ldr     x16, [x17]
        add     x16, sp, #1360
        str     x16, [x16]
        //  %r835 = add i32 %r834, %r378

        add     x18, sp, #1360
        ldr     x18, [x18]
        add     x19, x9, x18
        add     x19, sp, #1368
        str     x19, [x19]
        //  %r836 = add i32 %r835, 0

        add     x16, sp, #1368
        ldr     x16, [x16]
        mov     x14, x16
        //  %r837 = add i32 2, %r668

        mov     x17, #2
        add     x18, sp, #1376
        ldr     x18, [x18]
        add     x17, sp, #18
        str     x17, [x17]
        add     x19, sp, #80
        ldr     x19, [x19]
        add     x9, x17, x19
        //  %r382 = load i32, i32* @a6

        add     x16, sp, #1384
        ldr     x16, [x16]
        adrp     x16, a6
        add     x16, x16, #:lo12:a6
        add     x18, sp, #1384
        ldr     x18, [x18]
        ldr     x17, [x18]
        add     x17, sp, #1392
        str     x17, [x17]
        //  %r838 = add i32 %r837, %r382

        add     x19, sp, #1392
        ldr     x19, [x19]
        add     x9, x9, x19
        //  %r839 = add i32 %r838, 0

        mov     x16, x9
        add     x16, sp, #1400
        str     x16, [x16]
        //  %r840 = add i32 3, %r671

        mov     x17, #3
        add     x17, sp, #1408
        str     x17, [x17]
        add     x18, sp, #112
        ldr     x18, [x18]
        add     x9, x17, x18
        //  %r386 = load i32, i32* @a7

        add     x19, sp, #1416
        ldr     x19, [x19]
        adrp     x19, a7
        add     x19, x19, #:lo12:a7
        add     x17, sp, #1416
        ldr     x17, [x17]
        ldr     x16, [x17]
        add     x16, sp, #1424
        str     x16, [x16]
        //  %r841 = add i32 %r840, %r386

        add     x18, sp, #1424
        ldr     x18, [x18]
        add     x9, x9, x18
        //  %r842 = add i32 %r841, 0

        mov     x13, x9
        //  %r843 = add i32 4, %r674

        mov     x19, #4
        add     x19, sp, #1432
        str     x19, [x19]
        add     x16, sp, #136
        ldr     x16, [x16]
        add     x17, x19, x16
        add     x17, sp, #1440
        str     x17, [x17]
        //  %r390 = load i32, i32* @a8

        add     x18, sp, #1448
        ldr     x18, [x18]
        adrp     x18, a8
        add     x18, x18, #:lo12:a8
        add     x16, sp, #1448
        ldr     x16, [x16]
        ldr     x19, [x16]
        add     x19, sp, #1456
        str     x19, [x19]
        //  %r844 = add i32 %r843, %r390

        add     x17, sp, #1440
        ldr     x17, [x17]
        add     x18, sp, #1456
        ldr     x18, [x18]
        add     x9, x17, x18
        //  %r845 = add i32 %r844, 0

        mov     x12, x9
        //  %r846 = add i32 1, %r656

        mov     x19, #1
        add     x19, sp, #1464
        str     x19, [x19]
        add     x16, sp, #16
        ldr     x16, [x16]
        add     x9, x19, x16
        //  %r394 = load i32, i32* @a1

        add     x17, sp, #1472
        ldr     x17, [x17]
        adrp     x17, a1
        add     x17, x17, #:lo12:a1
        add     x19, sp, #1472
        ldr     x19, [x19]
        ldr     x18, [x19]
        add     x18, sp, #1480
        str     x18, [x18]
        //  %r847 = add i32 %r846, %r394

        add     x16, sp, #1480
        ldr     x16, [x16]
        add     x17, x9, x16
        add     x17, sp, #1488
        str     x17, [x17]
        //  %r848 = add i32 %r847, 0

        //  %r849 = add i32 2, %r658

        mov     x18, #2
        add     x18, sp, #1376
        str     x18, [x18]
        add     x19, sp, #24
        ldr     x19, [x19]
        add     x9, x18, x19
        //  %r398 = load i32, i32* @a2

        add     x16, sp, #1496
        ldr     x16, [x16]
        adrp     x16, a2
        add     x16, x16, #:lo12:a2
        add     x18, sp, #1496
        ldr     x18, [x18]
        ldr     x17, [x18]
        add     x17, sp, #1504
        str     x17, [x17]
        //  %r850 = add i32 %r849, %r398

        add     x19, sp, #1504
        ldr     x19, [x19]
        add     x9, x9, x19
        //  %r851 = add i32 %r850, 0

        //  %r852 = add i32 3, %r660

        mov     x16, #3
        add     x16, sp, #1512
        str     x16, [x16]
        add     x17, sp, #32
        ldr     x17, [x17]
        add     x9, x16, x17
        //  %r402 = load i32, i32* @a3

        add     x18, sp, #1520
        ldr     x18, [x18]
        adrp     x18, a3
        add     x18, x18, #:lo12:a3
        add     x16, sp, #1520
        ldr     x16, [x16]
        ldr     x19, [x16]
        add     x19, sp, #1528
        str     x19, [x19]
        //  %r853 = add i32 %r852, %r402

        add     x17, sp, #1528
        ldr     x17, [x17]
        add     x9, x9, x17
        //  %r854 = add i32 %r853, 0

        //  %r855 = add i32 4, %r662

        mov     x18, #4
        add     x18, sp, #1536
        str     x18, [x18]
        add     x19, sp, #40
        ldr     x19, [x19]
        add     x16, x18, x19
        add     x16, sp, #1544
        str     x16, [x16]
        //  %r406 = load i32, i32* @a4

        add     x17, sp, #1552
        ldr     x17, [x17]
        adrp     x17, a4
        add     x17, x17, #:lo12:a4
        add     x19, sp, #1552
        ldr     x19, [x19]
        ldr     x18, [x19]
        add     x18, sp, #1560
        str     x18, [x18]
        //  %r856 = add i32 %r855, %r406

        add     x16, sp, #1544
        ldr     x16, [x16]
        add     x17, sp, #1560
        ldr     x17, [x17]
        add     x9, x16, x17
        //  %r857 = add i32 %r856, 0

        //  %r858 = add i32 1, %r656

        mov     x18, #1
        add     x18, sp, #1568
        str     x18, [x18]
        add     x19, sp, #16
        ldr     x19, [x19]
        add     x9, x18, x19
        //  %r410 = load i32, i32* @a1

        add     x16, sp, #1576
        ldr     x16, [x16]
        adrp     x16, a1
        add     x16, x16, #:lo12:a1
        add     x18, sp, #1576
        ldr     x18, [x18]
        ldr     x17, [x18]
        add     x17, sp, #1584
        str     x17, [x17]
        //  %r859 = add i32 %r858, %r410

        add     x19, sp, #1584
        ldr     x19, [x19]
        add     x16, x9, x19
        add     x16, sp, #1592
        str     x16, [x16]
        //  %r860 = add i32 %r859, 0

        add     x17, sp, #1592
        ldr     x17, [x17]
        mov     x11, x17
        //  %r861 = add i32 2, %r658

        mov     x18, #2
        add     x18, sp, #10
        str     x18, [x18]
        add     x19, sp, #24
        ldr     x19, [x19]
        add     x9, x18, x19
        //  %r414 = load i32, i32* @a2

        add     x16, sp, #1600
        ldr     x16, [x16]
        adrp     x16, a2
        add     x16, x16, #:lo12:a2
        add     x18, sp, #1600
        ldr     x18, [x18]
        ldr     x17, [x18]
        add     x17, sp, #1608
        str     x17, [x17]
        //  %r862 = add i32 %r861, %r414

        add     x19, sp, #1608
        ldr     x19, [x19]
        add     x9, x9, x19
        //  %r863 = add i32 %r862, 0

        mov     x16, x9
        add     x16, sp, #1616
        str     x16, [x16]
        //  %r864 = add i32 3, %r660

        mov     x17, #3
        add     x17, sp, #1624
        str     x17, [x17]
        add     x18, sp, #32
        ldr     x18, [x18]
        add     x9, x17, x18
        //  %r418 = load i32, i32* @a3

        add     x19, sp, #1632
        ldr     x19, [x19]
        adrp     x19, a3
        add     x19, x19, #:lo12:a3
        add     x17, sp, #1632
        ldr     x17, [x17]
        ldr     x16, [x17]
        add     x16, sp, #1640
        str     x16, [x16]
        //  %r865 = add i32 %r864, %r418

        add     x18, sp, #1640
        ldr     x18, [x18]
        add     x9, x9, x18
        //  %r866 = add i32 %r865, 0

        mov     x10, x9
        //  %r867 = add i32 4, %r662

        mov     x19, #4
        add     x19, sp, #1648
        str     x19, [x19]
        add     x16, sp, #40
        ldr     x16, [x16]
        add     x17, x19, x16
        add     x17, sp, #1656
        str     x17, [x17]
        //  %r422 = load i32, i32* @a4

        add     x18, sp, #1664
        ldr     x18, [x18]
        adrp     x18, a4
        add     x18, x18, #:lo12:a4
        add     x16, sp, #1664
        ldr     x16, [x16]
        ldr     x19, [x16]
        add     x19, sp, #1672
        str     x19, [x19]
        //  %r868 = add i32 %r867, %r422

        add     x17, sp, #1656
        ldr     x17, [x17]
        add     x18, sp, #1672
        ldr     x18, [x18]
        add     x9, x17, x18
        //  %r869 = add i32 %r868, 0

        mov     x9, x9
        //  %r870 = add i32 %r761, %r656

        add     x19, sp, #792
        ldr     x19, [x19]
        add     x16, sp, #16
        ldr     x16, [x16]
        add     x15, x19, x16
        //  %r871 = add i32 %r870, %r658

        add     x17, sp, #24
        ldr     x17, [x17]
        add     x18, x15, x17
        add     x18, sp, #1680
        str     x18, [x18]
        //  %r872 = add i32 %r871, %r660

        add     x19, sp, #1680
        ldr     x19, [x19]
        add     x16, sp, #32
        ldr     x16, [x16]
        add     x15, x19, x16
        //  %r873 = add i32 %r872, %r662

        add     x17, sp, #40
        ldr     x17, [x17]
        add     x15, x15, x17
        //  %r874 = sub i32 %r873, %r860

        sub     x11, x15, x11
        //  %r875 = sub i32 %r874, %r863

        add     x18, sp, #1616
        ldr     x18, [x18]
        sub     x19, x11, x18
        add     x19, sp, #1688
        str     x19, [x19]
        //  %r876 = sub i32 %r875, %r866

        add     x16, sp, #1688
        ldr     x16, [x16]
        sub     x10, x16, x10
        //  %r877 = sub i32 %r876, %r869

        sub     x9, x10, x9
        //  %r878 = add i32 %r877, %r836

        add     x9, x9, x14
        //  %r879 = add i32 %r878, %r839

        add     x17, sp, #1400
        ldr     x17, [x17]
        add     x18, x9, x17
        add     x18, sp, #1696
        str     x18, [x18]
        //  %r880 = add i32 %r879, %r842

        add     x19, sp, #1696
        ldr     x19, [x19]
        add     x9, x19, x13
        //  %r881 = add i32 %r880, %r845

        add     x9, x9, x12
        //  %r882 = sub i32 %r881, %r824

        add     x16, sp, #832
        ldr     x16, [x16]
        sub     x9, x9, x16
        //  %r883 = sub i32 %r882, %r827

        add     x17, sp, #1280
        ldr     x17, [x17]
        sub     x18, x9, x17
        add     x18, sp, #1704
        str     x18, [x18]
        //  %r884 = sub i32 %r883, %r830

        add     x19, sp, #1704
        ldr     x19, [x19]
        add     x16, sp, #1304
        ldr     x16, [x16]
        sub     x9, x19, x16
        //  %r885 = sub i32 %r884, %r833

        add     x17, sp, #1336
        ldr     x17, [x17]
        sub     x9, x9, x17
        //  %r886 = add i32 %r885, %r812

        add     x18, sp, #1168
        ldr     x18, [x18]
        add     x9, x9, x18
        //  %r887 = add i32 %r886, %r815

        add     x19, sp, #1192
        ldr     x19, [x19]
        add     x16, x9, x19
        add     x16, sp, #1712
        str     x16, [x16]
        //  %r888 = add i32 %r887, %r818

        add     x17, sp, #1712
        ldr     x17, [x17]
        add     x18, sp, #1216
        ldr     x18, [x18]
        add     x9, x17, x18
        //  %r889 = add i32 %r888, %r821

        add     x19, sp, #1240
        ldr     x19, [x19]
        add     x9, x9, x19
        //  %r890 = sub i32 %r889, %r800

        add     x16, sp, #808
        ldr     x16, [x16]
        sub     x9, x9, x16
        //  %r891 = sub i32 %r890, %r803

        add     x17, sp, #1064
        ldr     x17, [x17]
        sub     x18, x9, x17
        add     x18, sp, #1720
        str     x18, [x18]
        //  %r892 = sub i32 %r891, %r806

        add     x19, sp, #1720
        ldr     x19, [x19]
        add     x16, sp, #1104
        ldr     x16, [x16]
        sub     x9, x19, x16
        //  %r893 = sub i32 %r892, %r809

        add     x17, sp, #1136
        ldr     x17, [x17]
        sub     x9, x9, x17
        //  %r894 = add i32 %r893, %r788

        add     x18, sp, #952
        ldr     x18, [x18]
        add     x9, x9, x18
        //  %r895 = add i32 %r894, %r791

        add     x19, sp, #968
        ldr     x19, [x19]
        add     x16, x9, x19
        add     x16, sp, #1728
        str     x16, [x16]
        //  %r896 = add i32 %r895, %r794

        add     x17, sp, #1728
        ldr     x17, [x17]
        add     x18, sp, #984
        ldr     x18, [x18]
        add     x9, x17, x18
        //  %r897 = add i32 %r896, %r797

        add     x19, sp, #1008
        ldr     x19, [x19]
        add     x9, x9, x19
        //  %r898 = sub i32 %r897, %r776

        add     x16, sp, #784
        ldr     x16, [x16]
        sub     x9, x9, x16
        //  %r899 = sub i32 %r898, %r779

        add     x17, sp, #904
        ldr     x17, [x17]
        sub     x9, x9, x17
        //  %r900 = sub i32 %r899, %r782

        add     x18, sp, #920
        ldr     x18, [x18]
        sub     x9, x9, x18
        //  %r901 = sub i32 %r900, %r785

        add     x19, sp, #936
        ldr     x19, [x19]
        sub     x9, x9, x19
        //  %r902 = add i32 %r901, %r764

        add     x16, sp, #824
        ldr     x16, [x16]
        add     x9, x9, x16
        //  %r903 = add i32 %r902, %r767

        add     x17, sp, #848
        ldr     x17, [x17]
        add     x9, x9, x17
        //  %r904 = add i32 %r903, %r770

        add     x18, sp, #864
        ldr     x18, [x18]
        add     x9, x9, x18
        //  %r905 = add i32 %r904, %r773

        add     x19, sp, #880
        ldr     x19, [x19]
        add     x9, x9, x19
        //  %r497 = load i32, i32* @a1

        adrp     x10, a1
        add     x10, x10, #:lo12:a1
        ldr     x10, [x10]
        //  %r906 = add i32 %r905, %r497

        add     x9, x9, x10
        //  %r499 = load i32, i32* @a2

        adrp     x10, a2
        add     x10, x10, #:lo12:a2
        ldr     x10, [x10]
        //  %r907 = sub i32 %r906, %r499

        sub     x9, x9, x10
        //  %r501 = load i32, i32* @a3

        adrp     x10, a3
        add     x10, x10, #:lo12:a3
        ldr     x10, [x10]
        //  %r908 = add i32 %r907, %r501

        add     x9, x9, x10
        //  %r503 = load i32, i32* @a4

        adrp     x10, a4
        add     x10, x10, #:lo12:a4
        ldr     x10, [x10]
        //  %r909 = sub i32 %r908, %r503

        sub     x9, x9, x10
        //  %r505 = load i32, i32* @a5

        adrp     x10, a5
        add     x10, x10, #:lo12:a5
        ldr     x10, [x10]
        //  %r910 = add i32 %r909, %r505

        add     x9, x9, x10
        //  %r507 = load i32, i32* @a6

        adrp     x10, a6
        add     x10, x10, #:lo12:a6
        ldr     x10, [x10]
        //  %r911 = sub i32 %r910, %r507

        sub     x10, x9, x10
        //  %r509 = load i32, i32* @a7

        adrp     x9, a7
        add     x9, x9, #:lo12:a7
        ldr     x9, [x9]
        //  %r912 = add i32 %r911, %r509

        add     x9, x10, x9
        //  %r511 = load i32, i32* @a8

        adrp     x10, a8
        add     x10, x10, #:lo12:a8
        ldr     x10, [x10]
        //  %r913 = sub i32 %r912, %r511

        sub     x9, x9, x10
        //  %r513 = load i32, i32* @a9

        adrp     x10, a9
        add     x10, x10, #:lo12:a9
        ldr     x10, [x10]
        //  %r914 = add i32 %r913, %r513

        add     x9, x9, x10
        //  %r515 = load i32, i32* @a10

        adrp     x10, a10
        add     x10, x10, #:lo12:a10
        ldr     x10, [x10]
        //  %r915 = sub i32 %r914, %r515

        sub     x10, x9, x10
        //  %r517 = load i32, i32* @a11

        adrp     x9, a11
        add     x9, x9, #:lo12:a11
        ldr     x9, [x9]
        //  %r916 = add i32 %r915, %r517

        add     x9, x10, x9
        //  %r519 = load i32, i32* @a12

        adrp     x10, a12
        add     x10, x10, #:lo12:a12
        ldr     x10, [x10]
        //  %r917 = sub i32 %r916, %r519

        sub     x9, x9, x10
        //  %r521 = load i32, i32* @a13

        adrp     x10, a13
        add     x10, x10, #:lo12:a13
        ldr     x10, [x10]
        //  %r918 = add i32 %r917, %r521

        add     x9, x9, x10
        //  %r523 = load i32, i32* @a14

        adrp     x10, a14
        add     x10, x10, #:lo12:a14
        ldr     x10, [x10]
        //  %r919 = sub i32 %r918, %r523

        sub     x10, x9, x10
        //  %r525 = load i32, i32* @a15

        adrp     x9, a15
        add     x9, x9, #:lo12:a15
        ldr     x9, [x9]
        //  %r920 = add i32 %r919, %r525

        add     x9, x10, x9
        //  %r527 = load i32, i32* @a16

        adrp     x10, a16
        add     x10, x10, #:lo12:a16
        ldr     x10, [x10]
        //  %r921 = sub i32 %r920, %r527

        sub     x9, x9, x10
        //  %r529 = load i32, i32* @a17

        adrp     x10, a17
        add     x10, x10, #:lo12:a17
        ldr     x10, [x10]
        //  %r922 = add i32 %r921, %r529

        add     x9, x9, x10
        //  %r531 = load i32, i32* @a18

        adrp     x10, a18
        add     x10, x10, #:lo12:a18
        ldr     x10, [x10]
        //  %r923 = sub i32 %r922, %r531

        sub     x10, x9, x10
        //  %r533 = load i32, i32* @a19

        adrp     x9, a19
        add     x9, x9, #:lo12:a19
        ldr     x9, [x9]
        //  %r924 = add i32 %r923, %r533

        add     x9, x10, x9
        //  %r535 = load i32, i32* @a20

        adrp     x10, a20
        add     x10, x10, #:lo12:a20
        ldr     x10, [x10]
        //  %r925 = sub i32 %r924, %r535

        sub     x9, x9, x10
        //  %r537 = load i32, i32* @a21

        adrp     x10, a21
        add     x10, x10, #:lo12:a21
        ldr     x10, [x10]
        //  %r926 = add i32 %r925, %r537

        add     x9, x9, x10
        //  %r539 = load i32, i32* @a22

        adrp     x10, a22
        add     x10, x10, #:lo12:a22
        ldr     x10, [x10]
        //  %r927 = sub i32 %r926, %r539

        sub     x10, x9, x10
        //  %r541 = load i32, i32* @a23

        adrp     x9, a23
        add     x9, x9, #:lo12:a23
        ldr     x9, [x9]
        //  %r928 = add i32 %r927, %r541

        add     x9, x10, x9
        //  %r543 = load i32, i32* @a24

        adrp     x10, a24
        add     x10, x10, #:lo12:a24
        ldr     x10, [x10]
        //  %r929 = sub i32 %r928, %r543

        sub     x9, x9, x10
        //  %r545 = load i32, i32* @a25

        adrp     x10, a25
        add     x10, x10, #:lo12:a25
        ldr     x10, [x10]
        //  %r930 = add i32 %r929, %r545

        add     x9, x9, x10
        //  %r547 = load i32, i32* @a26

        adrp     x10, a26
        add     x10, x10, #:lo12:a26
        ldr     x10, [x10]
        //  %r931 = sub i32 %r930, %r547

        sub     x10, x9, x10
        //  %r549 = load i32, i32* @a27

        adrp     x9, a27
        add     x9, x9, #:lo12:a27
        ldr     x9, [x9]
        //  %r932 = add i32 %r931, %r549

        add     x9, x10, x9
        //  %r551 = load i32, i32* @a28

        adrp     x10, a28
        add     x10, x10, #:lo12:a28
        ldr     x10, [x10]
        //  %r933 = sub i32 %r932, %r551

        sub     x9, x9, x10
        //  %r553 = load i32, i32* @a29

        adrp     x10, a29
        add     x10, x10, #:lo12:a29
        ldr     x10, [x10]
        //  %r934 = add i32 %r933, %r553

        add     x9, x9, x10
        //  %r555 = load i32, i32* @a30

        adrp     x10, a30
        add     x10, x10, #:lo12:a30
        ldr     x10, [x10]
        //  %r935 = sub i32 %r934, %r555

        sub     x10, x9, x10
        //  %r557 = load i32, i32* @a31

        adrp     x9, a31
        add     x9, x9, #:lo12:a31
        ldr     x9, [x9]
        //  %r936 = add i32 %r935, %r557

        add     x9, x10, x9
        //  %r559 = load i32, i32* @a32

        adrp     x10, a32
        add     x10, x10, #:lo12:a32
        ldr     x10, [x10]
        //  %r937 = sub i32 %r936, %r559

        sub     x9, x9, x10
        //  ret i32 %r937

        mov     x0, x9
        mov     sp, x29
        ret
        sub     sp, sp, #0
main:

        //bb3:

bb3:

        //  call void @_sysy_starttime(i32 87)

        mov     x16, #0
        sub     sp, sp, x16
        mov     x0, #87
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
        //  %r940 = add i32 0, 0

        //  %r941 = add i32 0, 0

        //  %r942 = call i32 @getint()

        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     getint
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        //  %r943 = add i32 %r942, 0

        mov     x9, x9
        //  %r944 = mul i32 2, 9

        mov     x10, #2
        mov     x11, #9
        mul     x10, x10, x11
        //  %r945 = add i32 %r943, %r944

        add     x10, x9, x10
        //  %r946 = add i32 %r945, 0

        mov     x10, x10
        //  %r947 = call i32 @func(i32 %r943, i32 %r946)

        mov     x0, x9
        mov     x1, x10
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        //  %r948 = add i32 %r947, 0

        mov     x9, x9
        //  call void @putint(i32 %r948)

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
        //  call void @_sysy_stoptime(i32 93)

        mov     x0, #93
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
        //  ret i32 %r948

        mov     x0, x9
        mov     sp, x29
        ret
