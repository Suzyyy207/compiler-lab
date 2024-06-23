.section .data
.global    a
.global    b
.global    c
a:
        .zero   80
b:
        .quad   27
c:
        .quad   1
.section .text
.global getch
.global getint
.global putch
.global putint
.global putarray
.global _sysy_starttime
.global _sysy_stoptime
.global main
        sub     sp, sp, #0
main:

        //bb1:

bb1:

        //  call void @_sysy_starttime(i32 4)

        mov     x16, #0
        sub     sp, sp, x16
        mov     x0, #4
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
        //  %r124 = add i32 0, 0

        //  %r125 = add i32 0, 0

        mov     x10, #0
        //  %r126 = add i32 0, 0

        //  %r127 = add i32 0, 0

        mov     x9, #0
        mov     x10, x10
        //  br label %bb2


        b     bb2
        //bb2:

bb2:

        //  %r128 = phi i32 [ %r125, %bb1 ], [ %r139, %bb3 ]

        //  %r129 = icmp slt i32 %r128, 10

        mov     x11, #10
        cmp     x10, x11
        //  br i1 %r129, label %bb3, label %bb4


        b.lt     bb3
        b     bb4
        //bb3:

bb3:

        //  %r106 = getelementptr [10 x i32 ], [10 x i32 ]* @a, i32 0, i32 %r128

        mov     x11, #8
        mul     x11, x11, x10
        adrp     x12, a
        add     x12, x12, #:lo12:a
        add     x11, x12, x11
        //  store i32 %r128, i32* %r106

        str     x10, [x11]
        //  %r138 = add i32 %r128, 1

        mov     x11, #1
        add     x10, x10, x11
        //  %r139 = add i32 %r138, 0

        mov     x10, x10
        mov     x10, x10
        //  br label %bb2


        b     bb2
        //bb4:

bb4:

        //  %r130 = add i32 0, 0

        mov     x11, #0
        mov     x10, x9
        mov     x9, x11
        //  br label %bb5


        b     bb5
        //bb5:

bb5:

        //  %r131 = phi i32 [ %r127, %bb4 ], [ %r135, %bb6 ]

        //  %r132 = phi i32 [ %r130, %bb4 ], [ %r137, %bb6 ]

        //  %r133 = icmp slt i32 %r132, 10

        mov     x11, #10
        cmp     x9, x11
        //  br i1 %r133, label %bb6, label %bb7


        b.lt     bb6
        b     bb7
        //bb6:

bb6:

        //  %r113 = getelementptr [10 x i32 ], [10 x i32 ]* @a, i32 0, i32 %r132

        mov     x11, #8
        mul     x12, x11, x9
        adrp     x11, a
        add     x11, x11, #:lo12:a
        add     x11, x11, x12
        //  %r114 = load i32, i32* %r113

        ldr     x11, [x11]
        //  %r134 = add i32 %r131, %r114

        add     x10, x10, x11
        //  %r135 = add i32 %r134, 0

        mov     x11, x10
        //  %r136 = add i32 %r132, 1

        mov     x10, #1
        add     x9, x9, x10
        //  %r137 = add i32 %r136, 0

        mov     x9, x9
        mov     x10, x11
        mov     x9, x9
        //  br label %bb5


        b     bb5
        //bb7:

bb7:

        //  %r118 = load i32, i32* @b

        adrp     x9, b
        add     x9, x9, #:lo12:b
        ldr     x9, [x9]
        //  call void @putint(i32 %r118)

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
        //  %r119 = load i32, i32* @c

        adrp     x9, c
        add     x9, x9, #:lo12:c
        ldr     x9, [x9]
        //  call void @putint(i32 %r119)

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
        //  call void @putint(i32 %r131)

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
        //  call void @_sysy_stoptime(i32 19)

        mov     x0, #19
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
