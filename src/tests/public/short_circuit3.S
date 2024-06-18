.section .data
.global    a
.global    b
.global    d
a:
        .quad   0
b:
        .quad   0
d:
        .quad   0
.section .text
.global getch
.global getint
.global putch
.global putint
.global putarray
.global _sysy_starttime
.global _sysy_stoptime
.global set_a
.global set_b
.global set_d
.global main
set_a:

        //bb2:

bb2:

        //  %r189 = add i32 0, 0

        mov     x16, #0
        sub     sp, sp, x16
        mov     x9, x0
        //  %r190 = add i32 %r100, 0

        mov     x10, x9
        //  br label %bb1


        b     bb1
        //bb1:

bb1:

        //  store i32 %r190, i32* @a

        adrp     x9, a
        add     x9, x9, #:lo12:a
        str     x10, [x9]
        //  %r103 = load i32, i32* @a

        adrp     x9, a
        add     x9, x9, #:lo12:a
        ldr     x9, [x9]
        //  ret i32 %r103

        mov     x0, x9
        mov     sp, x29
        ret
set_b:

        //bb4:

bb4:

        //  %r192 = add i32 0, 0

        mov     x16, #0
        sub     sp, sp, x16
        mov     x9, x0
        //  %r193 = add i32 %r104, 0

        mov     x9, x9
        //  br label %bb3


        b     bb3
        //bb3:

bb3:

        //  store i32 %r193, i32* @b

        adrp     x10, b
        add     x10, x10, #:lo12:b
        str     x9, [x10]
        //  %r107 = load i32, i32* @b

        adrp     x9, b
        add     x9, x9, #:lo12:b
        ldr     x9, [x9]
        //  ret i32 %r107

        mov     x0, x9
        mov     sp, x29
        ret
set_d:

        //bb6:

bb6:

        //  %r195 = add i32 0, 0

        mov     x16, #0
        sub     sp, sp, x16
        mov     x9, x0
        //  %r196 = add i32 %r108, 0

        mov     x10, x9
        //  br label %bb5


        b     bb5
        //bb5:

bb5:

        //  store i32 %r196, i32* @d

        adrp     x9, d
        add     x9, x9, #:lo12:d
        str     x10, [x9]
        //  %r111 = load i32, i32* @d

        adrp     x9, d
        add     x9, x9, #:lo12:d
        ldr     x9, [x9]
        //  ret i32 %r111

        mov     x0, x9
        mov     sp, x29
        ret
main:

        //bb7:

bb7:

        //  %r203 = add i32 0, 0

        mov     x16, #0
        sub     sp, sp, x16
        //  %r204 = add i32 0, 0

        //  %r205 = add i32 0, 0

        //  %r206 = add i32 0, 0

        //  %r207 = add i32 0, 0

        //  %r208 = add i32 0, 0

        //  call void @_sysy_starttime(i32 97)

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
        //  store i32 2, i32* @a

        mov     x10, #2
        adrp     x9, a
        add     x9, x9, #:lo12:a
        str     x10, [x9]
        //  store i32 3, i32* @b

        mov     x10, #3
        adrp     x9, b
        add     x9, x9, #:lo12:b
        str     x10, [x9]
        //  %r209 = call i32 @set_a(i32 0)

        mov     x0, #0
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     set_a
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x10, x0
        //  %r210 = icmp ne i32 %r209, 0

        mov     x9, #0
        cmp     x10, x9
        //  br i1 %r210, label %bb11, label %bb9


        b.ne     bb11
        b     bb9
        //bb11:

bb11:

        //  %r241 = call i32 @set_b(i32 1)

        mov     x0, #1
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     set_b
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        //  %r242 = icmp ne i32 %r241, 0

        mov     x10, #0
        cmp     x9, x10
        //  br i1 %r242, label %bb8, label %bb9


        b.ne     bb8
        b     bb9
        //bb8:

bb8:

        //  br label %bb10


        b     bb10
        //bb9:

bb9:

        //  br label %bb10


        b     bb10
        //bb10:

bb10:

        //  %r117 = load i32, i32* @a

        adrp     x9, a
        add     x9, x9, #:lo12:a
        ldr     x9, [x9]
        //  call void @putint(i32 %r117)

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
        //  call void @putch(i32 32)

        mov     x0, #32
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     putch
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
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
        //  call void @putch(i32 32)

        mov     x0, #32
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     putch
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        //  store i32 2, i32* @a

        mov     x9, #2
        adrp     x10, a
        add     x10, x10, #:lo12:a
        str     x9, [x10]
        //  store i32 3, i32* @b

        mov     x9, #3
        adrp     x10, b
        add     x10, x10, #:lo12:b
        str     x9, [x10]
        //  %r211 = call i32 @set_a(i32 0)

        mov     x0, #0
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     set_a
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        //  %r212 = icmp ne i32 %r211, 0

        mov     x10, #0
        cmp     x9, x10
        //  br i1 %r212, label %bb15, label %bb13


        b.ne     bb15
        b     bb13
        //bb15:

bb15:

        //  %r239 = call i32 @set_b(i32 1)

        mov     x0, #1
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     set_b
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        //  %r240 = icmp ne i32 %r239, 0

        mov     x10, #0
        cmp     x9, x10
        //  br i1 %r240, label %bb12, label %bb13


        b.ne     bb12
        b     bb13
        //bb12:

bb12:

        //  br label %bb14


        b     bb14
        //bb13:

bb13:

        //  br label %bb14


        b     bb14
        //bb14:

bb14:

        //  %r124 = load i32, i32* @a

        adrp     x9, a
        add     x9, x9, #:lo12:a
        ldr     x9, [x9]
        //  call void @putint(i32 %r124)

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
        //  call void @putch(i32 32)

        mov     x0, #32
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     putch
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        //  %r125 = load i32, i32* @b

        adrp     x9, b
        add     x9, x9, #:lo12:b
        ldr     x9, [x9]
        //  call void @putint(i32 %r125)

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
        //  call void @putch(i32 10)

        mov     x0, #10
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     putch
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        //  %r213 = add i32 1, 0

        mov     x10, #1
        //  store i32 2, i32* @d

        mov     x9, #2
        adrp     x11, d
        add     x11, x11, #:lo12:d
        str     x9, [x11]
        //  %r214 = icmp sge i32 %r213, 1

        mov     x9, #1
        cmp     x10, x9
        //  br i1 %r214, label %bb19, label %bb17


        b.ge     bb19
        b     bb17
        //bb19:

bb19:

        //  %r237 = call i32 @set_d(i32 3)

        mov     x0, #3
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     set_d
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        //  %r238 = icmp ne i32 %r237, 0

        mov     x11, #0
        cmp     x9, x11
        //  br i1 %r238, label %bb16, label %bb17


        b.ne     bb16
        b     bb17
        //bb16:

bb16:

        //  br label %bb18


        b     bb18
        //bb17:

bb17:

        //  br label %bb18


        b     bb18
        //bb18:

bb18:

        //  %r132 = load i32, i32* @d

        adrp     x9, d
        add     x9, x9, #:lo12:d
        ldr     x9, [x9]
        //  call void @putint(i32 %r132)

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
        //  call void @putch(i32 32)

        mov     x0, #32
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     putch
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        //  %r215 = icmp sle i32 %r213, 1

        mov     x9, #1
        cmp     x10, x9
        //  br i1 %r215, label %bb20, label %bb23


        b.le     bb20
        b     bb23
        //bb23:

bb23:

        //  %r235 = call i32 @set_d(i32 4)

        mov     x0, #4
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     set_d
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        //  %r236 = icmp ne i32 %r235, 0

        mov     x10, #0
        cmp     x9, x10
        //  br i1 %r236, label %bb20, label %bb21


        b.ne     bb20
        b     bb21
        //bb20:

bb20:

        //  br label %bb22


        b     bb22
        //bb21:

bb21:

        //  br label %bb22


        b     bb22
        //bb22:

bb22:

        //  %r138 = load i32, i32* @d

        adrp     x9, d
        add     x9, x9, #:lo12:d
        ldr     x9, [x9]
        //  call void @putint(i32 %r138)

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
        //  call void @putch(i32 10)

        mov     x0, #10
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     putch
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        //  call void @putch(i32 10)

        mov     x0, #10
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     putch
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        //  %r216 = add i32 0, 0

        mov     x14, #0
        //  %r217 = add i32 1, 0

        mov     x12, #1
        //  %r218 = add i32 2, 0

        mov     x11, #2
        //  %r219 = add i32 3, 0

        mov     x9, #3
        //  %r220 = add i32 4, 0

        mov     x10, #4
        //  br label %bb24


        b     bb24
        //bb24:

bb24:

        //  %r221 = icmp ne i32 %r216, 0

        mov     x13, #0
        cmp     x14, x13
        //  br i1 %r221, label %bb27, label %bb26


        b.ne     bb27
        b     bb26
        //bb27:

bb27:

        //  %r234 = icmp ne i32 %r217, 0

        mov     x13, #0
        cmp     x12, x13
        //  br i1 %r234, label %bb25, label %bb26


        b.ne     bb25
        b     bb26
        //bb25:

bb25:

        //  call void @putch(i32 32)

        mov     x0, #32
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     putch
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        //  br label %bb24


        b     bb24
        //bb26:

bb26:

        //  %r222 = icmp ne i32 %r216, 0

        mov     x13, #0
        cmp     x14, x13
        //  br i1 %r222, label %bb28, label %bb31


        b.ne     bb28
        b     bb31
        //bb31:

bb31:

        //  %r233 = icmp ne i32 %r217, 0

        mov     x13, #0
        cmp     x12, x13
        //  br i1 %r233, label %bb28, label %bb29


        b.ne     bb28
        b     bb29
        //bb28:

bb28:

        //  call void @putch(i32 67)

        mov     x0, #67
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     putch
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        //  br label %bb30


        b     bb30
        //bb29:

bb29:

        //  br label %bb30


        b     bb30
        //bb30:

bb30:

        //  %r223 = icmp sge i32 %r216, %r217

        cmp     x14, x12
        //  br i1 %r223, label %bb32, label %bb35


        b.ge     bb32
        b     bb35
        //bb35:

bb35:

        //  %r232 = icmp sle i32 %r217, %r216

        cmp     x12, x14
        //  br i1 %r232, label %bb32, label %bb33


        b.le     bb32
        b     bb33
        //bb32:

bb32:

        //  call void @putch(i32 72)

        mov     x0, #72
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     putch
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        //  br label %bb34


        b     bb34
        //bb33:

bb33:

        //  br label %bb34


        b     bb34
        //bb34:

bb34:

        //  %r224 = icmp sge i32 %r218, %r217

        cmp     x11, x12
        //  br i1 %r224, label %bb39, label %bb37


        b.ge     bb39
        b     bb37
        //bb39:

bb39:

        //  %r231 = icmp ne i32 %r220, %r219

        cmp     x10, x9
        //  br i1 %r231, label %bb36, label %bb37


        b.ne     bb36
        b     bb37
        //bb36:

bb36:

        //  call void @putch(i32 73)

        mov     x0, #73
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     putch
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        //  br label %bb38


        b     bb38
        //bb37:

bb37:

        //  br label %bb38


        b     bb38
        //bb38:

bb38:

        //  %r225 = icmp ne i32 %r217, 0

        mov     x11, #0
        cmp     x12, x11
        //  br i1 %r225, label %bb44, label %bb43


        b.ne     bb44
        b     bb43
        //bb44:

bb44:

        //  %r230 = icmp slt i32 %r219, %r219

        cmp     x9, x9
        //  br i1 %r230, label %bb40, label %bb43


        b.lt     bb40
        b     bb43
        //bb43:

bb43:

        //  %r229 = icmp sge i32 %r220, %r220

        cmp     x10, x10
        //  br i1 %r229, label %bb40, label %bb41


        b.ge     bb40
        b     bb41
        //bb40:

bb40:

        //  call void @putch(i32 74)

        mov     x0, #74
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     putch
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        //  br label %bb42


        b     bb42
        //bb41:

bb41:

        //  br label %bb42


        b     bb42
        //bb42:

bb42:

        //  %r226 = icmp ne i32 %r217, 0

        mov     x11, #0
        cmp     x12, x11
        //  br i1 %r226, label %bb45, label %bb48


        b.ne     bb45
        b     bb48
        //bb48:

bb48:

        //  %r227 = icmp slt i32 %r219, %r219

        cmp     x9, x9
        //  br i1 %r227, label %bb49, label %bb46


        b.lt     bb49
        b     bb46
        //bb49:

bb49:

        //  %r228 = icmp sge i32 %r220, %r220

        cmp     x10, x10
        //  br i1 %r228, label %bb45, label %bb46


        b.ge     bb45
        b     bb46
        //bb45:

bb45:

        //  call void @putch(i32 75)

        mov     x0, #75
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     putch
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        //  br label %bb47


        b     bb47
        //bb46:

bb46:

        //  br label %bb47


        b     bb47
        //bb47:

bb47:

        //  call void @putch(i32 10)

        mov     x0, #10
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     putch
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        //  call void @_sysy_stoptime(i32 117)

        mov     x0, #9
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
