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
        sub     sp, sp, #0
set_a:

        //101:x29,#-8

        //bb2:

bb2:

        //  %r101 = alloca i32

        mov     x16, #16
        sub     sp, sp, x16
        mov     x9, x0
        //  store i32 %r100, i32* %r101

        str     x9, [x10]
        //  br label %bb1


        b     bb1
        //bb1:

bb1:

        //  %r102 = load i32, i32* %r101

        ldr     x9, [x10]
        //  store i32 %r102, i32* @a

        adrp     x10, a
        add     x10, x10, #:lo12:a
        str     x9, [x10]
        //  %r103 = load i32, i32* @a

        adrp     x9, a
        add     x9, x9, #:lo12:a
        ldr     x9, [x9]
        //  ret i32 %r103

        mov     x0, x9
        mov     sp, x29
        ret
        sub     sp, sp, #0
set_b:

        //105:x29,#-8

        //bb4:

bb4:

        //  %r105 = alloca i32

        mov     x16, #16
        sub     sp, sp, x16
        mov     x9, x0
        //  store i32 %r104, i32* %r105

        str     x9, [x10]
        //  br label %bb3


        b     bb3
        //bb3:

bb3:

        //  %r106 = load i32, i32* %r105

        ldr     x9, [x10]
        //  store i32 %r106, i32* @b

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
        sub     sp, sp, #0
set_d:

        //109:x29,#-8

        //bb6:

bb6:

        //  %r109 = alloca i32

        mov     x16, #16
        sub     sp, sp, x16
        mov     x9, x0
        //  store i32 %r108, i32* %r109

        str     x9, [x10]
        //  br label %bb5


        b     bb5
        //bb5:

bb5:

        //  %r110 = load i32, i32* %r109

        ldr     x9, [x10]
        //  store i32 %r110, i32* @d

        adrp     x10, d
        add     x10, x10, #:lo12:d
        str     x9, [x10]
        //  %r111 = load i32, i32* @d

        adrp     x9, d
        add     x9, x9, #:lo12:d
        ldr     x9, [x9]
        //  ret i32 %r111

        mov     x0, x9
        mov     sp, x29
        ret
        sub     sp, sp, #40
main:

        //126:x29,#-48

        //139:x29,#-40

        //140:x29,#-32

        //141:x29,#-24

        //142:x29,#-16

        //143:x29,#-8

        //bb7:

bb7:

        sub     sp, sp, #40
        //  %r143 = alloca i32

        mov     x16, #48
        sub     sp, sp, x16
        //  %r142 = alloca i32

        //  %r141 = alloca i32

        //  %r140 = alloca i32

        //  %r139 = alloca i32

        //  %r126 = alloca i32

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

        mov     x14, #2
        adrp     x15, a
        add     x15, x15, #:lo12:a
        str     x14, [x15]
        //  store i32 3, i32* @b

        mov     x14, #3
        adrp     x15, b
        add     x15, x15, #:lo12:b
        str     x14, [x15]
        //  %r113 = call i32 @set_a(i32 0)

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
        mov     x14, x0
        //  %r114 = icmp ne i32 %r113, 0

        mov     x15, #0
        cmp     x14, x15
        //  br i1 %r114, label %bb11, label %bb9


        b.ne     bb11
        b     bb9
        //bb11:

bb11:

        //  %r115 = call i32 @set_b(i32 1)

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
        mov     x14, x0
        //  %r116 = icmp ne i32 %r115, 0

        mov     x15, #0
        cmp     x14, x15
        //  br i1 %r116, label %bb8, label %bb9


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

        adrp     x14, a
        add     x14, x14, #:lo12:a
        ldr     x14, [x14]
        //  call void @putint(i32 %r117)

        mov     x0, x14
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

        adrp     x14, b
        add     x14, x14, #:lo12:b
        ldr     x14, [x14]
        //  call void @putint(i32 %r118)

        mov     x0, x14
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

        mov     x15, #2
        adrp     x14, a
        add     x14, x14, #:lo12:a
        str     x15, [x14]
        //  store i32 3, i32* @b

        mov     x16, #3
        add     x16, sp, #0
        str     x16, [x16]
        adrp     x14, b
        add     x14, x14, #:lo12:b
        str     x16, [x14]
        //  %r120 = call i32 @set_a(i32 0)

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
        mov     x14, x0
        //  %r121 = icmp ne i32 %r120, 0

        mov     x15, #0
        cmp     x14, x15
        //  br i1 %r121, label %bb15, label %bb13


        b.ne     bb15
        b     bb13
        //bb15:

