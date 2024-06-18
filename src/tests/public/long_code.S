.section .data
.global    n
n:
        .quad   0
.section .text
.global getch
.global getint
.global putch
.global putint
.global putarray
.global _sysy_starttime
.global _sysy_stoptime
.global bubblesort
.global insertsort
.global QuickSort
.global getMid
.global getMost
.global revert
.global arrCopy
.global calSum
.global avgPooling
.global main
bubblesort:

        //bb1:

bb1:

        //  %r569 = add i32 0, 0

        mov     x16, #0
        sub     sp, sp, x16
        mov     x12, x0
        //  %r570 = add i32 0, 0

        //  %r571 = add i32 0, 0

        //  %r572 = add i32 0, 0

        //  %r573 = add i32 0, 0

        //  %r574 = add i32 0, 0

        mov     x9, #0
        mov     x10, x9
        //  br label %bb2


        b     bb2
        //bb2:

bb2:

        //  %r575 = phi i32 [ %r574, %bb1 ], [ %r584, %bb7 ]

        //  %r104 = load i32, i32* @n

        adrp     x9, n
        add     x9, x9, #:lo12:n
        ldr     x9, [x9]
        //  %r576 = sub i32 %r104, 1

        mov     x11, #1
        sub     x9, x9, x11
        //  %r577 = icmp slt i32 %r575, %r576

        cmp     x10, x9
        //  br i1 %r577, label %bb3, label %bb4


        b.lt     bb3
        b     bb4
        //bb3:

bb3:

        //  %r578 = add i32 0, 0

        mov     x9, #0
        mov     x9, x9
        //  br label %bb5


        b     bb5
        //bb5:

bb5:

        //  %r579 = phi i32 [ %r578, %bb3 ], [ %r589, %bb10 ]

        //  %r108 = load i32, i32* @n

        adrp     x11, n
        add     x11, x11, #:lo12:n
        ldr     x11, [x11]
        //  %r580 = sub i32 %r108, %r575

        sub     x11, x11, x10
        //  %r581 = sub i32 %r580, 1

        mov     x13, #1
        sub     x11, x11, x13
        //  %r582 = icmp slt i32 %r579, %r581

        cmp     x9, x11
        //  br i1 %r582, label %bb6, label %bb7


        b.lt     bb6
        b     bb7
        //bb6:

bb6:

        //  %r585 = add i32 %r579, 1

        mov     x11, #1
        add     x11, x9, x11
        //  %r586 = add i32 %r585, 0

        mov     x11, x11
        //  %r117 = getelementptr i32, i32* %r100, i32 %r579

        mov     x13, #8
        mul     x13, x13, x9
        add     x13, x12, x13
        //  %r118 = load i32, i32* %r117

        ldr     x14, [x13]
        //  %r120 = getelementptr i32, i32* %r100, i32 %r586

        mov     x13, #8
        mul     x11, x13, x11
        add     x11, x12, x11
        //  %r121 = load i32, i32* %r120

        ldr     x11, [x11]
        //  %r587 = icmp sgt i32 %r118, %r121

        cmp     x14, x11
        //  br i1 %r587, label %bb8, label %bb9


        b.gt     bb8
        b     bb9
        //bb8:

bb8:

        //  %r590 = add i32 %r579, 1

        mov     x11, #1
        add     x11, x9, x11
        //  %r591 = add i32 %r590, 0

        mov     x14, x11
        //  %r128 = getelementptr i32, i32* %r100, i32 %r591

        mov     x11, #8
        mul     x11, x11, x14
        add     x11, x12, x11
        //  %r129 = load i32, i32* %r128

        ldr     x11, [x11]
        //  %r592 = add i32 %r129, 0

        mov     x11, x11
        //  %r131 = getelementptr i32, i32* %r100, i32 %r579

        mov     x13, #8
        mul     x13, x13, x9
        add     x13, x12, x13
        //  %r132 = load i32, i32* %r131

        ldr     x13, [x13]
        //  %r134 = getelementptr i32, i32* %r100, i32 %r591

        mov     x15, #8
        mul     x14, x15, x14
        add     x14, x12, x14
        //  store i32 %r132, i32* %r134

        str     x13, [x14]
        //  %r137 = getelementptr i32, i32* %r100, i32 %r579

        mov     x13, #8
        mul     x13, x13, x9
        add     x13, x12, x13
        //  store i32 %r592, i32* %r137

        str     x11, [x13]
        //  br label %bb10


        b     bb10
        //bb9:

bb9:

        //  br label %bb10


        b     bb10
        //bb10:

bb10:

        //  %r588 = add i32 %r579, 1

        mov     x11, #1
        add     x9, x9, x11
        //  %r589 = add i32 %r588, 0

        mov     x9, x9
        mov     x9, x9
        //  br label %bb5


        b     bb5
        //bb7:

bb7:

        //  %r583 = add i32 %r575, 1

        mov     x9, #1
        add     x9, x10, x9
        //  %r584 = add i32 %r583, 0

        mov     x9, x9
        mov     x10, x9
        //  br label %bb2


        b     bb2
        //bb4:

bb4:

        //  ret i32 0

        mov     x9, #0
        mov     x0, x9
        mov     sp, x29
        ret
insertsort:

        //bb11:

bb11:

        //  %r598 = add i32 0, 0

        mov     x16, #0
        sub     sp, sp, x16
        mov     x11, x0
        //  %r599 = add i32 0, 0

        //  %r600 = add i32 0, 0

        //  %r601 = add i32 0, 0

        //  %r602 = add i32 0, 0

        //  %r603 = add i32 1, 0

        mov     x9, #1
        mov     x9, x9
        //  br label %bb12


        b     bb12
        //bb12:

bb12:

        //  %r604 = phi i32 [ %r603, %bb11 ], [ %r615, %bb17 ]

        //  %r145 = load i32, i32* @n

        adrp     x10, n
        add     x10, x10, #:lo12:n
        ldr     x10, [x10]
        //  %r605 = icmp slt i32 %r604, %r145

        cmp     x9, x10
        //  br i1 %r605, label %bb13, label %bb14


        b.lt     bb13
        b     bb14
        //bb13:

bb13:

        //  %r149 = getelementptr i32, i32* %r142, i32 %r604

        mov     x10, #8
        mul     x10, x10, x9
        add     x10, x11, x10
        //  %r150 = load i32, i32* %r149

        ldr     x10, [x10]
        //  %r606 = add i32 %r150, 0

        mov     x10, x10
        //  %r607 = sub i32 %r604, 1

        mov     x12, #1
        sub     x12, x9, x12
        //  %r608 = add i32 %r607, 0

        mov     x12, x12
        mov     x13, x12
        //  br label %bb15


        b     bb15
        //bb15:

bb15:

        //  %r609 = phi i32 [ %r608, %bb13 ], [ %r620, %bb16 ]

        //  %r610 = sub i32 0, 1

        mov     x14, #0
        mov     x12, #1
        sub     x12, x14, x12
        //  %r611 = icmp sgt i32 %r609, %r610

        cmp     x13, x12
        //  br i1 %r611, label %bb18, label %bb17


        b.gt     bb18
        b     bb17
        //bb18:

bb18:

        //  %r160 = getelementptr i32, i32* %r142, i32 %r609

        mov     x12, #8
        mul     x12, x12, x13
        add     x12, x11, x12
        //  %r161 = load i32, i32* %r160

        ldr     x12, [x12]
        //  %r616 = icmp slt i32 %r606, %r161

        cmp     x10, x12
        //  br i1 %r616, label %bb16, label %bb17


        b.lt     bb16
        b     bb17
        //bb16:

