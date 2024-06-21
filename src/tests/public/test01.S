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

        //101:x29,#-16

        //100:x29,#-8

        //bb1:

bb1:

        //  call void @_sysy_starttime(i32 4)

        mov     x16, #16
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
        //  %r100 = alloca i32

        //  store i32 0, i32* %r100

        mov     x11, #0
        str     x11, [x9]
        //  %r101 = alloca i32

        //  store i32 0, i32* %r101

        mov     x11, #0
        str     x11, [x10]
        //  br label %bb2


        b     bb2
        //bb2:

bb2:

        //  %r102 = load i32, i32* %r100

        ldr     x12, [x9]
        //  %r103 = icmp slt i32 %r102, 10

        mov     x11, #10
        cmp     x12, x11
        //  br i1 %r103, label %bb3, label %bb4


        b.lt     bb3
        b     bb4
        //bb3:

bb3:

        //  %r104 = load i32, i32* %r100

        ldr     x13, [x9]
        //  %r105 = load i32, i32* %r100

        ldr     x12, [x9]
        //  %r106 = getelementptr [10 x i32 ], [10 x i32 ]* @a, i32 0, i32 %r105

        mov     x11, #8
        mul     x12, x11, x12
        adrp     x11, a
        add     x11, x11, #:lo12:a
        add     x11, x11, x12
        //  store i32 %r104, i32* %r106

        str     x13, [x11]
        //  %r107 = load i32, i32* %r100

        ldr     x12, [x9]
        //  %r108 = add i32 %r107, 1

        mov     x11, #1
        add     x11, x12, x11
        //  store i32 %r108, i32* %r100

        str     x11, [x9]
        //  br label %bb2


        b     bb2
        //bb4:

bb4:

        //  store i32 0, i32* %r100

        mov     x11, #0
        str     x11, [x9]
        //  br label %bb5


        b     bb5
        //bb5:

bb5:

        //  %r109 = load i32, i32* %r100

        ldr     x12, [x9]
        //  %r110 = icmp slt i32 %r109, 10

        mov     x11, #10
        cmp     x12, x11
        //  br i1 %r110, label %bb6, label %bb7


        b.lt     bb6
        b     bb7
        //bb6:

bb6:

        //  %r111 = load i32, i32* %r101

        ldr     x12, [x10]
        //  %r112 = load i32, i32* %r100

        ldr     x11, [x9]
        //  %r113 = getelementptr [10 x i32 ], [10 x i32 ]* @a, i32 0, i32 %r112

        mov     x13, #8
        mul     x11, x13, x11
        adrp     x13, a
        add     x13, x13, #:lo12:a
        add     x11, x13, x11
        //  %r114 = load i32, i32* %r113

        ldr     x11, [x11]
        //  %r115 = add i32 %r111, %r114

        add     x11, x12, x11
        //  store i32 %r115, i32* %r101

        str     x11, [x10]
        //  %r116 = load i32, i32* %r100

        ldr     x11, [x9]
        //  %r117 = add i32 %r116, 1

        mov     x12, #1
        add     x11, x11, x12
        //  store i32 %r117, i32* %r100

        str     x11, [x9]
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
        //  %r120 = load i32, i32* %r101

        //  %r121 = load i32, i32* %r101

        ldr     x9, [x10]
        //  call void @putint(i32 %r121)

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