bb15:

        //  %r122 = call i32 @set_b(i32 1)

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
        mov     x15, x0
        //  %r123 = icmp ne i32 %r122, 0

        mov     x14, #0
        cmp     x15, x14
        //  br i1 %r123, label %bb12, label %bb13


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

        adrp     x14, a
        add     x14, x14, #:lo12:a
        ldr     x14, [x14]
        //  call void @putint(i32 %r124)

        mov     x0, x14
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

        adrp     x14, b
        add     x14, x14, #:lo12:b
        ldr     x14, [x14]
        //  call void @putint(i32 %r125)

        mov     x0, x14
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
        //  store i32 1, i32* %r126

        mov     x14, #1
        str     x14, [x9]
        //  store i32 2, i32* @d

        mov     x14, #2
        add     x17, sp, #8
        ldr     x17, [x17]
        adrp     x17, d
        add     x17, x17, #:lo12:d
        str     x14, [x18]
        add     x18, sp, #8
        str     x18, [x18]
        //  %r128 = load i32, i32* %r126

        ldr     x14, [x9]
        //  %r129 = icmp sge i32 %r128, 1

        mov     x19, #1
        add     x19, sp, #16
        str     x19, [x19]
        cmp     x14, x19
        //  br i1 %r129, label %bb19, label %bb17


        b.ge     bb19
        b     bb17
        //bb19:

bb19:

        //  %r130 = call i32 @set_d(i32 3)

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
        mov     x14, x0
        //  %r131 = icmp ne i32 %r130, 0

        mov     x16, #0
        add     x16, sp, #24
        str     x16, [x16]
        cmp     x14, x16
        //  br i1 %r131, label %bb16, label %bb17


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

        adrp     x14, d
        add     x14, x14, #:lo12:d
        ldr     x14, [x14]
        //  call void @putint(i32 %r132)

        mov     x0, x14
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
        //  %r134 = load i32, i32* %r126

        ldr     x9, [x9]
        //  %r135 = icmp sle i32 %r134, 1

        mov     x14, #1
        cmp     x9, x14
        //  br i1 %r135, label %bb20, label %bb23


        b.le     bb20
        b     bb23
        //bb23:

bb23:

        //  %r136 = call i32 @set_d(i32 4)

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
        //  %r137 = icmp ne i32 %r136, 0

        mov     x14, #0
        cmp     x9, x14
        //  br i1 %r137, label %bb20, label %bb21


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
        //  store i32 0, i32* %r139

        mov     x9, #0
        str     x9, [x11]
        //  store i32 1, i32* %r140

        mov     x9, #1
        str     x9, [x12]
        //  store i32 2, i32* %r141

        mov     x9, #2
        str     x9, [x13]
        //  store i32 3, i32* %r142

        mov     x9, #3
        str     x9, [x10]
        //  store i32 4, i32* %r143

        mov     x9, #4
        str     x9, [x17]
        add     x17, sp, #32
        str     x17, [x17]
        //  br label %bb24


        b     bb24
        //bb24:

bb24:

        //  %r145 = load i32, i32* %r139

        ldr     x9, [x11]
        //  %r146 = icmp ne i32 %r145, 0

        mov     x14, #0
        cmp     x9, x14
        //  br i1 %r146, label %bb27, label %bb26


        b.ne     bb27
        b     bb26
        //bb27:

bb27:

        //  %r147 = load i32, i32* %r140

        ldr     x9, [x12]
        //  %r148 = icmp ne i32 %r147, 0

        mov     x14, #0
        cmp     x9, x14
        //  br i1 %r148, label %bb25, label %bb26


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

        //  %r150 = load i32, i32* %r139

        ldr     x9, [x11]
        //  %r151 = icmp ne i32 %r150, 0

        mov     x14, #0
        cmp     x9, x14
        //  br i1 %r151, label %bb28, label %bb31


        b.ne     bb28
        b     bb31
        //bb31:

bb31:

        //  %r152 = load i32, i32* %r140

        ldr     x9, [x12]
        //  %r153 = icmp ne i32 %r152, 0

        mov     x14, #0
        cmp     x9, x14
        //  br i1 %r153, label %bb28, label %bb29


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

        //  %r155 = load i32, i32* %r139

        ldr     x9, [x11]
        //  %r156 = load i32, i32* %r140

        ldr     x14, [x12]
        //  %r157 = icmp sge i32 %r155, %r156

        cmp     x9, x14
        //  br i1 %r157, label %bb32, label %bb35


        b.ge     bb32
        b     bb35
        //bb35:

bb35:

        //  %r158 = load i32, i32* %r140

        ldr     x14, [x12]
        //  %r159 = load i32, i32* %r139

        ldr     x9, [x11]
        //  %r160 = icmp sle i32 %r158, %r159

        cmp     x14, x9
        //  br i1 %r160, label %bb32, label %bb33


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

        //  %r162 = load i32, i32* %r141

        ldr     x11, [x13]
        //  %r163 = load i32, i32* %r140

        ldr     x9, [x12]
        //  %r164 = icmp sge i32 %r162, %r163

        cmp     x11, x9
        //  br i1 %r164, label %bb39, label %bb37


        b.ge     bb39
        b     bb37
        //bb39:

bb39:

        //  %r165 = load i32, i32* %r143

        add     x18, sp, #32
        ldr     x18, [x18]
        ldr     x11, [x18]
        //  %r166 = load i32, i32* %r142

        ldr     x9, [x10]
        //  %r167 = icmp ne i32 %r165, %r166

        cmp     x11, x9
        //  br i1 %r167, label %bb36, label %bb37


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

        //  %r170 = load i32, i32* %r140

        ldr     x9, [x12]
        //  %r171 = icmp ne i32 %r170, 0

        mov     x11, #0
        cmp     x9, x11
        //  br i1 %r171, label %bb44, label %bb43


        b.ne     bb44
        b     bb43
        //bb44:

bb44:

        //  %r172 = load i32, i32* %r142

        ldr     x11, [x10]
        //  %r173 = load i32, i32* %r142

        ldr     x9, [x10]
        //  %r174 = icmp slt i32 %r172, %r173

        cmp     x11, x9
        //  br i1 %r174, label %bb40, label %bb43


        b.lt     bb40
        b     bb43
        //bb43:

bb43:

        //  %r175 = load i32, i32* %r143

        add     x19, sp, #32
        ldr     x19, [x19]
        ldr     x9, [x19]
        //  %r176 = load i32, i32* %r143

        add     x16, sp, #32
        ldr     x16, [x16]
        ldr     x11, [x16]
        //  %r177 = icmp sge i32 %r175, %r176

        cmp     x9, x11
        //  br i1 %r177, label %bb40, label %bb41


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

        //  %r179 = load i32, i32* %r140

        ldr     x9, [x12]
        //  %r180 = icmp ne i32 %r179, 0

        mov     x11, #0
        cmp     x9, x11
        //  br i1 %r180, label %bb45, label %bb48


        b.ne     bb45
        b     bb48
        //bb48:

bb48:

        //  %r182 = load i32, i32* %r142

        ldr     x9, [x10]
        //  %r183 = load i32, i32* %r142

        ldr     x10, [x10]
        //  %r184 = icmp slt i32 %r182, %r183

        cmp     x9, x10
        //  br i1 %r184, label %bb49, label %bb46


        b.lt     bb49
        b     bb46
        //bb49:

bb49:

        //  %r185 = load i32, i32* %r143

        add     x17, sp, #32
        ldr     x17, [x17]
        ldr     x10, [x17]
        //  %r186 = load i32, i32* %r143

        add     x18, sp, #32
        ldr     x18, [x18]
        ldr     x9, [x18]
        //  %r187 = icmp sge i32 %r185, %r186

        cmp     x10, x9
        //  br i1 %r187, label %bb45, label %bb46


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

        mov     x0, #14
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