bb16:

        //  %r617 = add i32 %r609, 1

        mov     x12, #1
        add     x12, x13, x12
        //  %r618 = add i32 %r617, 0

        mov     x14, x12
        //  %r167 = getelementptr i32, i32* %r142, i32 %r609

        mov     x12, #8
        mul     x12, x12, x13
        add     x12, x11, x12
        //  %r168 = load i32, i32* %r167

        ldr     x12, [x12]
        //  %r170 = getelementptr i32, i32* %r142, i32 %r618

        mov     x15, #8
        mul     x14, x15, x14
        add     x14, x11, x14
        //  store i32 %r168, i32* %r170

        str     x12, [x14]
        //  %r619 = sub i32 %r609, 1

        mov     x12, #1
        sub     x12, x13, x12
        //  %r620 = add i32 %r619, 0

        mov     x12, x12
        mov     x13, x12
        //  br label %bb15


        b     bb15
        //bb17:

bb17:

        //  %r612 = add i32 %r609, 1

        mov     x12, #1
        add     x12, x13, x12
        //  %r613 = add i32 %r612, 0

        mov     x13, x12
        //  %r178 = getelementptr i32, i32* %r142, i32 %r613

        mov     x12, #8
        mul     x12, x12, x13
        add     x12, x11, x12
        //  store i32 %r606, i32* %r178

        str     x10, [x12]
        //  %r614 = add i32 %r604, 1

        mov     x10, #1
        add     x9, x9, x10
        //  %r615 = add i32 %r614, 0

        mov     x9, x9
        mov     x9, x9
        //  br label %bb12


        b     bb12
        //bb14:

bb14:

        //  ret i32 0

        mov     x9, #0
        mov     x0, x9
        mov     sp, x29
        ret
QuickSort:

        //bb20:

bb20:

        //  %r627 = add i32 0, 0

        mov     x16, #0
        sub     sp, sp, x16
        mov     x10, x0
        mov     x11, x1
        mov     x9, x2
        //  %r628 = add i32 0, 0

        //  %r629 = add i32 0, 0

        //  %r630 = add i32 0, 0

        //  %r631 = add i32 0, 0

        //  %r632 = add i32 %r182, 0

        mov     x11, x11
        //  %r633 = add i32 0, 0

        //  %r634 = add i32 %r184, 0

        mov     x14, x9
        //  br label %bb19


        b     bb19
        //bb19:

bb19:

        //  %r635 = icmp slt i32 %r632, %r634

        cmp     x11, x14
        //  br i1 %r635, label %bb21, label %bb22


        b.lt     bb21
        b     bb22
        //bb21:

bb21:

        //  %r636 = add i32 %r632, 0

        mov     x9, x11
        //  %r637 = add i32 %r634, 0

        mov     x12, x14
        //  %r195 = getelementptr i32, i32* %r181, i32 %r632

        mov     x13, #8
        mul     x13, x13, x11
        add     x13, x10, x13
        //  %r196 = load i32, i32* %r195

        ldr     x13, [x13]
        //  %r638 = add i32 %r196, 0

        str     x16, [sp, #-8]!
        mov     x17, x13
        str     x17, [sp, #-8]!
        mov     x12, x12
        mov     x9, x9
        //  br label %bb24


        b     bb24
        //bb24:

bb24:

        //  %r639 = phi i32 [ %r637, %bb21 ], [ %r657, %bb40 ]

        //  %r640 = phi i32 [ %r636, %bb21 ], [ %r654, %bb40 ]

        //  %r641 = icmp slt i32 %r640, %r639

        cmp     x9, x12
        //  br i1 %r641, label %bb25, label %bb26


        b.lt     bb25
        b     bb26
        //bb25:

bb25:

        mov     x13, x12
        //  br label %bb27


        b     bb27
        //bb27:

bb27:

        //  %r650 = phi i32 [ %r639, %bb25 ], [ %r668, %bb28 ]

        //  %r651 = icmp slt i32 %r640, %r650

        cmp     x9, x13
        //  br i1 %r651, label %bb30, label %bb29


        b.lt     bb30
        b     bb29
        //bb30:

bb30:

        //  %r205 = getelementptr i32, i32* %r181, i32 %r650

        mov     x12, #8
        mul     x12, x12, x13
        add     x12, x10, x12
        //  %r206 = load i32, i32* %r205

        ldr     x15, [x12]
        //  %r665 = sub i32 %r638, 1

        mov     x12, #1
        ldr     x18, [sp], #8
        sub     x12, x18, x12
        //  %r666 = icmp sgt i32 %r206, %r665

        cmp     x15, x12
        //  br i1 %r666, label %bb28, label %bb29


        b.gt     bb28
        b     bb29
        //bb28:

bb28:

        //  %r667 = sub i32 %r650, 1

        mov     x12, #1
        sub     x12, x13, x12
        //  %r668 = add i32 %r667, 0

        mov     x12, x12
        mov     x13, x12
        //  br label %bb27


        b     bb27
        //bb29:

bb29:

        //  %r652 = icmp slt i32 %r640, %r650

        cmp     x9, x13
        //  br i1 %r652, label %bb31, label %bb32


        b.lt     bb31
        b     bb32
        //bb31:

bb31:

        //  %r216 = getelementptr i32, i32* %r181, i32 %r650

        mov     x12, #8
        mul     x12, x12, x13
        add     x12, x10, x12
        //  %r217 = load i32, i32* %r216

        ldr     x15, [x12]
        //  %r219 = getelementptr i32, i32* %r181, i32 %r640

        mov     x12, #8
        str     x19, [sp, #-8]!
        mul     x16, x12, x9
        str     x16, [sp, #-8]!
        add     x12, x10, x16
        //  store i32 %r217, i32* %r219

        str     x15, [x12]
        //  %r663 = add i32 %r640, 1

        mov     x12, #1
        add     x9, x9, x12
        //  %r664 = add i32 %r663, 0

        mov     x9, x9
        mov     x9, x9
        //  br label %bb33


        b     bb33
        //bb32:

bb32:

        mov     x9, x9
        //  br label %bb33


        b     bb33
        //bb33:

bb33:

        //  %r653 = phi i32 [ %r664, %bb31 ], [ %r640, %bb32 ]

        mov     x9, x9
        //  br label %bb34


        b     bb34
        //bb34:

bb34:

        //  %r654 = phi i32 [ %r653, %bb33 ], [ %r662, %bb35 ]

        //  %r655 = icmp slt i32 %r654, %r650

        cmp     x9, x13
        //  br i1 %r655, label %bb37, label %bb36


        b.lt     bb37
        b     bb36
        //bb37:

bb37:

        //  %r227 = getelementptr i32, i32* %r181, i32 %r654

        mov     x12, #8
        mul     x12, x12, x9
        add     x12, x10, x12
        //  %r228 = load i32, i32* %r227

        ldr     x12, [x12]
        //  %r660 = icmp slt i32 %r228, %r638

        ldr     x17, [sp], #8
        cmp     x12, x17
        //  br i1 %r660, label %bb35, label %bb36


        b.lt     bb35
        b     bb36
        //bb35:

bb35:

        //  %r661 = add i32 %r654, 1

        mov     x12, #1
        add     x9, x9, x12
        //  %r662 = add i32 %r661, 0

        mov     x9, x9
        mov     x9, x9
        //  br label %bb34


        b     bb34
        //bb36:

bb36:

        //  %r656 = icmp slt i32 %r654, %r650

        cmp     x9, x13
        //  br i1 %r656, label %bb38, label %bb39


        b.lt     bb38
        b     bb39
        //bb38:

bb38:

        //  %r237 = getelementptr i32, i32* %r181, i32 %r654

        mov     x12, #8
        mul     x12, x12, x9
        add     x12, x10, x12
        //  %r238 = load i32, i32* %r237

        ldr     x15, [x12]
        //  %r240 = getelementptr i32, i32* %r181, i32 %r650

        str     x18, [sp, #-8]!
        mov     x19, #8
        str     x19, [sp, #-8]!
        str     x16, [sp, #-8]!
        mul     x17, x19, x13
        str     x17, [sp, #-8]!
        add     x12, x10, x17
        //  store i32 %r238, i32* %r240

        str     x15, [x12]
        //  %r658 = sub i32 %r650, 1

        mov     x12, #1
        sub     x12, x13, x12
        //  %r659 = add i32 %r658, 0

        mov     x12, x12
        mov     x12, x12
        //  br label %bb40


        b     bb40
        //bb39:

bb39:

        mov     x12, x13
        //  br label %bb40


        b     bb40
        //bb40:

bb40:

        //  %r657 = phi i32 [ %r659, %bb38 ], [ %r650, %bb39 ]

        mov     x12, x12
        mov     x9, x9
        //  br label %bb24


        b     bb24
        //bb26:

bb26:

        //  %r245 = getelementptr i32, i32* %r181, i32 %r640

        mov     x12, #8
        mul     x12, x12, x9
        add     x12, x10, x12
        //  store i32 %r638, i32* %r245

        ldr     x18, [sp], #8
        str     x18, [x12]
        //  %r642 = sub i32 %r640, 1

        mov     x12, #1
        sub     x12, x9, x12
        //  %r643 = add i32 %r642, 0

        mov     x12, x12
        //  %r644 = call i32 @QuickSort(i32* %r181, i32 %r632, i32 %r643)

        mov     x0, x10
        mov     x1, x11
        mov     x2, x12
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     QuickSort
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x11, x0
        //  %r645 = add i32 %r644, 0

        //  %r646 = add i32 %r640, 1

        mov     x11, #1
        add     x9, x9, x11
        //  %r647 = add i32 %r646, 0

        mov     x9, x9
        //  %r648 = call i32 @QuickSort(i32* %r181, i32 %r647, i32 %r634)

        mov     x0, x10
        mov     x1, x9
        mov     x2, x14
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     QuickSort
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        //  %r649 = add i32 %r648, 0

        //  br label %bb23


        b     bb23
        //bb22:

bb22:

        //  br label %bb23


        b     bb23
        //bb23:

bb23:

        //  ret i32 0

        mov     x9, #0
        mov     x0, x9
        mov     sp, x29
        ret
getMid:

        //bb41:

bb41:

        //  %r671 = add i32 0, 0

        mov     x16, #0
        sub     sp, sp, x16
        mov     x9, x0
        //  %r672 = add i32 0, 0

        //  %r259 = load i32, i32* @n

        adrp     x10, n
        add     x10, x10, #:lo12:n
        ldr     x11, [x10]
        //  %r673 = sdiv i32 %r259, 2

        mov     x10, #2
        sdiv     x10, x11, x10
        //  %r674 = mul i32 %r673, 2

        mov     x11, #2
        mul     x10, x10, x11
        //  %r262 = load i32, i32* @n

        adrp     x11, n
        add     x11, x11, #:lo12:n
        ldr     x11, [x11]
        //  %r675 = icmp eq i32 %r674, %r262

        cmp     x10, x11
        //  br i1 %r675, label %bb42, label %bb43


        b.eq     bb42
        b     bb43
        //bb42:

bb42:

        //  %r264 = load i32, i32* @n

        adrp     x10, n
        add     x10, x10, #:lo12:n
        ldr     x11, [x10]
        //  %r678 = sdiv i32 %r264, 2

        mov     x10, #2
        sdiv     x10, x11, x10
        //  %r679 = add i32 %r678, 0

        mov     x11, x10
        //  %r680 = sub i32 %r679, 1

        mov     x10, #1
        sub     x10, x11, x10
        //  %r681 = add i32 %r680, 0

        mov     x10, x10
        //  %r270 = getelementptr i32, i32* %r257, i32 %r679

        mov     x12, #8
        mul     x11, x12, x11
        add     x11, x9, x11
        //  %r271 = load i32, i32* %r270

        ldr     x11, [x11]
        //  %r273 = getelementptr i32, i32* %r257, i32 %r681

        mov     x12, #8
        mul     x10, x12, x10
        add     x9, x9, x10
        //  %r274 = load i32, i32* %r273

        ldr     x9, [x9]
        //  %r682 = add i32 %r271, %r274

        add     x9, x11, x9
        //  %r683 = sdiv i32 %r682, 2

        mov     x10, #2
        sdiv     x9, x9, x10
        //  ret i32 %r683

        mov     x0, x9
        mov     sp, x29
        ret
        //bb43:

bb43:

        //  %r277 = load i32, i32* @n

        adrp     x10, n
        add     x10, x10, #:lo12:n
        ldr     x10, [x10]
        //  %r676 = sdiv i32 %r277, 2

        mov     x11, #2
        sdiv     x10, x10, x11
        //  %r677 = add i32 %r676, 0

        mov     x10, x10
        //  %r280 = getelementptr i32, i32* %r257, i32 %r677

        mov     x11, #8
        mul     x10, x11, x10
        add     x9, x9, x10
        //  %r281 = load i32, i32* %r280

        ldr     x9, [x9]
        //  ret i32 %r281

        mov     x0, x9
        mov     sp, x29
        ret
getMost:

        //283:x29,#-8000

        //bb45:

bb45:

        //  %r688 = add i32 0, 0

        mov     x16, #8000
        sub     sp, sp, x16
        mov     x14, x0
        //  %r689 = add i32 0, 0

        mov     x9, #0
        //  %r690 = add i32 0, 0

        //  %r283 = alloca [ 1000 x i32 ]

        //  %r691 = add i32 0, 0

        //  %r692 = add i32 0, 0

        mov     x10, #0
        mov     x11, x10
        //  br label %bb46


        b     bb46
        //bb46:

bb46:

        //  %r693 = phi i32 [ %r692, %bb45 ], [ %r711, %bb47 ]

        //  %r694 = icmp slt i32 %r693, 1000

        mov     x10, #1000
        cmp     x11, x10
        //  br i1 %r694, label %bb47, label %bb48


        b.lt     bb47
        b     bb48
        //bb47:

bb47:

        //  %r288 = getelementptr [1000 x i32 ], [1000 x i32 ]* %r283, i32 0, i32 %r693

        mov     x10, #8
        mul     x10, x10, x11
        add     x12, x29, #-8000
        add     x10, x12, x10
        //  store i32 0, i32* %r288

        mov     x12, #0
        str     x12, [x10]
        //  %r710 = add i32 %r693, 1

        mov     x10, #1
        add     x10, x11, x10
        //  %r711 = add i32 %r710, 0

        mov     x10, x10
        mov     x11, x10
        //  br label %bb46


        b     bb46
        //bb48:

bb48:

        //  %r695 = add i32 0, 0

        mov     x11, #0
        //  %r696 = add i32 0, 0

        mov     x10, #0
        mov     x13, x11
        mov     x12, x10
        mov     x11, x9
        //  br label %bb49


        b     bb49
        //bb49:

bb49:

        //  %r697 = phi i32 [ %r695, %bb48 ], [ %r707, %bb54 ]

        //  %r698 = phi i32 [ %r696, %bb48 ], [ %r704, %bb54 ]

        //  %r699 = phi i32 [ %r689, %bb48 ], [ %r705, %bb54 ]

        //  %r294 = load i32, i32* @n

        adrp     x9, n
        add     x9, x9, #:lo12:n
        ldr     x9, [x9]
        //  %r700 = icmp slt i32 %r697, %r294

        cmp     x13, x9
        //  br i1 %r700, label %bb50, label %bb51


        b.lt     bb50
        b     bb51
        //bb50:

bb50:

        //  %r298 = getelementptr i32, i32* %r282, i32 %r697

        mov     x9, #8
        mul     x9, x9, x13
        add     x9, x14, x9
        //  %r299 = load i32, i32* %r298

        ldr     x9, [x9]
        //  %r701 = add i32 %r299, 0

        mov     x10, x9
        //  %r301 = getelementptr [1000 x i32 ], [1000 x i32 ]* %r283, i32 0, i32 %r701

        mov     x9, #8
        mul     x9, x9, x10
        add     x15, x29, #-8000
        add     x9, x15, x9
        //  %r302 = load i32, i32* %r301

        ldr     x9, [x9]
        //  %r702 = add i32 %r302, 1

        mov     x15, #1
        add     x9, x9, x15
        //  %r305 = getelementptr [1000 x i32 ], [1000 x i32 ]* %r283, i32 0, i32 %r701

        mov     x15, #8
        mul     x15, x15, x10
        str     x19, [sp, #-8]!
        add     x16, x29, #-8000
        str     x16, [sp, #-8]!
        add     x15, x16, x15
        //  store i32 %r702, i32* %r305

        str     x9, [x15]
        //  %r307 = getelementptr [1000 x i32 ], [1000 x i32 ]* %r283, i32 0, i32 %r701

        mov     x9, #8
        mul     x9, x9, x10
        add     x15, x29, #-8000
        add     x9, x15, x9
        //  %r308 = load i32, i32* %r307

        ldr     x9, [x9]
        //  %r703 = icmp sgt i32 %r308, %r698

        cmp     x9, x12
        //  br i1 %r703, label %bb52, label %bb53


        b.gt     bb52
        b     bb53
        //bb52:

bb52:

        //  %r312 = getelementptr [1000 x i32 ], [1000 x i32 ]* %r283, i32 0, i32 %r701

        mov     x9, #8
        mul     x9, x9, x10
        add     x11, x29, #-8000
        add     x9, x11, x9
        //  %r313 = load i32, i32* %r312

        ldr     x9, [x9]
        //  %r708 = add i32 %r313, 0

        mov     x9, x9
        //  %r709 = add i32 %r701, 0

        mov     x10, x10
        mov     x12, x9
        mov     x9, x10
        //  br label %bb54


        b     bb54
        //bb53:

bb53:

        mov     x12, x12
        mov     x9, x11
        //  br label %bb54


        b     bb54
        //bb54:

bb54:

        //  %r704 = phi i32 [ %r708, %bb52 ], [ %r698, %bb53 ]

        //  %r705 = phi i32 [ %r709, %bb52 ], [ %r699, %bb53 ]

        //  %r706 = add i32 %r697, 1

        mov     x10, #1
        add     x10, x13, x10
        //  %r707 = add i32 %r706, 0

        mov     x10, x10
        mov     x13, x10
        mov     x12, x12
        mov     x11, x9
        //  br label %bb49


        b     bb49
        //bb51:

bb51:

        //  ret i32 %r699

        mov     x0, x11
        mov     sp, x29
        ret
revert:

        //bb55:

bb55:

        //  %r715 = add i32 0, 0

        mov     x16, #0
        sub     sp, sp, x16
        mov     x11, x0
        //  %r716 = add i32 0, 0

        //  %r717 = add i32 0, 0

        //  %r718 = add i32 0, 0

        mov     x10, #0
        //  %r719 = add i32 0, 0

        mov     x9, #0
        mov     x12, x9
        mov     x10, x10
        //  br label %bb56


        b     bb56
        //bb56:

bb56:

        //  %r720 = phi i32 [ %r719, %bb55 ], [ %r727, %bb57 ]

        //  %r721 = phi i32 [ %r718, %bb55 ], [ %r725, %bb57 ]

        //  %r722 = icmp slt i32 %r721, %r720

        cmp     x10, x12
        //  br i1 %r722, label %bb57, label %bb58


        b.lt     bb57
        b     bb58
        //bb57:

bb57:

        //  %r326 = getelementptr i32, i32* %r318, i32 %r721

        mov     x9, #8
        mul     x9, x9, x10
        add     x9, x11, x9
        //  %r327 = load i32, i32* %r326

        ldr     x9, [x9]
        //  %r723 = add i32 %r327, 0

        mov     x9, x9
        //  %r329 = getelementptr i32, i32* %r318, i32 %r720

        mov     x13, #8
        mul     x13, x13, x12
        add     x13, x11, x13
        //  %r330 = load i32, i32* %r329

        ldr     x14, [x13]
        //  %r332 = getelementptr i32, i32* %r318, i32 %r721

        mov     x13, #8
        mul     x13, x13, x10
        add     x13, x11, x13
        //  store i32 %r330, i32* %r332

        str     x14, [x13]
        //  %r335 = getelementptr i32, i32* %r318, i32 %r720

        mov     x13, #8
        mul     x13, x13, x12
        add     x13, x11, x13
        //  store i32 %r723, i32* %r335

        str     x9, [x13]
        //  %r724 = add i32 %r721, 1

        mov     x9, #1
        add     x9, x10, x9
        //  %r725 = add i32 %r724, 0

        mov     x10, x9
        //  %r726 = sub i32 %r720, 1

        mov     x9, #1
        sub     x9, x12, x9
        //  %r727 = add i32 %r726, 0

        mov     x9, x9
        mov     x12, x9
        mov     x10, x10
        //  br label %bb56


        b     bb56
        //bb58:

bb58:

        //  ret i32 0

        mov     x9, #0
        mov     x0, x9
        mov     sp, x29
        ret
arrCopy:

        //bb59:

bb59:

        //  %r729 = add i32 0, 0

        mov     x16, #0
        sub     sp, sp, x16
        mov     x11, x0
        mov     x10, x1
        //  %r730 = add i32 0, 0

        mov     x9, #0
        mov     x9, x9
        //  br label %bb60


        b     bb60
        //bb60:

bb60:

        //  %r731 = phi i32 [ %r730, %bb59 ], [ %r734, %bb61 ]

        //  %r344 = load i32, i32* @n

        adrp     x12, n
        add     x12, x12, #:lo12:n
        ldr     x12, [x12]
        //  %r732 = icmp slt i32 %r731, %r344

        cmp     x9, x12
        //  br i1 %r732, label %bb61, label %bb62


        b.lt     bb61
        b     bb62
        //bb61:

bb61:

        //  %r347 = getelementptr i32, i32* %r340, i32 %r731

        mov     x12, #8
        mul     x12, x12, x9
        add     x12, x11, x12
        //  %r348 = load i32, i32* %r347

        ldr     x13, [x12]
        //  %r350 = getelementptr i32, i32* %r341, i32 %r731

        mov     x12, #8
        mul     x12, x12, x9
        add     x12, x10, x12
        //  store i32 %r348, i32* %r350

        str     x13, [x12]
        //  %r733 = add i32 %r731, 1

        mov     x12, #1
        add     x9, x9, x12
        //  %r734 = add i32 %r733, 0

        mov     x9, x9
        mov     x9, x9
        //  br label %bb60


        b     bb60
        //bb62:

bb62:

        //  ret i32 0

        mov     x9, #0
        mov     x0, x9
        mov     sp, x29
        ret
calSum:

        //bb64:

bb64:

        //  %r738 = add i32 0, 0

        mov     x16, #0
        sub     sp, sp, x16
        mov     x11, x0
        mov     x9, x1
        //  %r739 = add i32 0, 0

        //  %r740 = add i32 0, 0

        //  %r741 = add i32 %r354, 0

        mov     x12, x9
        //  br label %bb63


        b     bb63
        //bb63:

bb63:

        //  %r742 = add i32 0, 0

        mov     x10, #0
        //  %r743 = add i32 0, 0

        mov     x9, #0
        mov     x13, x10
        mov     x10, x9
        //  br label %bb65


        b     bb65
        //bb65:

bb65:

        //  %r744 = phi i32 [ %r742, %bb63 ], [ %r754, %bb70 ]

        //  %r745 = phi i32 [ %r743, %bb63 ], [ %r756, %bb70 ]

        //  %r359 = load i32, i32* @n

        adrp     x9, n
        add     x9, x9, #:lo12:n
        ldr     x9, [x9]
        //  %r746 = icmp slt i32 %r745, %r359

        cmp     x10, x9
        //  br i1 %r746, label %bb66, label %bb67


        b.lt     bb66
        b     bb67
        //bb66:

bb66:

        //  %r363 = getelementptr i32, i32* %r353, i32 %r745

        mov     x9, #8
        mul     x9, x9, x10
        add     x9, x11, x9
        //  %r364 = load i32, i32* %r363

        ldr     x9, [x9]
        //  %r747 = add i32 %r744, %r364

        add     x9, x13, x9
        //  %r748 = add i32 %r747, 0

        mov     x9, x9
        //  %r749 = sdiv i32 %r745, %r741

        sdiv     x13, x10, x12
        //  %r750 = mul i32 %r749, %r741

        mul     x13, x13, x12
        //  %r751 = sub i32 %r745, %r750

        sub     x14, x10, x13
        //  %r752 = sub i32 %r741, 1

        mov     x13, #1
        sub     x13, x12, x13
        //  %r753 = icmp ne i32 %r751, %r752

        cmp     x14, x13
        //  br i1 %r753, label %bb68, label %bb69


        b.ne     bb68
        b     bb69
        //bb68:

bb68:

        //  %r377 = getelementptr i32, i32* %r353, i32 %r745

        mov     x13, #8
        mul     x13, x13, x10
        add     x14, x11, x13
        //  store i32 0, i32* %r377

        mov     x13, #0
        str     x13, [x14]
        mov     x13, x9
        //  br label %bb70


        b     bb70
        //bb69:

bb69:

        //  %r380 = getelementptr i32, i32* %r353, i32 %r745

        mov     x13, #8
        mul     x13, x13, x10
        add     x13, x11, x13
        //  store i32 %r748, i32* %r380

        str     x9, [x13]
        //  %r757 = add i32 0, 0

        mov     x9, #0
        mov     x13, x9
        //  br label %bb70


        b     bb70
        //bb70:

bb70:

        //  %r754 = phi i32 [ %r748, %bb68 ], [ %r757, %bb69 ]

        //  %r755 = add i32 %r745, 1

        mov     x9, #1
        add     x9, x10, x9
        //  %r756 = add i32 %r755, 0

        mov     x9, x9
        mov     x13, x13
        mov     x10, x9
        //  br label %bb65


        b     bb65
        //bb67:

bb67:

        //  ret i32 0

        mov     x9, #0
        mov     x0, x9
        mov     sp, x29
        ret
avgPooling:

        //bb72:

bb72:

        //  %r763 = add i32 0, 0

        mov     x16, #0
        sub     sp, sp, x16
        mov     x12, x0
        mov     x10, x1
        //  %r764 = add i32 0, 0

        mov     x9, #0
        //  %r765 = add i32 0, 0

        //  %r766 = add i32 0, 0

        //  %r767 = add i32 0, 0

        //  %r768 = add i32 %r384, 0

        str     x17, [sp, #-8]!
        mov     x18, x10
        str     x18, [sp, #-8]!
        //  br label %bb71


        b     bb71
        //bb71:

bb71:

        //  %r769 = add i32 0, 0

        mov     x10, #0
        //  %r770 = add i32 0, 0

        mov     x11, #0
        mov     x9, x9
        mov     x14, x10
        mov     x11, x11
        //  br label %bb73


        b     bb73
        //bb73:

bb73:

        //  %r771 = phi i32 [ %r764, %bb71 ], [ %r784, %bb78 ]

        //  %r772 = phi i32 [ %r769, %bb71 ], [ %r787, %bb78 ]

        //  %r773 = phi i32 [ %r770, %bb71 ], [ %r785, %bb78 ]

        //  %r390 = load i32, i32* @n

        adrp     x10, n
        add     x10, x10, #:lo12:n
        ldr     x10, [x10]
        //  %r774 = icmp slt i32 %r772, %r390

        cmp     x14, x10
        //  br i1 %r774, label %bb74, label %bb75


        b.lt     bb74
        b     bb75
        //bb74:

bb74:

        //  %r782 = sub i32 %r768, 1

        mov     x10, #1
        ldr     x19, [sp], #8
        sub     x10, x19, x10
        //  %r783 = icmp slt i32 %r772, %r782

        cmp     x14, x10
        //  br i1 %r783, label %bb76, label %bb77


        b.lt     bb76
        b     bb77
        //bb76:

bb76:

        //  %r398 = getelementptr i32, i32* %r383, i32 %r772

        mov     x10, #8
        mul     x10, x10, x14
        add     x10, x12, x10
        //  %r399 = load i32, i32* %r398

        ldr     x10, [x10]
        //  %r802 = add i32 %r773, %r399

        add     x10, x11, x10
        //  %r803 = add i32 %r802, 0

        mov     x10, x10
        mov     x9, x9
        mov     x11, x10
        //  br label %bb78


        b     bb78
        //bb77:

bb77:

        //  %r788 = sub i32 %r768, 1

        mov     x10, #1
        ldr     x16, [sp], #8
        sub     x10, x16, x10
        //  %r789 = icmp eq i32 %r772, %r788

        cmp     x14, x10
        //  br i1 %r789, label %bb79, label %bb80


        b.eq     bb79
        b     bb80
        //bb79:

bb79:

        //  %r405 = getelementptr i32, i32* %r383, i32 0

        mov     x9, #8
        mov     x10, #0
        mul     x9, x9, x10
        add     x9, x12, x9
        //  %r406 = load i32, i32* %r405

        ldr     x9, [x9]
        //  %r800 = add i32 %r406, 0

        mov     x10, x9
        //  %r801 = sdiv i32 %r773, %r768

        ldr     x17, [sp], #8
        sdiv     x9, x11, x17
        //  %r410 = getelementptr i32, i32* %r383, i32 0

        mov     x13, #8
        str     x18, [sp, #-8]!
        mov     x19, #0
        str     x19, [sp, #-8]!
        mul     x13, x13, x19
        add     x13, x12, x13
        //  store i32 %r801, i32* %r410

        str     x9, [x13]
        mov     x9, x10
        mov     x10, x11
        //  br label %bb81


        b     bb81
        //bb80:

bb80:

        //  %r413 = getelementptr i32, i32* %r383, i32 %r772

        mov     x10, #8
        mul     x10, x10, x14
        add     x10, x12, x10
        //  %r414 = load i32, i32* %r413

        ldr     x10, [x10]
        //  %r792 = add i32 %r773, %r414

        add     x10, x11, x10
        //  %r793 = sub i32 %r792, %r771

        sub     x9, x10, x9
        //  %r794 = add i32 %r793, 0

        mov     x11, x9
        //  %r795 = sub i32 %r772, %r768

        ldr     x16, [sp], #8
        sub     x10, x14, x16
        //  %r796 = add i32 %r795, 1

        mov     x9, #1
        add     x9, x10, x9
        //  %r797 = add i32 %r796, 0

        mov     x13, x9
        //  %r424 = getelementptr i32, i32* %r383, i32 %r797

        mov     x9, #8
        mul     x9, x9, x13
        add     x9, x12, x9
        //  %r425 = load i32, i32* %r424

        ldr     x9, [x9]
        //  %r798 = add i32 %r425, 0

        mov     x10, x9
        //  %r799 = sdiv i32 %r794, %r768

        ldr     x17, [sp], #8
        sdiv     x9, x11, x17
        //  %r430 = getelementptr i32, i32* %r383, i32 %r797

        mov     x15, #8
        mul     x13, x15, x13
        add     x13, x12, x13
        //  store i32 %r799, i32* %r430

        str     x9, [x13]
        mov     x9, x10
        mov     x10, x11
        //  br label %bb81


        b     bb81
        //bb81:

bb81:

        //  %r790 = phi i32 [ %r800, %bb79 ], [ %r798, %bb80 ]

        //  %r791 = phi i32 [ %r773, %bb79 ], [ %r794, %bb80 ]

        mov     x9, x9
        mov     x11, x10
        //  br label %bb78


        b     bb78
        //bb78:

bb78:

        //  %r784 = phi i32 [ %r771, %bb76 ], [ %r790, %bb81 ]

        //  %r785 = phi i32 [ %r803, %bb76 ], [ %r791, %bb81 ]

        //  %r786 = add i32 %r772, 1

        mov     x10, #1
        add     x10, x14, x10
        //  %r787 = add i32 %r786, 0

        mov     x10, x10
        mov     x9, x9
        mov     x14, x10
        mov     x11, x11
        //  br label %bb73


        b     bb73
        //bb75:

bb75:

        //  %r433 = load i32, i32* @n

        adrp     x9, n
        add     x9, x9, #:lo12:n
        ldr     x9, [x9]
        //  %r775 = sub i32 %r433, %r768

        ldr     x18, [sp], #8
        sub     x10, x9, x18
        //  %r776 = add i32 %r775, 1

        mov     x9, #1
        add     x9, x10, x9
        //  %r777 = add i32 %r776, 0

        mov     x9, x9
        mov     x10, x9
        //  br label %bb82


        b     bb82
        //bb82:

bb82:

        //  %r778 = phi i32 [ %r777, %bb75 ], [ %r781, %bb83 ]

        //  %r438 = load i32, i32* @n

        adrp     x9, n
        add     x9, x9, #:lo12:n
        ldr     x9, [x9]
        //  %r779 = icmp slt i32 %r778, %r438

        cmp     x10, x9
        //  br i1 %r779, label %bb83, label %bb84


        b.lt     bb83
        b     bb84
        //bb83:

bb83:

        //  %r441 = getelementptr i32, i32* %r383, i32 %r778

        mov     x9, #8
        mul     x9, x9, x10
        add     x9, x12, x9
        //  store i32 0, i32* %r441

        mov     x11, #0
        str     x11, [x9]
        //  %r780 = add i32 %r778, 1

        mov     x9, #1
        add     x9, x10, x9
        //  %r781 = add i32 %r780, 0

        mov     x9, x9
        mov     x10, x9
        //  br label %bb82


        b     bb82
        //bb84:

bb84:

        //  ret i32 0

        mov     x9, #0
        mov     x0, x9
        mov     sp, x29
        ret
main:

        //445:x29,#-512

        //444:x29,#-256

        //bb85:

bb85:

        //  call void @_sysy_starttime(i32 209)

        mov     x16, #11
        sub     sp, sp, x16
        mov     x0, #209
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
        //  store i32 32, i32* @n

        mov     x11, #32
        adrp     x12, n
        add     x12, x12, #:lo12:n
        str     x11, [x12]
        //  %r444 = alloca [ 32 x i32 ]

        //  %r445 = alloca [ 32 x i32 ]

        //  %r446 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 0

        mov     x11, #8
        mov     x12, #0
        mul     x12, x11, x12
        add     x11, x29, #-256
        add     x11, x11, x12
        //  store i32 7, i32* %r446

        mov     x12, #7
        str     x12, [x11]
        //  %r447 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 1

        mov     x11, #8
        mov     x12, #1
        mul     x11, x11, x12
        add     x12, x29, #-256
        add     x12, x12, x11
        //  store i32 23, i32* %r447

        mov     x11, #23
        str     x11, [x12]
        //  %r448 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 2

        mov     x12, #8
        mov     x11, #2
        mul     x12, x12, x11
        add     x11, x29, #-256
        add     x12, x11, x12
        //  store i32 89, i32* %r448

        mov     x11, #89
        str     x11, [x12]
        //  %r449 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 3

        mov     x12, #8
        mov     x11, #3
        mul     x12, x12, x11
        add     x11, x29, #-256
        add     x12, x11, x12
        //  store i32 26, i32* %r449

        mov     x11, #26
        str     x11, [x12]
        //  %r450 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 4

        mov     x11, #8
        mov     x12, #4
        mul     x12, x11, x12
        add     x11, x29, #-256
        add     x12, x11, x12
        //  store i32 282, i32* %r450

        mov     x11, #282
        str     x11, [x12]
        //  %r451 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 5

        mov     x11, #8
        mov     x12, #5
        mul     x12, x11, x12
        add     x11, x29, #-256
        add     x12, x11, x12
        //  store i32 254, i32* %r451

        mov     x11, #254
        str     x11, [x12]
        //  %r452 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 6

        mov     x11, #8
        mov     x12, #6
        mul     x11, x11, x12
        add     x12, x29, #-256
        add     x12, x12, x11
        //  store i32 27, i32* %r452

        mov     x11, #27
        str     x11, [x12]
        //  %r453 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 7

        mov     x12, #8
        mov     x11, #7
        mul     x11, x12, x11
        add     x12, x29, #-256
        add     x11, x12, x11
        //  store i32 5, i32* %r453

        mov     x12, #5
        str     x12, [x11]
        //  %r454 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 8

        mov     x12, #8
        mov     x11, #8
        mul     x12, x12, x11
        add     x11, x29, #-256
        add     x11, x11, x12
        //  store i32 83, i32* %r454

        mov     x12, #83
        str     x12, [x11]
        //  %r455 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 9

        mov     x11, #8
        mov     x12, #9
        mul     x11, x11, x12
        add     x12, x29, #-256
        add     x11, x12, x11
        //  store i32 273, i32* %r455

        mov     x12, #273
        str     x12, [x11]
        //  %r456 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 10

        mov     x12, #8
        mov     x11, #10
        mul     x11, x12, x11
        add     x12, x29, #-256
        add     x11, x12, x11
        //  store i32 574, i32* %r456

        mov     x12, #574
        str     x12, [x11]
        //  %r457 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 11

        mov     x11, #8
        mov     x12, #11
        mul     x11, x11, x12
        add     x12, x29, #-256
        add     x11, x12, x11
        //  store i32 905, i32* %r457

        mov     x12, #905
        str     x12, [x11]
        //  %r458 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 12

        mov     x11, #8
        mov     x12, #12
        mul     x11, x11, x12
        add     x12, x29, #-256
        add     x11, x12, x11
        //  store i32 354, i32* %r458

        mov     x12, #354
        str     x12, [x11]
        //  %r459 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 13

        mov     x11, #8
        mov     x12, #13
        mul     x11, x11, x12
        add     x12, x29, #-256
        add     x12, x12, x11
        //  store i32 657, i32* %r459

        mov     x11, #657
        str     x11, [x12]
        //  %r460 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 14

        mov     x12, #8
        mov     x11, #14
        mul     x12, x12, x11
        add     x11, x29, #-256
        add     x12, x11, x12
        //  store i32 935, i32* %r460

        mov     x11, #935
        str     x11, [x12]
        //  %r461 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 15

        mov     x11, #8
        mov     x12, #15
        mul     x11, x11, x12
        add     x12, x29, #-256
        add     x11, x12, x11
        //  store i32 264, i32* %r461

        mov     x12, #264
        str     x12, [x11]
        //  %r462 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 16

        mov     x12, #8
        mov     x11, #16
        mul     x11, x12, x11
        add     x12, x29, #-256
        add     x11, x12, x11
        //  store i32 639, i32* %r462

        mov     x12, #639
        str     x12, [x11]
        //  %r463 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 17

        mov     x11, #8
        mov     x12, #17
        mul     x11, x11, x12
        add     x12, x29, #-256
        add     x11, x12, x11
        //  store i32 459, i32* %r463

        mov     x12, #12
        str     x12, [x11]
        //  %r464 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 18

        mov     x12, #8
        mov     x11, #18
        mul     x11, x12, x11
        add     x12, x29, #-256
        add     x11, x12, x11
        //  store i32 29, i32* %r464

        mov     x12, #29
        str     x12, [x11]
        //  %r465 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 19

        mov     x12, #8
        mov     x11, #19
        mul     x12, x12, x11
        add     x11, x29, #-256
        add     x12, x11, x12
        //  store i32 68, i32* %r465

        mov     x11, #68
        str     x11, [x12]
        //  %r466 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 20

        mov     x12, #8
        mov     x11, #20
        mul     x12, x12, x11
        add     x11, x29, #-256
        add     x12, x11, x12
        //  store i32 929, i32* %r466

        mov     x11, #929
        str     x11, [x12]
        //  %r467 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 21

        mov     x12, #8
        mov     x11, #21
        mul     x12, x12, x11
        add     x11, x29, #-256
        add     x12, x11, x12
        //  store i32 756, i32* %r467

        mov     x11, #756
        str     x11, [x12]
        //  %r468 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 22

        mov     x12, #8
        mov     x11, #22
        mul     x12, x12, x11
        add     x11, x29, #-256
        add     x12, x11, x12
        //  store i32 452, i32* %r468

        mov     x11, #12
        str     x11, [x12]
        //  %r469 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 23

        mov     x12, #8
        mov     x11, #23
        mul     x12, x12, x11
        add     x11, x29, #-256
        add     x12, x11, x12
        //  store i32 279, i32* %r469

        mov     x11, #279
        str     x11, [x12]
        //  %r470 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 24

        mov     x12, #8
        mov     x11, #24
        mul     x12, x12, x11
        add     x11, x29, #-256
        add     x12, x11, x12
        //  store i32 58, i32* %r470

        mov     x11, #58
        str     x11, [x12]
        //  %r471 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 25

        mov     x12, #8
        mov     x11, #25
        mul     x12, x12, x11
        add     x11, x29, #-256
        add     x12, x11, x12
        //  store i32 87, i32* %r471

        mov     x11, #87
        str     x11, [x12]
        //  %r472 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 26

        mov     x12, #8
        mov     x11, #26
        mul     x12, x12, x11
        add     x11, x29, #-256
        add     x12, x11, x12
        //  store i32 96, i32* %r472

        mov     x11, #96
        str     x11, [x12]
        //  %r473 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 27

        mov     x12, #8
        mov     x11, #27
        mul     x12, x12, x11
        add     x11, x29, #-256
        add     x11, x11, x12
        //  store i32 36, i32* %r473

        mov     x12, #36
        str     x12, [x11]
        //  %r474 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 28

        mov     x11, #8
        mov     x12, #28
        mul     x11, x11, x12
        add     x12, x29, #-256
        add     x11, x12, x11
        //  store i32 39, i32* %r474

        mov     x12, #39
        str     x12, [x11]
        //  %r475 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 29

        mov     x11, #8
        mov     x12, #29
        mul     x11, x11, x12
        add     x12, x29, #-256
        add     x11, x12, x11
        //  store i32 28, i32* %r475

        mov     x12, #28
        str     x12, [x11]
        //  %r476 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 30

        mov     x11, #8
        mov     x12, #30
        mul     x11, x11, x12
        add     x12, x29, #-256
        add     x11, x12, x11
        //  store i32 1, i32* %r476

        mov     x12, #1
        str     x12, [x11]
        //  %r477 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 31

        mov     x11, #8
        mov     x12, #31
        mul     x11, x11, x12
        add     x12, x29, #-256
        add     x11, x12, x11
        //  store i32 290, i32* %r477

        mov     x12, #290
        str     x12, [x11]
        //  %r806 = add i32 0, 0

        //  %r807 = call i32 @arrCopy(i32* %r444, i32* %r445)

        mov     x0, x10
        mov     x1, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     arrCopy
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x11, x0
        //  %r808 = add i32 %r807, 0

        //  %r809 = call i32 @revert(i32* %r445)

        mov     x0, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     revert
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x11, x0
        //  %r810 = add i32 %r809, 0

        //  %r811 = add i32 0, 0

        //  %r812 = add i32 0, 0

        mov     x11, #0
        mov     x11, x11
        //  br label %bb86


        b     bb86
        //bb86:

bb86:

        //  %r813 = phi i32 [ %r812, %bb85 ], [ %r880, %bb87 ]

        //  %r814 = icmp slt i32 %r813, 32

        mov     x12, #32
        cmp     x11, x12
        //  br i1 %r814, label %bb87, label %bb88


        b.lt     bb87
        b     bb88
        //bb87:

bb87:

        //  %r485 = getelementptr [32 x i32 ], [32 x i32 ]* %r445, i32 0, i32 %r813

        mov     x12, #8
        mul     x12, x12, x11
        add     x13, x29, #-512
        add     x12, x13, x12
        //  %r486 = load i32, i32* %r485

        ldr     x12, [x12]
        //  %r878 = add i32 %r486, 0

        mov     x12, x12
        //  call void @putint(i32 %r878)

        mov     x0, x12
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
        //  %r879 = add i32 %r813, 1

        mov     x12, #1
        add     x11, x11, x12
        //  %r880 = add i32 %r879, 0

        mov     x11, x11
        mov     x11, x11
        //  br label %bb86


        b     bb86
        //bb88:

bb88:

        //  %r815 = call i32 @bubblesort(i32* %r445)

        mov     x0, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     bubblesort
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x11, x0
        //  %r816 = add i32 %r815, 0

        //  %r817 = add i32 0, 0

        mov     x11, #0
        mov     x12, x11
        //  br label %bb89


        b     bb89
        //bb89:

bb89:

        //  %r818 = phi i32 [ %r817, %bb88 ], [ %r877, %bb90 ]

        //  %r819 = icmp slt i32 %r818, 32

        mov     x11, #32
        cmp     x12, x11
        //  br i1 %r819, label %bb90, label %bb91


        b.lt     bb90
        b     bb91
        //bb90:

bb90:

        //  %r495 = getelementptr [32 x i32 ], [32 x i32 ]* %r445, i32 0, i32 %r818

        mov     x11, #8
        mul     x11, x11, x12
        add     x13, x29, #-512
        add     x11, x13, x11
        //  %r496 = load i32, i32* %r495

        ldr     x11, [x11]
        //  %r875 = add i32 %r496, 0

        mov     x11, x11
        //  call void @putint(i32 %r875)

        mov     x0, x11
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
        //  %r876 = add i32 %r818, 1

        mov     x11, #1
        add     x11, x12, x11
        //  %r877 = add i32 %r876, 0

        mov     x11, x11
        mov     x12, x11
        //  br label %bb89


        b     bb89
        //bb91:

bb91:

        //  %r820 = call i32 @getMid(i32* %r445)

        mov     x0, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     getMid
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x11, x0
        //  %r821 = add i32 %r820, 0

        mov     x11, x11
        //  call void @putint(i32 %r821)

        mov     x0, x11
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
        //  %r822 = call i32 @getMost(i32* %r445)

        mov     x0, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     getMost
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x11, x0
        //  %r823 = add i32 %r822, 0

        mov     x11, x11
        //  call void @putint(i32 %r823)

        mov     x0, x11
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
        //  %r824 = call i32 @arrCopy(i32* %r444, i32* %r445)

        mov     x0, x10
        mov     x1, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     arrCopy
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x11, x0
        //  %r825 = add i32 %r824, 0

        //  %r826 = call i32 @bubblesort(i32* %r445)

        mov     x0, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     bubblesort
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x11, x0
        //  %r827 = add i32 %r826, 0

        //  %r828 = add i32 0, 0

        mov     x11, #0
        mov     x12, x11
        //  br label %bb92


        b     bb92
        //bb92:

bb92:

        //  %r829 = phi i32 [ %r828, %bb91 ], [ %r874, %bb93 ]

        //  %r830 = icmp slt i32 %r829, 32

        mov     x11, #32
        cmp     x12, x11
        //  br i1 %r830, label %bb93, label %bb94


        b.lt     bb93
        b     bb94
        //bb93:

bb93:

        //  %r512 = getelementptr [32 x i32 ], [32 x i32 ]* %r445, i32 0, i32 %r829

        mov     x11, #8
        mul     x11, x11, x12
        add     x13, x29, #-512
        add     x11, x13, x11
        //  %r513 = load i32, i32* %r512

        ldr     x11, [x11]
        //  %r872 = add i32 %r513, 0

        mov     x11, x11
        //  call void @putint(i32 %r872)

        mov     x0, x11
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
        //  %r873 = add i32 %r829, 1

        mov     x11, #1
        add     x11, x12, x11
        //  %r874 = add i32 %r873, 0

        mov     x11, x11
        mov     x12, x11
        //  br label %bb92


        b     bb92
        //bb94:

bb94:

        //  %r831 = call i32 @arrCopy(i32* %r444, i32* %r445)

        mov     x0, x10
        mov     x1, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     arrCopy
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x11, x0
        //  %r832 = add i32 %r831, 0

        //  %r833 = call i32 @insertsort(i32* %r445)

        mov     x0, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     insertsort
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x11, x0
        //  %r834 = add i32 %r833, 0

        //  %r835 = add i32 0, 0

        mov     x11, #0
        mov     x11, x11
        //  br label %bb95


        b     bb95
        //bb95:

bb95:

        //  %r836 = phi i32 [ %r835, %bb94 ], [ %r871, %bb96 ]

        //  %r837 = icmp slt i32 %r836, 32

        mov     x12, #32
        cmp     x11, x12
        //  br i1 %r837, label %bb96, label %bb97


        b.lt     bb96
        b     bb97
        //bb96:

bb96:

        //  %r523 = getelementptr [32 x i32 ], [32 x i32 ]* %r445, i32 0, i32 %r836

        mov     x12, #8
        mul     x12, x12, x11
        add     x13, x29, #-512
        add     x12, x13, x12
        //  %r524 = load i32, i32* %r523

        ldr     x12, [x12]
        //  %r869 = add i32 %r524, 0

        mov     x12, x12
        //  call void @putint(i32 %r869)

        mov     x0, x12
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
        //  %r870 = add i32 %r836, 1

        mov     x12, #1
        add     x11, x11, x12
        //  %r871 = add i32 %r870, 0

        mov     x11, x11
        mov     x11, x11
        //  br label %bb95


        b     bb95
        //bb97:

bb97:

        //  %r838 = call i32 @arrCopy(i32* %r444, i32* %r445)

        mov     x0, x10
        mov     x1, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     arrCopy
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x11, x0
        //  %r839 = add i32 %r838, 0

        //  %r840 = add i32 0, 0

        mov     x11, #0
        //  %r841 = add i32 31, 0

        mov     x12, #31
        //  %r842 = call i32 @QuickSort(i32* %r445, i32 %r840, i32 %r841)

        mov     x0, x9
        mov     x1, x11
        mov     x2, x12
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     QuickSort
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x12, x0
        //  %r843 = add i32 %r842, 0

        mov     x12, x11
        //  br label %bb98


        b     bb98
        //bb98:

bb98:

        //  %r844 = phi i32 [ %r840, %bb97 ], [ %r868, %bb99 ]

        //  %r845 = icmp slt i32 %r844, 32

        mov     x11, #32
        cmp     x12, x11
        //  br i1 %r845, label %bb99, label %bb100


        b.lt     bb99
        b     bb100
        //bb99:

bb99:

        //  %r536 = getelementptr [32 x i32 ], [32 x i32 ]* %r445, i32 0, i32 %r844

        mov     x11, #8
        mul     x11, x11, x12
        add     x13, x29, #-512
        add     x11, x13, x11
        //  %r537 = load i32, i32* %r536

        ldr     x11, [x11]
        //  %r866 = add i32 %r537, 0

        mov     x11, x11
        //  call void @putint(i32 %r866)

        mov     x0, x11
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
        //  %r867 = add i32 %r844, 1

        mov     x11, #1
        add     x11, x12, x11
        //  %r868 = add i32 %r867, 0

        mov     x11, x11
        mov     x12, x11
        //  br label %bb98


        b     bb98
        //bb100:

bb100:

        //  %r846 = call i32 @arrCopy(i32* %r444, i32* %r445)

        mov     x0, x10
        mov     x1, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     arrCopy
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x11, x0
        //  %r847 = add i32 %r846, 0

        //  %r848 = call i32 @calSum(i32* %r445, i32 4)

        mov     x0, x9
        mov     x1, #4
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     calSum
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x11, x0
        //  %r849 = add i32 %r848, 0

        //  %r850 = add i32 0, 0

        mov     x11, #0
        mov     x12, x11
        //  br label %bb101


        b     bb101
        //bb101:

bb101:

        //  %r851 = phi i32 [ %r850, %bb100 ], [ %r865, %bb102 ]

        //  %r852 = icmp slt i32 %r851, 32

        mov     x11, #32
        cmp     x12, x11
        //  br i1 %r852, label %bb102, label %bb103


        b.lt     bb102
        b     bb103
        //bb102:

bb102:

        //  %r547 = getelementptr [32 x i32 ], [32 x i32 ]* %r445, i32 0, i32 %r851

        mov     x11, #8
        mul     x11, x11, x12
        add     x13, x29, #-512
        add     x11, x13, x11
        //  %r548 = load i32, i32* %r547

        ldr     x11, [x11]
        //  %r863 = add i32 %r548, 0

        mov     x11, x11
        //  call void @putint(i32 %r863)

        mov     x0, x11
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
        //  %r864 = add i32 %r851, 1

        mov     x11, #1
        add     x11, x12, x11
        //  %r865 = add i32 %r864, 0

        mov     x11, x11
        mov     x12, x11
        //  br label %bb101


        b     bb101
        //bb103:

bb103:

        //  %r853 = call i32 @arrCopy(i32* %r444, i32* %r445)

        mov     x0, x10
        mov     x1, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     arrCopy
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x10, x0
        //  %r854 = add i32 %r853, 0

        //  %r855 = call i32 @avgPooling(i32* %r445, i32 3)

        mov     x0, x9
        mov     x1, #3
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     avgPooling
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        //  %r856 = add i32 %r855, 0

        //  %r857 = add i32 0, 0

        mov     x9, #0
        mov     x9, x9
        //  br label %bb104


        b     bb104
        //bb104:

bb104:

        //  %r858 = phi i32 [ %r857, %bb103 ], [ %r862, %bb105 ]

        //  %r859 = icmp slt i32 %r858, 32

        mov     x10, #32
        cmp     x9, x10
        //  br i1 %r859, label %bb105, label %bb106


        b.lt     bb105
        b     bb106
        //bb105:

bb105:

        //  %r558 = getelementptr [32 x i32 ], [32 x i32 ]* %r445, i32 0, i32 %r858

        mov     x10, #8
        mul     x10, x10, x9
        add     x11, x29, #-512
        add     x10, x11, x10
        //  %r559 = load i32, i32* %r558

        ldr     x10, [x10]
        //  %r860 = add i32 %r559, 0

        mov     x10, x10
        //  call void @putint(i32 %r860)

        mov     x0, x10
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
        //  %r861 = add i32 %r858, 1

        mov     x10, #1
        add     x9, x9, x10
        //  %r862 = add i32 %r861, 0

        mov     x9, x9
        mov     x9, x9
        //  br label %bb104


        b     bb104
        //bb106:

bb106:

        //  call void @_sysy_stoptime(i32 312)

        mov     x0, #312
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
