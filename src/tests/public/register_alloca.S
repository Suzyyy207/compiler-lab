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
func:

        //bb2:

bb2:

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

        str     x16, [sp, #-8]!
        mov     x17, x10
        str     x17, [sp, #-8]!
        //  %r651 = add i32 0, 0

        //  %r652 = add i32 %r102, 0

        str     x18, [sp, #-8]!
        mov     x19, x9
        str     x19, [sp, #-8]!
        //  br label %bb1


        b     bb1
        //bb1:

bb1:

        //  %r653 = add i32 %r650, %r652

        ldr     x16, [sp], #8
        ldr     x17, [sp], #8
        add     x9, x16, x17
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

        str     x18, [sp, #-8]!
        mov     x19, x9
        str     x19, [sp, #-8]!
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

        str     x16, [sp, #-8]!
        mov     x17, x9
        str     x17, [sp, #-8]!
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

        str     x18, [sp, #-8]!
        mov     x19, x9
        str     x19, [sp, #-8]!
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

        str     x16, [sp, #-8]!
        mov     x17, x9
        str     x17, [sp, #-8]!
        //  %r663 = add i32 1, %r656

        mov     x9, #1
        ldr     x18, [sp], #8
        add     x10, x9, x18
        //  %r150 = load i32, i32* @a1

        adrp     x9, a1
        add     x9, x9, #:lo12:a1
        str     x19, [sp, #-8]!
        ldr     x16, [x9]
        str     x16, [sp, #-8]!
        //  %r664 = add i32 %r663, %r150

        ldr     x17, [sp], #8
        add     x9, x10, x17
        //  %r665 = add i32 %r664, 0

        str     x18, [sp, #-8]!
        mov     x19, x9
        str     x19, [sp, #-8]!
        //  %r666 = add i32 2, %r658

        mov     x9, #2
        ldr     x16, [sp], #8
        str     x17, [sp, #-8]!
        add     x18, x9, x16
        str     x18, [sp, #-8]!
        //  %r154 = load i32, i32* @a2

        adrp     x9, a2
        add     x9, x9, #:lo12:a2
        str     x19, [sp, #-8]!
        ldr     x16, [x9]
        str     x16, [sp, #-8]!
        //  %r667 = add i32 %r666, %r154

        ldr     x17, [sp], #8
        ldr     x18, [sp], #8
        add     x9, x17, x18
        //  %r668 = add i32 %r667, 0

        str     x19, [sp, #-8]!
        mov     x16, x9
        str     x16, [sp, #-8]!
        //  %r669 = add i32 3, %r660

        mov     x9, #3
        ldr     x17, [sp], #8
        str     x18, [sp, #-8]!
        add     x19, x9, x17
        str     x19, [sp, #-8]!
        //  %r158 = load i32, i32* @a3

        adrp     x9, a3
        add     x9, x9, #:lo12:a3
        str     x16, [sp, #-8]!
        ldr     x17, [x9]
        str     x17, [sp, #-8]!
        //  %r670 = add i32 %r669, %r158

        ldr     x18, [sp], #8
        ldr     x19, [sp], #8
        str     x16, [sp, #-8]!
        add     x17, x18, x19
        str     x17, [sp, #-8]!
        //  %r671 = add i32 %r670, 0

        str     x18, [sp, #-8]!
        ldr     x16, [sp], #8
        mov     x19, x16
        str     x19, [sp, #-8]!
        //  %r672 = add i32 4, %r662

        mov     x9, #4
        ldr     x17, [sp], #8
        add     x10, x9, x17
        //  %r162 = load i32, i32* @a4

        adrp     x9, a4
        add     x9, x9, #:lo12:a4
        str     x18, [sp, #-8]!
        ldr     x19, [x9]
        str     x19, [sp, #-8]!
        //  %r673 = add i32 %r672, %r162

        ldr     x16, [sp], #8
        str     x17, [sp, #-8]!
        add     x18, x10, x16
        str     x18, [sp, #-8]!
        //  %r674 = add i32 %r673, 0

        str     x19, [sp, #-8]!
        ldr     x17, [sp], #8
        mov     x16, x17
        str     x16, [sp, #-8]!
        //  %r675 = add i32 1, %r665

        mov     x9, #1
        ldr     x18, [sp], #8
        add     x10, x9, x18
        //  %r166 = load i32, i32* @a5

        adrp     x9, a5
        add     x9, x9, #:lo12:a5
        str     x19, [sp, #-8]!
        ldr     x16, [x9]
        str     x16, [sp, #-8]!
        //  %r676 = add i32 %r675, %r166

        ldr     x17, [sp], #8
        add     x9, x10, x17
        //  %r677 = add i32 %r676, 0

        str     x18, [sp, #-8]!
        mov     x19, x9
        str     x19, [sp, #-8]!
        //  %r678 = add i32 2, %r668

        mov     x9, #2
        ldr     x16, [sp], #8
        str     x17, [sp, #-8]!
        add     x18, x9, x16
        str     x18, [sp, #-8]!
        //  %r170 = load i32, i32* @a6

        adrp     x9, a6
        add     x9, x9, #:lo12:a6
        str     x19, [sp, #-8]!
        ldr     x16, [x9]
        str     x16, [sp, #-8]!
        //  %r679 = add i32 %r678, %r170

        ldr     x17, [sp], #8
        ldr     x18, [sp], #8
        add     x9, x17, x18
        //  %r680 = add i32 %r679, 0

        str     x19, [sp, #-8]!
        mov     x16, x9
        str     x16, [sp, #-8]!
        //  %r681 = add i32 3, %r671

        mov     x9, #3
        ldr     x17, [sp], #8
        str     x18, [sp, #-8]!
        add     x19, x9, x17
        str     x19, [sp, #-8]!
        //  %r174 = load i32, i32* @a7

        adrp     x9, a7
        add     x9, x9, #:lo12:a7
        str     x16, [sp, #-8]!
        ldr     x17, [x9]
        str     x17, [sp, #-8]!
        //  %r682 = add i32 %r681, %r174

        ldr     x18, [sp], #8
        ldr     x19, [sp], #8
        str     x16, [sp, #-8]!
        add     x17, x18, x19
        str     x17, [sp, #-8]!
        //  %r683 = add i32 %r682, 0

        str     x18, [sp, #-8]!
        ldr     x16, [sp], #8
        mov     x19, x16
        str     x19, [sp, #-8]!
        //  %r684 = add i32 4, %r674

        mov     x9, #4
        ldr     x17, [sp], #8
        add     x10, x9, x17
        //  %r178 = load i32, i32* @a8

        adrp     x9, a8
        add     x9, x9, #:lo12:a8
        str     x18, [sp, #-8]!
        ldr     x19, [x9]
        str     x19, [sp, #-8]!
        //  %r685 = add i32 %r684, %r178

        ldr     x16, [sp], #8
        str     x17, [sp, #-8]!
        add     x18, x10, x16
        str     x18, [sp, #-8]!
        //  %r686 = add i32 %r685, 0

        str     x19, [sp, #-8]!
        ldr     x17, [sp], #8
        mov     x16, x17
        str     x16, [sp, #-8]!
        //  %r687 = add i32 1, %r677

        mov     x9, #1
        ldr     x18, [sp], #8
        str     x19, [sp, #-8]!
        add     x16, x9, x18
        str     x16, [sp, #-8]!
        //  %r182 = load i32, i32* @a9

        adrp     x9, a9
        add     x9, x9, #:lo12:a9
        str     x17, [sp, #-8]!
        ldr     x18, [x9]
        str     x18, [sp, #-8]!
        //  %r688 = add i32 %r687, %r182

        ldr     x19, [sp], #8
        ldr     x16, [sp], #8
        add     x9, x19, x16
        //  %r689 = add i32 %r688, 0

        str     x17, [sp, #-8]!
        mov     x18, x9
        str     x18, [sp, #-8]!
        //  %r690 = add i32 2, %r680

        mov     x9, #2
        ldr     x19, [sp], #8
        str     x16, [sp, #-8]!
        add     x17, x9, x19
        str     x17, [sp, #-8]!
        //  %r186 = load i32, i32* @a10

        adrp     x9, a10
        add     x9, x9, #:lo12:a10
        str     x18, [sp, #-8]!
        ldr     x19, [x9]
        str     x19, [sp, #-8]!
        //  %r691 = add i32 %r690, %r186

        ldr     x16, [sp], #8
        ldr     x17, [sp], #8
        str     x18, [sp, #-8]!
        add     x19, x16, x17
        str     x19, [sp, #-8]!
        //  %r692 = add i32 %r691, 0

        str     x16, [sp, #-8]!
        ldr     x18, [sp], #8
        mov     x17, x18
        str     x17, [sp, #-8]!
        //  %r693 = add i32 3, %r683

        mov     x9, #3
        ldr     x19, [sp], #8
        str     x16, [sp, #-8]!
        add     x17, x9, x19
        str     x17, [sp, #-8]!
        //  %r190 = load i32, i32* @a11

        adrp     x9, a11
        add     x9, x9, #:lo12:a11
        str     x18, [sp, #-8]!
        ldr     x19, [x9]
        str     x19, [sp, #-8]!
        //  %r694 = add i32 %r693, %r190

        ldr     x16, [sp], #8
        ldr     x17, [sp], #8
        str     x18, [sp, #-8]!
        add     x19, x16, x17
        str     x19, [sp, #-8]!
        //  %r695 = add i32 %r694, 0

        str     x16, [sp, #-8]!
        ldr     x18, [sp], #8
        mov     x17, x18
        str     x17, [sp, #-8]!
        //  %r696 = add i32 4, %r686

        mov     x9, #4
        ldr     x19, [sp], #8
        add     x10, x9, x19
        //  %r194 = load i32, i32* @a12

        adrp     x9, a12
        add     x9, x9, #:lo12:a12
        str     x16, [sp, #-8]!
        ldr     x17, [x9]
        str     x17, [sp, #-8]!
        //  %r697 = add i32 %r696, %r194

        ldr     x18, [sp], #8
        str     x19, [sp, #-8]!
        add     x16, x10, x18
        str     x16, [sp, #-8]!
        //  %r698 = add i32 %r697, 0

        str     x17, [sp, #-8]!
        ldr     x19, [sp], #8
        mov     x18, x19
        str     x18, [sp, #-8]!
        //  %r699 = add i32 1, %r689

        mov     x9, #1
        ldr     x16, [sp], #8
        str     x17, [sp, #-8]!
        add     x18, x9, x16
        str     x18, [sp, #-8]!
        //  %r198 = load i32, i32* @a13

        adrp     x9, a13
        add     x9, x9, #:lo12:a13
        str     x19, [sp, #-8]!
        ldr     x16, [x9]
        str     x16, [sp, #-8]!
        //  %r700 = add i32 %r699, %r198

        ldr     x17, [sp], #8
        ldr     x18, [sp], #8
        add     x9, x17, x18
        //  %r701 = add i32 %r700, 0

        str     x19, [sp, #-8]!
        mov     x16, x9
        str     x16, [sp, #-8]!
        //  %r702 = add i32 2, %r692

        mov     x9, #2
        ldr     x17, [sp], #8
        str     x18, [sp, #-8]!
        add     x19, x9, x17
        str     x19, [sp, #-8]!
        //  %r202 = load i32, i32* @a14

        adrp     x9, a14
        add     x9, x9, #:lo12:a14
        str     x16, [sp, #-8]!
        ldr     x17, [x9]
        str     x17, [sp, #-8]!
        //  %r703 = add i32 %r702, %r202

        ldr     x18, [sp], #8
        ldr     x19, [sp], #8
        str     x16, [sp, #-8]!
        add     x17, x18, x19
        str     x17, [sp, #-8]!
        //  %r704 = add i32 %r703, 0

        str     x18, [sp, #-8]!
        ldr     x16, [sp], #8
        mov     x19, x16
        str     x19, [sp, #-8]!
        //  %r705 = add i32 3, %r695

        mov     x9, #3
        ldr     x17, [sp], #8
        str     x18, [sp, #-8]!
        add     x19, x9, x17
        str     x19, [sp, #-8]!
        //  %r206 = load i32, i32* @a15

        adrp     x9, a15
        add     x9, x9, #:lo12:a15
        str     x16, [sp, #-8]!
        ldr     x17, [x9]
        str     x17, [sp, #-8]!
        //  %r706 = add i32 %r705, %r206

        ldr     x18, [sp], #8
        ldr     x19, [sp], #8
        str     x16, [sp, #-8]!
        add     x17, x18, x19
        str     x17, [sp, #-8]!
        //  %r707 = add i32 %r706, 0

        str     x18, [sp, #-8]!
        ldr     x16, [sp], #8
        mov     x19, x16
        str     x19, [sp, #-8]!
        //  %r708 = add i32 4, %r698

        mov     x9, #4
        ldr     x17, [sp], #8
        add     x10, x9, x17
        //  %r210 = load i32, i32* @a16

        adrp     x9, a16
        add     x9, x9, #:lo12:a16
        str     x18, [sp, #-8]!
        ldr     x19, [x9]
        str     x19, [sp, #-8]!
        //  %r709 = add i32 %r708, %r210

        ldr     x16, [sp], #8
        str     x17, [sp, #-8]!
        add     x18, x10, x16
        str     x18, [sp, #-8]!
        //  %r710 = add i32 %r709, 0

        str     x19, [sp, #-8]!
        ldr     x17, [sp], #8
        mov     x16, x17
        str     x16, [sp, #-8]!
        //  %r711 = add i32 1, %r701

        mov     x9, #1
        ldr     x18, [sp], #8
        str     x19, [sp, #-8]!
        add     x16, x9, x18
        str     x16, [sp, #-8]!
        //  %r214 = load i32, i32* @a17

        adrp     x9, a17
        add     x9, x9, #:lo12:a17
        str     x17, [sp, #-8]!
        ldr     x18, [x9]
        str     x18, [sp, #-8]!
        //  %r712 = add i32 %r711, %r214

        ldr     x19, [sp], #8
        ldr     x16, [sp], #8
        add     x9, x19, x16
        //  %r713 = add i32 %r712, 0

        str     x17, [sp, #-8]!
        mov     x18, x9
        str     x18, [sp, #-8]!
        //  %r714 = add i32 2, %r704

        mov     x9, #2
        ldr     x19, [sp], #8
        str     x16, [sp, #-8]!
        add     x17, x9, x19
        str     x17, [sp, #-8]!
        //  %r218 = load i32, i32* @a18

        adrp     x9, a18
        add     x9, x9, #:lo12:a18
        str     x18, [sp, #-8]!
        ldr     x19, [x9]
        str     x19, [sp, #-8]!
        //  %r715 = add i32 %r714, %r218

        ldr     x16, [sp], #8
        ldr     x17, [sp], #8
        str     x18, [sp, #-8]!
        add     x19, x16, x17
        str     x19, [sp, #-8]!
        //  %r716 = add i32 %r715, 0

        str     x16, [sp, #-8]!
        ldr     x18, [sp], #8
        mov     x17, x18
        str     x17, [sp, #-8]!
        //  %r717 = add i32 3, %r707

        mov     x9, #3
        ldr     x19, [sp], #8
        str     x16, [sp, #-8]!
        add     x17, x9, x19
        str     x17, [sp, #-8]!
        //  %r222 = load i32, i32* @a19

        adrp     x9, a19
        add     x9, x9, #:lo12:a19
        str     x18, [sp, #-8]!
        ldr     x19, [x9]
        str     x19, [sp, #-8]!
        //  %r718 = add i32 %r717, %r222

        ldr     x16, [sp], #8
        ldr     x17, [sp], #8
        str     x18, [sp, #-8]!
        add     x19, x16, x17
        str     x19, [sp, #-8]!
        //  %r719 = add i32 %r718, 0

        str     x16, [sp, #-8]!
        ldr     x18, [sp], #8
        mov     x17, x18
        str     x17, [sp, #-8]!
        //  %r720 = add i32 4, %r710

        mov     x9, #4
        ldr     x19, [sp], #8
        add     x9, x9, x19
        //  %r226 = load i32, i32* @a20

        adrp     x10, a20
        add     x10, x10, #:lo12:a20
        ldr     x10, [x10]
        //  %r721 = add i32 %r720, %r226

        str     x16, [sp, #-8]!
        add     x17, x9, x10
        str     x17, [sp, #-8]!
        //  %r722 = add i32 %r721, 0

        str     x18, [sp, #-8]!
        ldr     x16, [sp], #8
        mov     x19, x16
        str     x19, [sp, #-8]!
        //  %r723 = add i32 1, %r713

        mov     x9, #1
        ldr     x17, [sp], #8
        str     x18, [sp, #-8]!
        add     x19, x9, x17
        str     x19, [sp, #-8]!
        //  %r230 = load i32, i32* @a21

        adrp     x9, a21
        add     x9, x9, #:lo12:a21
        ldr     x9, [x9]
        //  %r724 = add i32 %r723, %r230

        ldr     x16, [sp], #8
        add     x9, x16, x9
        //  %r725 = add i32 %r724, 0

        str     x17, [sp, #-8]!
        mov     x18, x9
        str     x18, [sp, #-8]!
        //  %r726 = add i32 2, %r716

        mov     x9, #2
        ldr     x19, [sp], #8
        str     x16, [sp, #-8]!
        add     x17, x9, x19
        str     x17, [sp, #-8]!
        //  %r234 = load i32, i32* @a22

        adrp     x9, a22
        add     x9, x9, #:lo12:a22
        ldr     x9, [x9]
        //  %r727 = add i32 %r726, %r234

        ldr     x18, [sp], #8
        str     x19, [sp, #-8]!
        add     x16, x18, x9
        str     x16, [sp, #-8]!
        //  %r728 = add i32 %r727, 0

        str     x17, [sp, #-8]!
        ldr     x19, [sp], #8
        mov     x18, x19
        str     x18, [sp, #-8]!
        //  %r729 = add i32 3, %r719

        mov     x9, #3
        ldr     x16, [sp], #8
        str     x17, [sp, #-8]!
        add     x18, x9, x16
        str     x18, [sp, #-8]!
        //  %r238 = load i32, i32* @a23

        adrp     x9, a23
        add     x9, x9, #:lo12:a23
        ldr     x9, [x9]
        //  %r730 = add i32 %r729, %r238

        ldr     x19, [sp], #8
        str     x16, [sp, #-8]!
        add     x17, x19, x9
        str     x17, [sp, #-8]!
        //  %r731 = add i32 %r730, 0

        str     x18, [sp, #-8]!
        ldr     x16, [sp], #8
        mov     x19, x16
        str     x19, [sp, #-8]!
        //  %r732 = add i32 4, %r722

        mov     x9, #4
        ldr     x17, [sp], #8
        add     x9, x9, x17
        //  %r242 = load i32, i32* @a24

        adrp     x10, a24
        add     x10, x10, #:lo12:a24
        ldr     x10, [x10]
        //  %r733 = add i32 %r732, %r242

        str     x18, [sp, #-8]!
        add     x19, x9, x10
        str     x19, [sp, #-8]!
        //  %r734 = add i32 %r733, 0

        str     x16, [sp, #-8]!
        ldr     x18, [sp], #8
        mov     x17, x18
        str     x17, [sp, #-8]!
        //  %r735 = add i32 1, %r725

        mov     x9, #1
        ldr     x19, [sp], #8
        str     x16, [sp, #-8]!
        add     x17, x9, x19
        str     x17, [sp, #-8]!
        //  %r246 = load i32, i32* @a25

        adrp     x9, a25
        add     x9, x9, #:lo12:a25
        ldr     x9, [x9]
        //  %r736 = add i32 %r735, %r246

        ldr     x18, [sp], #8
        add     x9, x18, x9
        //  %r737 = add i32 %r736, 0

        str     x19, [sp, #-8]!
        mov     x16, x9
        str     x16, [sp, #-8]!
        //  %r738 = add i32 2, %r728

        mov     x9, #2
        ldr     x17, [sp], #8
        str     x18, [sp, #-8]!
        add     x19, x9, x17
        str     x19, [sp, #-8]!
        //  %r250 = load i32, i32* @a26

        adrp     x9, a26
        add     x9, x9, #:lo12:a26
        ldr     x9, [x9]
        //  %r739 = add i32 %r738, %r250

        ldr     x16, [sp], #8
        str     x17, [sp, #-8]!
        add     x18, x16, x9
        str     x18, [sp, #-8]!
        //  %r740 = add i32 %r739, 0

        ldr     x19, [sp], #8
        mov     x10, x19
        //  %r741 = add i32 3, %r731

        mov     x9, #3
        ldr     x16, [sp], #8
        str     x17, [sp, #-8]!
        add     x18, x9, x16
        str     x18, [sp, #-8]!
        //  %r254 = load i32, i32* @a27

        adrp     x9, a27
        add     x9, x9, #:lo12:a27
        ldr     x9, [x9]
        //  %r742 = add i32 %r741, %r254

        ldr     x19, [sp], #8
        str     x16, [sp, #-8]!
        add     x17, x19, x9
        str     x17, [sp, #-8]!
        //  %r743 = add i32 %r742, 0

        str     x18, [sp, #-8]!
        ldr     x16, [sp], #8
        mov     x19, x16
        str     x19, [sp, #-8]!
        //  %r744 = add i32 4, %r734

        mov     x9, #4
        ldr     x17, [sp], #8
        add     x9, x9, x17
        //  %r258 = load i32, i32* @a28

        adrp     x11, a28
        add     x11, x11, #:lo12:a28
        ldr     x11, [x11]
        //  %r745 = add i32 %r744, %r258

        str     x18, [sp, #-8]!
        add     x19, x9, x11
        str     x19, [sp, #-8]!
        //  %r746 = add i32 %r745, 0

        str     x16, [sp, #-8]!
        ldr     x18, [sp], #8
        mov     x17, x18
        str     x17, [sp, #-8]!
        //  %r747 = add i32 1, %r737

        mov     x9, #1
        ldr     x19, [sp], #8
        str     x16, [sp, #-8]!
        add     x17, x9, x19
        str     x17, [sp, #-8]!
        //  %r262 = load i32, i32* @a29

        adrp     x9, a29
        add     x9, x9, #:lo12:a29
        ldr     x9, [x9]
        //  %r748 = add i32 %r747, %r262

        ldr     x18, [sp], #8
        add     x9, x18, x9
        //  %r749 = add i32 %r748, 0

        //  %r750 = add i32 2, %r740

        mov     x9, #2
        str     x19, [sp, #-8]!
        add     x16, x9, x10
        str     x16, [sp, #-8]!
        //  %r266 = load i32, i32* @a30

        adrp     x9, a30
        add     x9, x9, #:lo12:a30
        ldr     x9, [x9]
        //  %r751 = add i32 %r750, %r266

        ldr     x17, [sp], #8
        str     x18, [sp, #-8]!
        add     x19, x17, x9
        str     x19, [sp, #-8]!
        //  %r752 = add i32 %r751, 0

        //  %r753 = add i32 3, %r743

        mov     x9, #3
        ldr     x16, [sp], #8
        str     x17, [sp, #-8]!
        add     x18, x9, x16
        str     x18, [sp, #-8]!
        //  %r270 = load i32, i32* @a31

        adrp     x9, a31
        add     x9, x9, #:lo12:a31
        ldr     x9, [x9]
        //  %r754 = add i32 %r753, %r270

        ldr     x19, [sp], #8
        str     x16, [sp, #-8]!
        add     x17, x19, x9
        str     x17, [sp, #-8]!
        //  %r755 = add i32 %r754, 0

        //  %r756 = add i32 4, %r746

        mov     x9, #4
        ldr     x18, [sp], #8
        add     x11, x9, x18
        //  %r274 = load i32, i32* @a32

        adrp     x9, a32
        add     x9, x9, #:lo12:a32
        str     x19, [sp, #-8]!
        ldr     x16, [x9]
        str     x16, [sp, #-8]!
        //  %r757 = add i32 %r756, %r274

        ldr     x17, [sp], #8
        str     x18, [sp, #-8]!
        add     x19, x11, x17
        str     x19, [sp, #-8]!
        //  %r758 = add i32 %r757, 0

        //  %r759 = sub i32 %r650, %r652

        ldr     x16, [sp], #8
        ldr     x17, [sp], #8
        str     x18, [sp, #-8]!
        sub     x19, x16, x17
        str     x19, [sp, #-8]!
        //  %r760 = add i32 %r759, 10

        mov     x9, #10
        ldr     x16, [sp], #8
        add     x9, x16, x9
        //  %r761 = add i32 %r760, 0

        str     x17, [sp, #-8]!
        mov     x18, x9
        str     x18, [sp, #-8]!
        //  %r762 = add i32 1, %r737

        mov     x9, #1
        ldr     x19, [sp], #8
        str     x16, [sp, #-8]!
        add     x17, x9, x19
        str     x17, [sp, #-8]!
        //  %r282 = load i32, i32* @a29

        adrp     x9, a29
        add     x9, x9, #:lo12:a29
        ldr     x9, [x9]
        //  %r763 = add i32 %r762, %r282

        ldr     x18, [sp], #8
        str     x19, [sp, #-8]!
        add     x16, x18, x9
        str     x16, [sp, #-8]!
        //  %r764 = add i32 %r763, 0

        str     x17, [sp, #-8]!
        ldr     x19, [sp], #8
        mov     x18, x19
        str     x18, [sp, #-8]!
        //  %r765 = add i32 2, %r740

        mov     x9, #2
        str     x16, [sp, #-8]!
        add     x17, x9, x10
        str     x17, [sp, #-8]!
        //  %r286 = load i32, i32* @a30

        adrp     x9, a30
        add     x9, x9, #:lo12:a30
        ldr     x9, [x9]
        //  %r766 = add i32 %r765, %r286

        ldr     x18, [sp], #8
        add     x9, x18, x9
        //  %r767 = add i32 %r766, 0

        str     x19, [sp, #-8]!
        mov     x16, x9
        str     x16, [sp, #-8]!
        //  %r768 = add i32 3, %r743

        mov     x9, #3
        ldr     x17, [sp], #8
        add     x10, x9, x17
        //  %r290 = load i32, i32* @a31

        adrp     x9, a31
        add     x9, x9, #:lo12:a31
        str     x18, [sp, #-8]!
        ldr     x19, [x9]
        str     x19, [sp, #-8]!
        //  %r769 = add i32 %r768, %r290

        ldr     x16, [sp], #8
        add     x9, x10, x16
        //  %r770 = add i32 %r769, 0

        str     x17, [sp, #-8]!
        mov     x18, x9
        str     x18, [sp, #-8]!
        //  %r771 = add i32 4, %r746

        mov     x9, #4
        ldr     x19, [sp], #8
        add     x10, x9, x19
        //  %r294 = load i32, i32* @a32

        adrp     x9, a32
        add     x9, x9, #:lo12:a32
        str     x16, [sp, #-8]!
        ldr     x17, [x9]
        str     x17, [sp, #-8]!
        //  %r772 = add i32 %r771, %r294

        ldr     x18, [sp], #8
        add     x9, x10, x18
        //  %r773 = add i32 %r772, 0

        str     x19, [sp, #-8]!
        mov     x16, x9
        str     x16, [sp, #-8]!
        //  %r774 = add i32 1, %r725

        mov     x9, #1
        ldr     x17, [sp], #8
        add     x10, x9, x17
        //  %r298 = load i32, i32* @a25

        adrp     x9, a25
        add     x9, x9, #:lo12:a25
        str     x18, [sp, #-8]!
        ldr     x19, [x9]
        str     x19, [sp, #-8]!
        //  %r775 = add i32 %r774, %r298

        ldr     x16, [sp], #8
        add     x9, x10, x16
        //  %r776 = add i32 %r775, 0

        str     x17, [sp, #-8]!
        mov     x18, x9
        str     x18, [sp, #-8]!
        //  %r777 = add i32 2, %r728

        mov     x9, #2
        ldr     x19, [sp], #8
        add     x10, x9, x19
        //  %r302 = load i32, i32* @a26

        adrp     x9, a26
        add     x9, x9, #:lo12:a26
        str     x16, [sp, #-8]!
        ldr     x17, [x9]
        str     x17, [sp, #-8]!
        //  %r778 = add i32 %r777, %r302

        ldr     x18, [sp], #8
        add     x9, x10, x18
        //  %r779 = add i32 %r778, 0

        str     x19, [sp, #-8]!
        mov     x16, x9
        str     x16, [sp, #-8]!
        //  %r780 = add i32 3, %r731

        mov     x9, #3
        ldr     x17, [sp], #8
        add     x10, x9, x17
        //  %r306 = load i32, i32* @a27

        adrp     x9, a27
        add     x9, x9, #:lo12:a27
        str     x18, [sp, #-8]!
        ldr     x19, [x9]
        str     x19, [sp, #-8]!
        //  %r781 = add i32 %r780, %r306

        ldr     x16, [sp], #8
        add     x9, x10, x16
        //  %r782 = add i32 %r781, 0

        str     x17, [sp, #-8]!
        mov     x18, x9
        str     x18, [sp, #-8]!
        //  %r783 = add i32 4, %r734

        mov     x9, #4
        ldr     x19, [sp], #8
        add     x10, x9, x19
        //  %r310 = load i32, i32* @a28

        adrp     x9, a28
        add     x9, x9, #:lo12:a28
        str     x16, [sp, #-8]!
        ldr     x17, [x9]
        str     x17, [sp, #-8]!
        //  %r784 = add i32 %r783, %r310

        ldr     x18, [sp], #8
        add     x9, x10, x18
        //  %r785 = add i32 %r784, 0

        str     x19, [sp, #-8]!
        mov     x16, x9
        str     x16, [sp, #-8]!
        //  %r786 = add i32 1, %r713

        mov     x9, #1
        ldr     x17, [sp], #8
        add     x10, x9, x17
        //  %r314 = load i32, i32* @a21

        adrp     x9, a21
        add     x9, x9, #:lo12:a21
        str     x18, [sp, #-8]!
        ldr     x19, [x9]
        str     x19, [sp, #-8]!
        //  %r787 = add i32 %r786, %r314

        ldr     x16, [sp], #8
        add     x9, x10, x16
        //  %r788 = add i32 %r787, 0

        str     x17, [sp, #-8]!
        mov     x18, x9
        str     x18, [sp, #-8]!
        //  %r789 = add i32 2, %r716

        mov     x9, #2
        ldr     x19, [sp], #8
        add     x10, x9, x19
        //  %r318 = load i32, i32* @a22

        adrp     x9, a22
        add     x9, x9, #:lo12:a22
        str     x16, [sp, #-8]!
        ldr     x17, [x9]
        str     x17, [sp, #-8]!
        //  %r790 = add i32 %r789, %r318

        ldr     x18, [sp], #8
        add     x9, x10, x18
        //  %r791 = add i32 %r790, 0

        str     x19, [sp, #-8]!
        mov     x16, x9
        str     x16, [sp, #-8]!
        //  %r792 = add i32 3, %r719

        mov     x9, #3
        ldr     x17, [sp], #8
        add     x10, x9, x17
        //  %r322 = load i32, i32* @a23

        adrp     x9, a23
        add     x9, x9, #:lo12:a23
        str     x18, [sp, #-8]!
        ldr     x19, [x9]
        str     x19, [sp, #-8]!
        //  %r793 = add i32 %r792, %r322

        ldr     x16, [sp], #8
        add     x9, x10, x16
        //  %r794 = add i32 %r793, 0

        str     x17, [sp, #-8]!
        mov     x18, x9
        str     x18, [sp, #-8]!
        //  %r795 = add i32 4, %r722

        mov     x9, #4
        ldr     x19, [sp], #8
        str     x16, [sp, #-8]!
        add     x17, x9, x19
        str     x17, [sp, #-8]!
        //  %r326 = load i32, i32* @a24

        adrp     x9, a24
        add     x9, x9, #:lo12:a24
        str     x18, [sp, #-8]!
        ldr     x19, [x9]
        str     x19, [sp, #-8]!
        //  %r796 = add i32 %r795, %r326

        ldr     x16, [sp], #8
        ldr     x17, [sp], #8
        add     x9, x16, x17
        //  %r797 = add i32 %r796, 0

        str     x18, [sp, #-8]!
        mov     x19, x9
        str     x19, [sp, #-8]!
        //  %r798 = add i32 1, %r701

        str     x16, [sp, #-8]!
        mov     x17, #1
        str     x17, [sp, #-8]!
        ldr     x18, [sp], #8
        add     x10, x17, x18
        //  %r330 = load i32, i32* @a17

        adrp     x9, a17
        add     x9, x9, #:lo12:a17
        str     x19, [sp, #-8]!
        ldr     x16, [x9]
        str     x16, [sp, #-8]!
        //  %r799 = add i32 %r798, %r330

        ldr     x17, [sp], #8
        str     x18, [sp, #-8]!
        add     x19, x10, x17
        str     x19, [sp, #-8]!
        //  %r800 = add i32 %r799, 0

        str     x16, [sp, #-8]!
        ldr     x18, [sp], #8
        mov     x17, x18
        str     x17, [sp, #-8]!
        //  %r801 = add i32 2, %r704

        str     x19, [sp, #-8]!
        mov     x16, #2
        str     x16, [sp, #-8]!
        ldr     x17, [sp], #8
        add     x10, x16, x17
        //  %r334 = load i32, i32* @a18

        adrp     x9, a18
        add     x9, x9, #:lo12:a18
        str     x18, [sp, #-8]!
        ldr     x19, [x9]
        str     x19, [sp, #-8]!
        //  %r802 = add i32 %r801, %r334

        ldr     x16, [sp], #8
        add     x9, x10, x16
        //  %r803 = add i32 %r802, 0

        str     x17, [sp, #-8]!
        mov     x18, x9
        str     x18, [sp, #-8]!
        //  %r804 = add i32 3, %r707

        str     x19, [sp, #-8]!
        mov     x16, #3
        str     x16, [sp, #-8]!
        ldr     x17, [sp], #8
        add     x10, x16, x17
        //  %r338 = load i32, i32* @a19

        adrp     x9, a19
        add     x9, x9, #:lo12:a19
        str     x18, [sp, #-8]!
        ldr     x19, [x9]
        str     x19, [sp, #-8]!
        //  %r805 = add i32 %r804, %r338

        ldr     x16, [sp], #8
        add     x9, x10, x16
        //  %r806 = add i32 %r805, 0

        str     x17, [sp, #-8]!
        mov     x18, x9
        str     x18, [sp, #-8]!
        //  %r807 = add i32 4, %r710

        str     x19, [sp, #-8]!
        mov     x16, #4
        str     x16, [sp, #-8]!
        ldr     x17, [sp], #8
        str     x18, [sp, #-8]!
        add     x19, x16, x17
        str     x19, [sp, #-8]!
        //  %r342 = load i32, i32* @a20

        adrp     x9, a20
        add     x9, x9, #:lo12:a20
        str     x16, [sp, #-8]!
        ldr     x17, [x9]
        str     x17, [sp, #-8]!
        //  %r808 = add i32 %r807, %r342

        ldr     x18, [sp], #8
        ldr     x19, [sp], #8
        add     x9, x18, x19
        //  %r809 = add i32 %r808, 0

        str     x16, [sp, #-8]!
        mov     x17, x9
        str     x17, [sp, #-8]!
        //  %r810 = add i32 1, %r689

        str     x18, [sp, #-8]!
        mov     x19, #1
        str     x19, [sp, #-8]!
        ldr     x16, [sp], #8
        add     x10, x19, x16
        //  %r346 = load i32, i32* @a13

        adrp     x9, a13
        add     x9, x9, #:lo12:a13
        str     x17, [sp, #-8]!
        ldr     x18, [x9]
        str     x18, [sp, #-8]!
        //  %r811 = add i32 %r810, %r346

        ldr     x19, [sp], #8
        str     x16, [sp, #-8]!
        add     x17, x10, x19
        str     x17, [sp, #-8]!
        //  %r812 = add i32 %r811, 0

        str     x18, [sp, #-8]!
        ldr     x16, [sp], #8
        mov     x19, x16
        str     x19, [sp, #-8]!
        //  %r813 = add i32 2, %r692

        str     x17, [sp, #-8]!
        mov     x18, #2
        str     x18, [sp, #-8]!
        ldr     x19, [sp], #8
        add     x10, x18, x19
        //  %r350 = load i32, i32* @a14

        adrp     x9, a14
        add     x9, x9, #:lo12:a14
        str     x16, [sp, #-8]!
        ldr     x17, [x9]
        str     x17, [sp, #-8]!
        //  %r814 = add i32 %r813, %r350

        ldr     x18, [sp], #8
        add     x9, x10, x18
        //  %r815 = add i32 %r814, 0

        str     x19, [sp, #-8]!
        mov     x16, x9
        str     x16, [sp, #-8]!
        //  %r816 = add i32 3, %r695

        str     x17, [sp, #-8]!
        mov     x18, #3
        str     x18, [sp, #-8]!
        ldr     x19, [sp], #8
        add     x10, x18, x19
        //  %r354 = load i32, i32* @a15

        adrp     x9, a15
        add     x9, x9, #:lo12:a15
        str     x16, [sp, #-8]!
        ldr     x17, [x9]
        str     x17, [sp, #-8]!
        //  %r817 = add i32 %r816, %r354

        ldr     x18, [sp], #8
        add     x9, x10, x18
        //  %r818 = add i32 %r817, 0

        str     x19, [sp, #-8]!
        mov     x16, x9
        str     x16, [sp, #-8]!
        //  %r819 = add i32 4, %r698

        str     x17, [sp, #-8]!
        mov     x18, #4
        str     x18, [sp, #-8]!
        ldr     x19, [sp], #8
        add     x10, x18, x19
        //  %r358 = load i32, i32* @a16

        adrp     x9, a16
        add     x9, x9, #:lo12:a16
        str     x16, [sp, #-8]!
        ldr     x17, [x9]
        str     x17, [sp, #-8]!
        //  %r820 = add i32 %r819, %r358

        ldr     x18, [sp], #8
        add     x9, x10, x18
        //  %r821 = add i32 %r820, 0

        str     x19, [sp, #-8]!
        mov     x16, x9
        str     x16, [sp, #-8]!
        //  %r822 = add i32 1, %r677

        str     x17, [sp, #-8]!
        mov     x18, #1
        str     x18, [sp, #-8]!
        ldr     x19, [sp], #8
        add     x10, x18, x19
        //  %r362 = load i32, i32* @a9

        adrp     x9, a9
        add     x9, x9, #:lo12:a9
        str     x16, [sp, #-8]!
        ldr     x17, [x9]
        str     x17, [sp, #-8]!
        //  %r823 = add i32 %r822, %r362

        ldr     x18, [sp], #8
        str     x19, [sp, #-8]!
        add     x16, x10, x18
        str     x16, [sp, #-8]!
        //  %r824 = add i32 %r823, 0

        str     x17, [sp, #-8]!
        ldr     x19, [sp], #8
        mov     x18, x19
        str     x18, [sp, #-8]!
        //  %r825 = add i32 2, %r680

        str     x16, [sp, #-8]!
        mov     x17, #2
        str     x17, [sp, #-8]!
        ldr     x18, [sp], #8
        add     x10, x17, x18
        //  %r366 = load i32, i32* @a10

        adrp     x9, a10
        add     x9, x9, #:lo12:a10
        str     x19, [sp, #-8]!
        ldr     x16, [x9]
        str     x16, [sp, #-8]!
        //  %r826 = add i32 %r825, %r366

        ldr     x17, [sp], #8
        add     x9, x10, x17
        //  %r827 = add i32 %r826, 0

        str     x18, [sp, #-8]!
        mov     x19, x9
        str     x19, [sp, #-8]!
        //  %r828 = add i32 3, %r683

        str     x16, [sp, #-8]!
        mov     x17, #3
        str     x17, [sp, #-8]!
        ldr     x18, [sp], #8
        add     x10, x17, x18
        //  %r370 = load i32, i32* @a11

        adrp     x9, a11
        add     x9, x9, #:lo12:a11
        str     x19, [sp, #-8]!
        ldr     x16, [x9]
        str     x16, [sp, #-8]!
        //  %r829 = add i32 %r828, %r370

        ldr     x17, [sp], #8
        add     x9, x10, x17
        //  %r830 = add i32 %r829, 0

        str     x18, [sp, #-8]!
        mov     x19, x9
        str     x19, [sp, #-8]!
        //  %r831 = add i32 4, %r686

        str     x16, [sp, #-8]!
        mov     x17, #4
        str     x17, [sp, #-8]!
        ldr     x18, [sp], #8
        str     x19, [sp, #-8]!
        add     x16, x17, x18
        str     x16, [sp, #-8]!
        //  %r374 = load i32, i32* @a12

        adrp     x9, a12
        add     x9, x9, #:lo12:a12
        str     x17, [sp, #-8]!
        ldr     x18, [x9]
        str     x18, [sp, #-8]!
        //  %r832 = add i32 %r831, %r374

        ldr     x19, [sp], #8
        ldr     x16, [sp], #8
        add     x9, x19, x16
        //  %r833 = add i32 %r832, 0

        str     x17, [sp, #-8]!
        mov     x18, x9
        str     x18, [sp, #-8]!
        //  %r834 = add i32 1, %r665

        str     x19, [sp, #-8]!
        mov     x16, #1
        str     x16, [sp, #-8]!
        ldr     x17, [sp], #8
        add     x9, x16, x17
        //  %r378 = load i32, i32* @a5

        str     x18, [sp, #-8]!
        ldr     x19, [sp], #8
        adrp     x19, a5
        add     x19, x19, #:lo12:a5
        str     x16, [sp, #-8]!
        ldr     x18, [sp], #8
        ldr     x17, [x18]
        str     x17, [sp, #-8]!
        //  %r835 = add i32 %r834, %r378

        ldr     x19, [sp], #8
        str     x16, [sp, #-8]!
        add     x17, x9, x19
        str     x17, [sp, #-8]!
        //  %r836 = add i32 %r835, 0

        ldr     x18, [sp], #8
        mov     x14, x18
        //  %r837 = add i32 2, %r668

        str     x19, [sp, #-8]!
        mov     x16, #2
        str     x16, [sp, #-8]!
        ldr     x17, [sp], #8
        add     x9, x16, x17
        //  %r382 = load i32, i32* @a6

        str     x18, [sp, #-8]!
        ldr     x19, [sp], #8
        adrp     x19, a6
        add     x19, x19, #:lo12:a6
        str     x16, [sp, #-8]!
        ldr     x18, [sp], #8
        ldr     x17, [x18]
        str     x17, [sp, #-8]!
        //  %r838 = add i32 %r837, %r382

        ldr     x19, [sp], #8
        add     x9, x9, x19
        //  %r839 = add i32 %r838, 0

        str     x16, [sp, #-8]!
        mov     x17, x9
        str     x17, [sp, #-8]!
        //  %r840 = add i32 3, %r671

        str     x18, [sp, #-8]!
        mov     x19, #3
        str     x19, [sp, #-8]!
        ldr     x16, [sp], #8
        add     x9, x19, x16
        //  %r386 = load i32, i32* @a7

        str     x17, [sp, #-8]!
        ldr     x18, [sp], #8
        adrp     x18, a7
        add     x18, x18, #:lo12:a7
        str     x19, [sp, #-8]!
        ldr     x17, [sp], #8
        ldr     x16, [x17]
        str     x16, [sp, #-8]!
        //  %r841 = add i32 %r840, %r386

        ldr     x18, [sp], #8
        add     x9, x9, x18
        //  %r842 = add i32 %r841, 0

        mov     x13, x9
        //  %r843 = add i32 4, %r674

        str     x19, [sp, #-8]!
        mov     x16, #4
        str     x16, [sp, #-8]!
        ldr     x17, [sp], #8
        str     x18, [sp, #-8]!
        add     x19, x16, x17
        str     x19, [sp, #-8]!
        //  %r390 = load i32, i32* @a8

        str     x16, [sp, #-8]!
        ldr     x17, [sp], #8
        adrp     x17, a8
        add     x17, x17, #:lo12:a8
        str     x18, [sp, #-8]!
        ldr     x16, [sp], #8
        ldr     x19, [x16]
        str     x19, [sp, #-8]!
        //  %r844 = add i32 %r843, %r390

        ldr     x17, [sp], #8
        ldr     x18, [sp], #8
        add     x9, x17, x18
        //  %r845 = add i32 %r844, 0

        mov     x12, x9
        //  %r846 = add i32 1, %r656

        str     x19, [sp, #-8]!
        mov     x16, #1
        str     x16, [sp, #-8]!
        ldr     x17, [sp], #8
        add     x9, x16, x17
        //  %r394 = load i32, i32* @a1

        str     x18, [sp, #-8]!
        ldr     x19, [sp], #8
        adrp     x19, a1
        add     x19, x19, #:lo12:a1
        str     x16, [sp, #-8]!
        ldr     x18, [sp], #8
        ldr     x17, [x18]
        str     x17, [sp, #-8]!
        //  %r847 = add i32 %r846, %r394

        ldr     x19, [sp], #8
        str     x16, [sp, #-8]!
        add     x17, x9, x19
        str     x17, [sp, #-8]!
        //  %r848 = add i32 %r847, 0

        //  %r849 = add i32 2, %r658

        str     x18, [sp, #-8]!
        mov     x19, #2
        str     x19, [sp, #-8]!
        ldr     x16, [sp], #8
        add     x9, x19, x16
        //  %r398 = load i32, i32* @a2

        str     x17, [sp, #-8]!
        ldr     x18, [sp], #8
        adrp     x18, a2
        add     x18, x18, #:lo12:a2
        str     x19, [sp, #-8]!
        ldr     x17, [sp], #8
        ldr     x16, [x17]
        str     x16, [sp, #-8]!
        //  %r850 = add i32 %r849, %r398

        ldr     x18, [sp], #8
        add     x9, x9, x18
        //  %r851 = add i32 %r850, 0

        //  %r852 = add i32 3, %r660

        str     x19, [sp, #-8]!
        mov     x16, #3
        str     x16, [sp, #-8]!
        ldr     x17, [sp], #8
        add     x9, x16, x17
        //  %r402 = load i32, i32* @a3

        str     x18, [sp, #-8]!
        ldr     x19, [sp], #8
        adrp     x19, a3
        add     x19, x19, #:lo12:a3
        str     x16, [sp, #-8]!
        ldr     x18, [sp], #8
        ldr     x17, [x18]
        str     x17, [sp, #-8]!
        //  %r853 = add i32 %r852, %r402

        ldr     x19, [sp], #8
        add     x9, x9, x19
        //  %r854 = add i32 %r853, 0

        //  %r855 = add i32 4, %r662

        str     x16, [sp, #-8]!
        mov     x17, #4
        str     x17, [sp, #-8]!
        ldr     x18, [sp], #8
        str     x19, [sp, #-8]!
        add     x16, x17, x18
        str     x16, [sp, #-8]!
        //  %r406 = load i32, i32* @a4

        str     x17, [sp, #-8]!
        ldr     x18, [sp], #8
        adrp     x18, a4
        add     x18, x18, #:lo12:a4
        str     x19, [sp, #-8]!
        ldr     x17, [sp], #8
        ldr     x16, [x17]
        str     x16, [sp, #-8]!
        //  %r856 = add i32 %r855, %r406

        ldr     x18, [sp], #8
        ldr     x19, [sp], #8
        add     x9, x18, x19
        //  %r857 = add i32 %r856, 0

        //  %r858 = add i32 1, %r656

        str     x16, [sp, #-8]!
        mov     x17, #1
        str     x17, [sp, #-8]!
        ldr     x18, [sp], #8
        add     x9, x17, x18
        //  %r410 = load i32, i32* @a1

        str     x19, [sp, #-8]!
        ldr     x16, [sp], #8
        adrp     x16, a1
        add     x16, x16, #:lo12:a1
        str     x17, [sp, #-8]!
        ldr     x19, [sp], #8
        ldr     x18, [x19]
        str     x18, [sp, #-8]!
        //  %r859 = add i32 %r858, %r410

        ldr     x16, [sp], #8
        str     x17, [sp, #-8]!
        add     x18, x9, x16
        str     x18, [sp, #-8]!
        //  %r860 = add i32 %r859, 0

        ldr     x19, [sp], #8
        mov     x11, x19
        //  %r861 = add i32 2, %r658

        str     x16, [sp, #-8]!
        mov     x17, #2
        str     x17, [sp, #-8]!
        ldr     x18, [sp], #8
        add     x9, x17, x18
        //  %r414 = load i32, i32* @a2

        str     x19, [sp, #-8]!
        ldr     x16, [sp], #8
        adrp     x16, a2
        add     x16, x16, #:lo12:a2
        str     x17, [sp, #-8]!
        ldr     x19, [sp], #8
        ldr     x18, [x19]
        str     x18, [sp, #-8]!
        //  %r862 = add i32 %r861, %r414

        ldr     x16, [sp], #8
        add     x9, x9, x16
        //  %r863 = add i32 %r862, 0

        str     x17, [sp, #-8]!
        mov     x18, x9
        str     x18, [sp, #-8]!
        //  %r864 = add i32 3, %r660

        str     x19, [sp, #-8]!
        mov     x16, #3
        str     x16, [sp, #-8]!
        ldr     x17, [sp], #8
        add     x9, x16, x17
        //  %r418 = load i32, i32* @a3

        str     x18, [sp, #-8]!
        ldr     x19, [sp], #8
        adrp     x19, a3
        add     x19, x19, #:lo12:a3
        str     x16, [sp, #-8]!
        ldr     x18, [sp], #8
        ldr     x17, [x18]
        str     x17, [sp, #-8]!
        //  %r865 = add i32 %r864, %r418

        ldr     x19, [sp], #8
        add     x9, x9, x19
        //  %r866 = add i32 %r865, 0

        mov     x10, x9
        //  %r867 = add i32 4, %r662

        str     x16, [sp, #-8]!
        mov     x17, #4
        str     x17, [sp, #-8]!
        ldr     x18, [sp], #8
        str     x19, [sp, #-8]!
        add     x16, x17, x18
        str     x16, [sp, #-8]!
        //  %r422 = load i32, i32* @a4

        str     x17, [sp, #-8]!
        ldr     x18, [sp], #8
        adrp     x18, a4
        add     x18, x18, #:lo12:a4
        str     x19, [sp, #-8]!
        ldr     x17, [sp], #8
        ldr     x16, [x17]
        str     x16, [sp, #-8]!
        //  %r868 = add i32 %r867, %r422

        ldr     x18, [sp], #8
        ldr     x19, [sp], #8
        add     x9, x18, x19
        //  %r869 = add i32 %r868, 0

        mov     x9, x9
        //  %r870 = add i32 %r761, %r656

        ldr     x16, [sp], #8
        ldr     x17, [sp], #8
        add     x15, x16, x17
        //  %r871 = add i32 %r870, %r658

        ldr     x18, [sp], #8
        str     x19, [sp, #-8]!
        add     x16, x15, x18
        str     x16, [sp, #-8]!
        //  %r872 = add i32 %r871, %r660

        ldr     x17, [sp], #8
        ldr     x18, [sp], #8
        add     x15, x17, x18
        //  %r873 = add i32 %r872, %r662

        ldr     x19, [sp], #8
        add     x15, x15, x19
        //  %r874 = sub i32 %r873, %r860

        sub     x11, x15, x11
        //  %r875 = sub i32 %r874, %r863

        ldr     x16, [sp], #8
        str     x17, [sp, #-8]!
        sub     x18, x11, x16
        str     x18, [sp, #-8]!
        //  %r876 = sub i32 %r875, %r866

        ldr     x19, [sp], #8
        sub     x10, x19, x10
        //  %r877 = sub i32 %r876, %r869

        sub     x9, x10, x9
        //  %r878 = add i32 %r877, %r836

        add     x9, x9, x14
        //  %r879 = add i32 %r878, %r839

        ldr     x16, [sp], #8
        str     x17, [sp, #-8]!
        add     x18, x9, x16
        str     x18, [sp, #-8]!
        //  %r880 = add i32 %r879, %r842

        ldr     x19, [sp], #8
        add     x9, x19, x13
        //  %r881 = add i32 %r880, %r845

        add     x9, x9, x12
        //  %r882 = sub i32 %r881, %r824

        ldr     x16, [sp], #8
        sub     x9, x9, x16
        //  %r883 = sub i32 %r882, %r827

        ldr     x17, [sp], #8
        str     x18, [sp, #-8]!
        sub     x19, x9, x17
        str     x19, [sp, #-8]!
        //  %r884 = sub i32 %r883, %r830

        ldr     x16, [sp], #8
        ldr     x17, [sp], #8
        sub     x9, x16, x17
        //  %r885 = sub i32 %r884, %r833

        ldr     x18, [sp], #8
        sub     x9, x9, x18
        //  %r886 = add i32 %r885, %r812

        ldr     x19, [sp], #8
        add     x9, x9, x19
        //  %r887 = add i32 %r886, %r815

        ldr     x16, [sp], #8
        str     x17, [sp, #-8]!
        add     x18, x9, x16
        str     x18, [sp, #-8]!
        //  %r888 = add i32 %r887, %r818

        ldr     x19, [sp], #8
        ldr     x16, [sp], #8
        add     x9, x19, x16
        //  %r889 = add i32 %r888, %r821

        ldr     x17, [sp], #8
        add     x9, x9, x17
        //  %r890 = sub i32 %r889, %r800

        ldr     x18, [sp], #8
        sub     x9, x9, x18
        //  %r891 = sub i32 %r890, %r803

        ldr     x19, [sp], #8
        str     x16, [sp, #-8]!
        sub     x17, x9, x19
        str     x17, [sp, #-8]!
        //  %r892 = sub i32 %r891, %r806

        ldr     x18, [sp], #8
        ldr     x19, [sp], #8
        sub     x9, x18, x19
        //  %r893 = sub i32 %r892, %r809

        ldr     x16, [sp], #8
        sub     x9, x9, x16
        //  %r894 = add i32 %r893, %r788

        ldr     x17, [sp], #8
        add     x9, x9, x17
        //  %r895 = add i32 %r894, %r791

        ldr     x18, [sp], #8
        str     x19, [sp, #-8]!
        add     x16, x9, x18
        str     x16, [sp, #-8]!
        //  %r896 = add i32 %r895, %r794

        ldr     x17, [sp], #8
        ldr     x18, [sp], #8
        add     x9, x17, x18
        //  %r897 = add i32 %r896, %r797

        ldr     x19, [sp], #8
        add     x9, x9, x19
        //  %r898 = sub i32 %r897, %r776

        ldr     x16, [sp], #8
        sub     x9, x9, x16
        //  %r899 = sub i32 %r898, %r779

        ldr     x17, [sp], #8
        sub     x9, x9, x17
        //  %r900 = sub i32 %r899, %r782

        ldr     x18, [sp], #8
        sub     x9, x9, x18
        //  %r901 = sub i32 %r900, %r785

        ldr     x19, [sp], #8
        sub     x9, x9, x19
        //  %r902 = add i32 %r901, %r764

        ldr     x16, [sp], #8
        add     x9, x9, x16
        //  %r903 = add i32 %r902, %r767

        ldr     x17, [sp], #8
        add     x9, x9, x17
        //  %r904 = add i32 %r903, %r770

        ldr     x18, [sp], #8
        add     x9, x9, x18
        //  %r905 = add i32 %r904, %r773

        ldr     x19, [sp], #8
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
