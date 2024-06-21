.section .data
.global    TOKEN_NUM
.global    TOKEN_OTHER
.global    last_char
.global    num
.global    other
.global    cur_token
TOKEN_NUM:
        .quad   0
TOKEN_OTHER:
        .quad   1
last_char:
        .quad   32
num:
        .quad   0
other:
        .quad   0
cur_token:
        .quad   0
.section .text
.global getch
.global getint
.global putch
.global putint
.global putarray
.global _sysy_starttime
.global _sysy_stoptime
.global next_char
.global is_space
.global is_num
.global next_token
.global panic
.global get_op_prec
.global stack_push
.global stack_pop
.global stack_peek
.global stack_size
.global mod
.global eval_op
.global eval
.global main
        sub     sp, sp, #0
next_char:

        //bb1:

bb1:

        //  %r100 = call i32 @getch()

        mov     x16, #0
        sub     sp, sp, x16
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     getch
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        //  store i32 %r100, i32* @last_char

        adrp     x10, last_char
        add     x10, x10, #:lo12:last_char
        str     x9, [x10]
        //  %r101 = load i32, i32* @last_char

        adrp     x9, last_char
        add     x9, x9, #:lo12:last_char
        ldr     x9, [x9]
        //  ret i32 %r101

        mov     x0, x9
        mov     sp, x29
        ret
        sub     sp, sp, #0
is_space:

        //103:x29,#-8

        //bb3:

bb3:

        //  %r103 = alloca i32

        mov     x16, #16
        sub     sp, sp, x16
        mov     x9, x0
        //  store i32 %r102, i32* %r103

        str     x9, [x10]
        //  br label %bb2


        b     bb2
        //bb2:

bb2:

        //  %r105 = load i32, i32* %r103

        ldr     x9, [x10]
        //  %r106 = icmp eq i32 %r105, 32

        mov     x11, #32
        cmp     x9, x11
        //  br i1 %r106, label %bb4, label %bb7


        b.eq     bb4
        b     bb7
        //bb7:

bb7:

        //  %r107 = load i32, i32* %r103

        ldr     x9, [x10]
        //  %r108 = icmp eq i32 %r107, 10

        mov     x10, #10
        cmp     x9, x10
        //  br i1 %r108, label %bb4, label %bb5


        b.eq     bb4
        b     bb5
        //bb4:

bb4:

        //  ret i32 1

        mov     x9, #1
        mov     x0, x9
        mov     sp, x29
        ret
        //bb5:

bb5:

        //  ret i32 0

        mov     x9, #0
        mov     x0, x9
        mov     sp, x29
        ret
        //bb6:

bb6:

        //  ret i32 0

        mov     x9, #0
        mov     x0, x9
        mov     sp, x29
        ret
        sub     sp, sp, #0
is_num:

        //110:x29,#-8

        //bb9:

bb9:

        //  %r110 = alloca i32

        mov     x16, #16
        sub     sp, sp, x16
        mov     x9, x0
        //  store i32 %r109, i32* %r110

        str     x9, [x10]
        //  br label %bb8


        b     bb8
        //bb8:

bb8:

        //  %r112 = load i32, i32* %r110

        ldr     x9, [x10]
        //  %r113 = icmp sge i32 %r112, 48

        mov     x11, #48
        cmp     x9, x11
        //  br i1 %r113, label %bb13, label %bb11


        b.ge     bb13
        b     bb11
        //bb13:

bb13:

        //  %r114 = load i32, i32* %r110

        ldr     x10, [x10]
        //  %r115 = icmp sle i32 %r114, 57

        mov     x9, #57
        cmp     x10, x9
        //  br i1 %r115, label %bb10, label %bb11


        b.le     bb10
        b     bb11
        //bb10:

bb10:

        //  ret i32 1

        mov     x9, #1
        mov     x0, x9
        mov     sp, x29
        ret
        //bb11:

bb11:

        //  ret i32 0

        mov     x9, #0
        mov     x0, x9
        mov     sp, x29
        ret
        //bb12:

bb12:

        //  ret i32 0

        mov     x9, #0
        mov     x0, x9
        mov     sp, x29
        ret
        sub     sp, sp, #0
next_token:

        //bb14:

bb14:

        //  br label %bb15


        mov     x16, #0
        sub     sp, sp, x16
        b     bb15
        //bb15:

bb15:

        //  %r116 = load i32, i32* @last_char

        adrp     x9, last_char
        add     x9, x9, #:lo12:last_char
        ldr     x9, [x9]
        //  %r117 = call i32 @is_space(i32 %r116)

        mov     x0, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     is_space
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x10, x0
        //  %r118 = icmp ne i32 %r117, 0

        mov     x9, #0
        cmp     x10, x9
        //  br i1 %r118, label %bb16, label %bb17


        b.ne     bb16
        b     bb17
        //bb16:

bb16:

        //  %r119 = call i32 @next_char()

        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     next_char
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        //  br label %bb15


        b     bb15
        //bb17:

bb17:

        //  %r120 = load i32, i32* @last_char

        adrp     x9, last_char
        add     x9, x9, #:lo12:last_char
        ldr     x9, [x9]
        //  %r121 = call i32 @is_num(i32 %r120)

        mov     x0, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     is_num
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        //  %r122 = icmp ne i32 %r121, 0

        mov     x10, #0
        cmp     x9, x10
        //  br i1 %r122, label %bb18, label %bb19


        b.ne     bb18
        b     bb19
        //bb18:

bb18:

        //  %r123 = load i32, i32* @last_char

        adrp     x9, last_char
        add     x9, x9, #:lo12:last_char
        ldr     x9, [x9]
        //  %r124 = sub i32 %r123, 48

        mov     x10, #48
        sub     x10, x9, x10
        //  store i32 %r124, i32* @num

        adrp     x9, num
        add     x9, x9, #:lo12:num
        str     x10, [x9]
        //  br label %bb21


        b     bb21
        //bb21:

bb21:

        //  %r125 = call i32 @next_char()

        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     next_char
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        //  %r126 = call i32 @is_num(i32 %r125)

        mov     x0, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     is_num
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        //  %r127 = icmp ne i32 %r126, 0

        mov     x10, #0
        cmp     x9, x10
        //  br i1 %r127, label %bb22, label %bb23


        b.ne     bb22
        b     bb23
        //bb22:

bb22:

        //  %r128 = load i32, i32* @num

        adrp     x9, num
        add     x9, x9, #:lo12:num
        ldr     x10, [x9]
        //  %r129 = mul i32 %r128, 10

        mov     x9, #10
        mul     x9, x10, x9
        //  %r130 = load i32, i32* @last_char

        adrp     x10, last_char
        add     x10, x10, #:lo12:last_char
        ldr     x10, [x10]
        //  %r131 = add i32 %r129, %r130

        add     x9, x9, x10
        //  %r132 = sub i32 %r131, 48

        mov     x10, #48
        sub     x9, x9, x10
        //  store i32 %r132, i32* @num

        adrp     x10, num
        add     x10, x10, #:lo12:num
        str     x9, [x10]
        //  br label %bb21


        b     bb21
        //bb23:

bb23:

        //  %r133 = load i32, i32* @TOKEN_NUM

        adrp     x9, TOKEN_NUM
        add     x9, x9, #:lo12:TOKEN_NUM
        ldr     x9, [x9]
        //  store i32 %r133, i32* @cur_token

        adrp     x10, cur_token
        add     x10, x10, #:lo12:cur_token
        str     x9, [x10]
        //  br label %bb20


        b     bb20
        //bb19:

bb19:

        //  %r134 = load i32, i32* @last_char

        adrp     x9, last_char
        add     x9, x9, #:lo12:last_char
        ldr     x9, [x9]
        //  store i32 %r134, i32* @other

        adrp     x10, other
        add     x10, x10, #:lo12:other
        str     x9, [x10]
        //  %r135 = call i32 @next_char()

        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     next_char
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        //  %r136 = load i32, i32* @TOKEN_OTHER

        adrp     x9, TOKEN_OTHER
        add     x9, x9, #:lo12:TOKEN_OTHER
        ldr     x9, [x9]
        //  store i32 %r136, i32* @cur_token

        adrp     x10, cur_token
        add     x10, x10, #:lo12:cur_token
        str     x9, [x10]
        //  br label %bb20


        b     bb20
        //bb20:

bb20:

        //  %r137 = load i32, i32* @cur_token

        adrp     x9, cur_token
        add     x9, x9, #:lo12:cur_token
        ldr     x9, [x9]
        //  ret i32 %r137

        mov     x0, x9
        mov     sp, x29
        ret
        sub     sp, sp, #0
panic:

        //bb24:

bb24:

        //  call void @putch(i32 112)

        mov     x16, #0
        sub     sp, sp, x16
        mov     x0, #112
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
        //  call void @putch(i32 97)

        mov     x0, #97
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
        //  call void @putch(i32 110)

        mov     x0, #110
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
        //  call void @putch(i32 105)

        mov     x0, #105
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
        //  call void @putch(i32 99)

        mov     x0, #99
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
        //  call void @putch(i32 33)

        mov     x0, #33
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
        //  %r138 = sub i32 0, 1

        mov     x9, #0
        mov     x10, #1
        sub     x9, x9, x10
        //  ret i32 %r138

        mov     x0, x9
        mov     sp, x29
        ret
        sub     sp, sp, #0
get_op_prec:

        //140:x29,#-8

        //bb26:

bb26:

        //  %r140 = alloca i32

        mov     x16, #16
        sub     sp, sp, x16
        mov     x10, x0
        //  store i32 %r139, i32* %r140

        str     x10, [x9]
        //  br label %bb25


        b     bb25
        //bb25:

bb25:

        //  %r142 = load i32, i32* %r140

        ldr     x11, [x9]
        //  %r143 = icmp eq i32 %r142, 43

        mov     x10, #43
        cmp     x11, x10
        //  br i1 %r143, label %bb27, label %bb30


        b.eq     bb27
        b     bb30
        //bb30:

bb30:

        //  %r144 = load i32, i32* %r140

        ldr     x10, [x9]
        //  %r145 = icmp eq i32 %r144, 45

        mov     x11, #45
        cmp     x10, x11
        //  br i1 %r145, label %bb27, label %bb28


        b.eq     bb27
        b     bb28
        //bb27:

bb27:

        //  ret i32 10

        mov     x9, #10
        mov     x0, x9
        mov     sp, x29
        ret
        //bb28:

bb28:

        //  br label %bb29


        b     bb29
        //bb29:

bb29:

        //  %r148 = load i32, i32* %r140

        ldr     x10, [x9]
        //  %r149 = icmp eq i32 %r148, 42

        mov     x11, #42
        cmp     x10, x11
        //  br i1 %r149, label %bb31, label %bb35


        b.eq     bb31
        b     bb35
        //bb35:

bb35:

        //  %r150 = load i32, i32* %r140

        ldr     x10, [x9]
        //  %r151 = icmp eq i32 %r150, 47

        mov     x11, #47
        cmp     x10, x11
        //  br i1 %r151, label %bb31, label %bb34


        b.eq     bb31
        b     bb34
        //bb34:

bb34:

        //  %r152 = load i32, i32* %r140

        ldr     x10, [x9]
        //  %r153 = icmp eq i32 %r152, 37

        mov     x9, #37
        cmp     x10, x9
        //  br i1 %r153, label %bb31, label %bb32


        b.eq     bb31
        b     bb32
        //bb31:

bb31:

        //  ret i32 20

        mov     x9, #20
        mov     x0, x9
        mov     sp, x29
        ret
        //bb32:

bb32:

        //  br label %bb33


        b     bb33
        //bb33:

bb33:

        //  ret i32 0

        mov     x9, #0
        mov     x0, x9
        mov     sp, x29
        ret
        sub     sp, sp, #0
stack_push:

        //156:x29,#-16

        //161:x29,#-8

        //bb37:

bb37:

        //  %r161 = alloca i32

        mov     x16, #16
        sub     sp, sp, x16
        mov     x10, x0
        mov     x11, x1
        //  %r156 = alloca i32

        //  store i32 %r155, i32* %r156

        str     x11, [x9]
        //  br label %bb36


        b     bb36
        //bb36:

bb36:

        //  %r157 = getelementptr i32, i32* %r154, i32 0

        mov     x11, #8
        mov     x13, #0
        mul     x11, x11, x13
        add     x11, x10, x11
        //  %r158 = load i32, i32* %r157

        ldr     x11, [x11]
        //  %r159 = add i32 %r158, 1

        mov     x13, #1
        add     x13, x11, x13
        //  %r160 = getelementptr i32, i32* %r154, i32 0

        mov     x14, #8
        mov     x11, #0
        mul     x11, x14, x11
        add     x11, x10, x11
        //  store i32 %r159, i32* %r160

        str     x13, [x11]
        //  %r162 = getelementptr i32, i32* %r154, i32 0

        mov     x13, #8
        mov     x11, #0
        mul     x11, x13, x11
        add     x11, x10, x11
        //  %r163 = load i32, i32* %r162

        ldr     x11, [x11]
        //  store i32 %r163, i32* %r161

        str     x11, [x12]
        //  %r164 = load i32, i32* %r156

        ldr     x11, [x9]
        //  %r165 = load i32, i32* %r161

        ldr     x9, [x12]
        //  %r166 = getelementptr i32, i32* %r154, i32 %r165

        mov     x12, #8
        mul     x9, x12, x9
        add     x9, x10, x9
        //  store i32 %r164, i32* %r166

        str     x11, [x9]
        //  ret void

        mov     sp, x29
        ret
        sub     sp, sp, #0
stack_pop:

        //171:x29,#-16

        //168:x29,#-8

        //bb38:

bb38:

        //  %r169 = getelementptr i32, i32* %r167, i32 0

        mov     x16, #16
        sub     sp, sp, x16
        mov     x10, x0
        mov     x11, #8
        mov     x13, #0
        mul     x11, x11, x13
        add     x11, x10, x11
        //  %r170 = load i32, i32* %r169

        ldr     x11, [x11]
        //  %r168 = alloca i32

        //  store i32 %r170, i32* %r168

        str     x11, [x12]
        //  %r172 = load i32, i32* %r168

        ldr     x11, [x12]
        //  %r173 = getelementptr i32, i32* %r167, i32 %r172

        mov     x12, #8
        mul     x11, x12, x11
        add     x11, x10, x11
        //  %r174 = load i32, i32* %r173

        ldr     x11, [x11]
        //  %r171 = alloca i32

        //  store i32 %r174, i32* %r171

        str     x11, [x9]
        //  %r175 = getelementptr i32, i32* %r167, i32 0

        mov     x12, #8
        mov     x11, #0
        mul     x11, x12, x11
        add     x11, x10, x11
        //  %r176 = load i32, i32* %r175

        ldr     x11, [x11]
        //  %r177 = sub i32 %r176, 1

        mov     x12, #1
        sub     x11, x11, x12
        //  %r178 = getelementptr i32, i32* %r167, i32 0

        mov     x13, #8
        mov     x12, #0
        mul     x12, x13, x12
        add     x10, x10, x12
        //  store i32 %r177, i32* %r178

        str     x11, [x10]
        //  %r179 = load i32, i32* %r171

        ldr     x9, [x9]
        //  ret i32 %r179

        mov     x0, x9
        mov     sp, x29
        ret
        sub     sp, sp, #0
stack_peek:

        //181:x29,#-8

        //bb39:

bb39:

        //  %r182 = getelementptr i32, i32* %r180, i32 0

        mov     x16, #16
        sub     sp, sp, x16
        mov     x9, x0
        mov     x11, #8
        mov     x12, #0
        mul     x11, x11, x12
        add     x11, x9, x11
        //  %r183 = load i32, i32* %r182

        ldr     x11, [x11]
        //  %r181 = alloca i32

        //  store i32 %r183, i32* %r181

        str     x11, [x10]
        //  %r184 = load i32, i32* %r181

        ldr     x10, [x10]
        //  %r185 = getelementptr i32, i32* %r180, i32 %r184

        mov     x11, #8
        mul     x10, x11, x10
        add     x9, x9, x10
        //  %r186 = load i32, i32* %r185

        ldr     x9, [x9]
        //  ret i32 %r186

        mov     x0, x9
        mov     sp, x29
        ret
        sub     sp, sp, #0
stack_size:

        //bb40:

bb40:

        //  %r188 = getelementptr i32, i32* %r187, i32 0

        mov     x16, #0
        sub     sp, sp, x16
        mov     x9, x0
        mov     x10, #8
        mov     x11, #0
        mul     x10, x10, x11
        add     x9, x9, x10
        //  %r189 = load i32, i32* %r188

        ldr     x9, [x9]
        //  ret i32 %r189

        mov     x0, x9
        mov     sp, x29
        ret
        sub     sp, sp, #0
mod:

        //193:x29,#-16

        //191:x29,#-8

        //bb42:

bb42:

        //  %r191 = alloca i32

        mov     x16, #16
        sub     sp, sp, x16
        mov     x9, x0
        mov     x11, x1
        //  store i32 %r190, i32* %r191

        str     x9, [x10]
        //  %r193 = alloca i32

        //  store i32 %r192, i32* %r193

        str     x11, [x12]
        //  br label %bb41


        b     bb41
        //bb41:

bb41:

        //  %r194 = load i32, i32* %r191

        ldr     x9, [x10]
        //  %r195 = load i32, i32* %r191

        ldr     x10, [x10]
        //  %r196 = load i32, i32* %r193

        ldr     x11, [x12]
        //  %r197 = sdiv i32 %r195, %r196

        sdiv     x10, x10, x11
        //  %r198 = load i32, i32* %r193

        ldr     x11, [x12]
        //  %r199 = mul i32 %r197, %r198

        mul     x10, x10, x11
        //  %r200 = sub i32 %r194, %r199

        sub     x9, x9, x10
        //  ret i32 %r200

        mov     x0, x9
        mov     sp, x29
        ret
        sub     sp, sp, #0
eval_op:

        //206:x29,#-24

        //204:x29,#-16

        //202:x29,#-8

        //bb44:

bb44:

        //  %r202 = alloca i32

        mov     x16, #32
        sub     sp, sp, x16
        mov     x12, x0
        mov     x13, x1
        mov     x14, x2
        //  store i32 %r201, i32* %r202

        str     x12, [x9]
        //  %r204 = alloca i32

        //  store i32 %r203, i32* %r204

        str     x13, [x10]
        //  %r206 = alloca i32

        //  store i32 %r205, i32* %r206

        str     x14, [x11]
        //  br label %bb43


        b     bb43
        //bb43:

bb43:

        //  %r207 = load i32, i32* %r202

        ldr     x12, [x9]
        //  %r208 = icmp eq i32 %r207, 43

        mov     x13, #43
        cmp     x12, x13
        //  br i1 %r208, label %bb45, label %bb46


        b.eq     bb45
        b     bb46
        //bb45:

bb45:

        //  %r209 = load i32, i32* %r204

        ldr     x10, [x10]
        //  %r210 = load i32, i32* %r206

        ldr     x9, [x11]
        //  %r211 = add i32 %r209, %r210

        add     x9, x10, x9
        //  ret i32 %r211

        mov     x0, x9
        mov     sp, x29
        ret
        //bb46:

bb46:

        //  br label %bb47


        b     bb47
        //bb47:

bb47:

        //  %r212 = load i32, i32* %r202

        ldr     x13, [x9]
        //  %r213 = icmp eq i32 %r212, 45

        mov     x12, #45
        cmp     x13, x12
        //  br i1 %r213, label %bb48, label %bb49


        b.eq     bb48
        b     bb49
        //bb48:

bb48:

        //  %r214 = load i32, i32* %r204

        ldr     x9, [x10]
        //  %r215 = load i32, i32* %r206

        ldr     x10, [x11]
        //  %r216 = sub i32 %r214, %r215

        sub     x9, x9, x10
        //  ret i32 %r216

        mov     x0, x9
        mov     sp, x29
        ret
        //bb49:

bb49:

        //  br label %bb50


        b     bb50
        //bb50:

bb50:

        //  %r217 = load i32, i32* %r202

        ldr     x12, [x9]
        //  %r218 = icmp eq i32 %r217, 42

        mov     x13, #42
        cmp     x12, x13
        //  br i1 %r218, label %bb51, label %bb52


        b.eq     bb51
        b     bb52
        //bb51:

bb51:

        //  %r219 = load i32, i32* %r204

        ldr     x10, [x10]
        //  %r220 = load i32, i32* %r206

        ldr     x9, [x11]
        //  %r221 = mul i32 %r219, %r220

        mul     x9, x10, x9
        //  ret i32 %r221

        mov     x0, x9
        mov     sp, x29
        ret
        //bb52:

bb52:

        //  br label %bb53


        b     bb53
        //bb53:

bb53:

        //  %r222 = load i32, i32* %r202

        ldr     x12, [x9]
        //  %r223 = icmp eq i32 %r222, 47

        mov     x13, #47
        cmp     x12, x13
        //  br i1 %r223, label %bb54, label %bb55


        b.eq     bb54
        b     bb55
        //bb54:

bb54:

        //  %r224 = load i32, i32* %r204

        ldr     x10, [x10]
        //  %r225 = load i32, i32* %r206

        ldr     x9, [x11]
        //  %r226 = sdiv i32 %r224, %r225

        sdiv     x9, x10, x9
        //  ret i32 %r226

        mov     x0, x9
        mov     sp, x29
        ret
        //bb55:

bb55:

        //  br label %bb56


        b     bb56
        //bb56:

bb56:

        //  %r227 = load i32, i32* %r202

        ldr     x9, [x9]
        //  %r228 = icmp eq i32 %r227, 37

        mov     x12, #37
        cmp     x9, x12
        //  br i1 %r228, label %bb57, label %bb58


        b.eq     bb57
        b     bb58
        //bb57:

bb57:

        //  %r229 = load i32, i32* %r204

        ldr     x9, [x10]
        //  %r230 = load i32, i32* %r206

        ldr     x10, [x11]
        //  %r231 = call i32 @mod(i32 %r229, i32 %r230)

        mov     x0, x9
        mov     x1, x10
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     mod
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        //  ret i32 %r231

        mov     x0, x9
        mov     sp, x29
        ret
        //bb58:

bb58:

        //  br label %bb59


        b     bb59
        //bb59:

bb59:

        //  ret i32 0

        mov     x9, #0
        mov     x0, x9
        mov     sp, x29
        ret
        sub     sp, sp, #200
eval:

        //234:x29,#-4160

        //233:x29,#-4152

        //253:x29,#-56

        //232:x29,#-2104

        //271:x29,#-32

        //291:x29,#-24

        //267:x29,#-48

        //293:x29,#-16

        //269:x29,#-40

        //295:x29,#-8

        //bb60:

bb60:

        sub     sp, sp, #200
        //  %r295 = alloca i32

        mov     x16, #4160
        sub     sp, sp, x16
        //  %r293 = alloca i32

        //  %r291 = alloca i32

        //  %r271 = alloca i32

        //  %r269 = alloca i32

        //  %r267 = alloca i32

        //  %r253 = alloca i32

        //  %r232 = alloca [ 256 x i32 ]

        //  %r233 = alloca [ 256 x i32 ]

        //  %r234 = alloca i32

        //  store i32 0, i32* %r234

        mov     x16, #0
        add     x16, sp, #0
        str     x16, [x16]
        str     x16, [x17]
        add     x17, sp, #8
        str     x17, [x17]
        //  br label %bb61


        b     bb61
        //bb61:

bb61:

        //  %r235 = load i32, i32* %r234

        add     x18, sp, #8
        ldr     x18, [x18]
        ldr     x10, [x18]
        //  %r236 = icmp slt i32 %r235, 256

        add     x16, sp, #24
        ldr     x16, [x16]
        mov     x19, #16
        add     x19, sp, #16
        str     x19, [x19]
        cmp     x10, x19
        //  br i1 %r236, label %bb62, label %bb63


        b.lt     bb62
        b     bb63
        //bb62:

bb62:

        //  %r237 = load i32, i32* %r234

        add     x17, sp, #8
        ldr     x17, [x17]
        ldr     x11, [x17]
        //  %r238 = getelementptr [256 x i32 ], [256 x i32 ]* %r232, i32 0, i32 %r237

        mov     x10, #8
        mul     x11, x10, x11
        add     x10, x29, #-2104
        add     x11, x10, x11
        //  store i32 0, i32* %r238

        mov     x10, #0
        str     x10, [x11]
        //  %r239 = load i32, i32* %r234

        add     x18, sp, #8
        ldr     x18, [x18]
        ldr     x11, [x18]
        //  %r240 = getelementptr [256 x i32 ], [256 x i32 ]* %r233, i32 0, i32 %r239

        mov     x10, #8
        mul     x11, x10, x11
        add     x10, x29, #-4152
        add     x11, x10, x11
        //  store i32 0, i32* %r240

        mov     x10, #0
        str     x10, [x11]
        //  %r241 = load i32, i32* %r234

        add     x19, sp, #8
        ldr     x19, [x19]
        ldr     x11, [x19]
        //  %r242 = add i32 %r241, 1

        mov     x10, #1
        add     x10, x11, x10
        //  store i32 %r242, i32* %r234

        str     x10, [x16]
        add     x16, sp, #8
        str     x16, [x16]
        //  br label %bb61


        b     bb61
        //bb63:

bb63:

        //  %r243 = load i32, i32* @cur_token

        adrp     x10, cur_token
        add     x10, x10, #:lo12:cur_token
        ldr     x10, [x10]
        //  %r244 = load i32, i32* @TOKEN_NUM

        adrp     x11, TOKEN_NUM
        add     x11, x11, #:lo12:TOKEN_NUM
        ldr     x11, [x11]
        //  %r245 = icmp ne i32 %r243, %r244

        cmp     x10, x11
        //  br i1 %r245, label %bb64, label %bb65


        b.ne     bb64
        b     bb65
        //bb64:

bb64:

        //  %r246 = call i32 @panic()

        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     panic
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        //  ret i32 %r246

        mov     x0, x9
        mov     sp, x29
        ret
        //bb65:

bb65:

        //  br label %bb66


        b     bb66
        //bb66:

bb66:

        //  %r247 = getelementptr [256 x i32 ], [256 x i32 ]* %r232, i32 0, i32 0

        mov     x11, #8
        mov     x10, #0
        mul     x11, x11, x10
        add     x10, x29, #-2104
        add     x17, x10, x11
        add     x17, sp, #32
        str     x17, [x17]
        //  %r248 = load i32, i32* @num

        adrp     x10, num
        add     x10, x10, #:lo12:num
        ldr     x18, [x10]
        add     x18, sp, #40
        str     x18, [x18]
        //  call void @stack_push(i32* %r247, i32 %r248)

        add     x19, sp, #32
        ldr     x19, [x19]
        mov     x0, x19
        add     x16, sp, #40
        ldr     x16, [x16]
        mov     x1, x16
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     stack_push
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        //  %r249 = call i32 @next_token()

        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     next_token
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        //  br label %bb67


        b     bb67
        //bb67:

bb67:

        //  %r250 = load i32, i32* @cur_token

        add     x17, sp, #48
        ldr     x17, [x17]
        adrp     x17, cur_token
        add     x17, x17, #:lo12:cur_token
        add     x19, sp, #48
        ldr     x19, [x19]
        ldr     x18, [x19]
        add     x18, sp, #56
        str     x18, [x18]
        //  %r251 = load i32, i32* @TOKEN_OTHER

        adrp     x10, TOKEN_OTHER
        add     x10, x10, #:lo12:TOKEN_OTHER
        ldr     x16, [x10]
        add     x16, sp, #64
        str     x16, [x16]
        //  %r252 = icmp eq i32 %r250, %r251

        add     x17, sp, #56
        ldr     x17, [x17]
        add     x18, sp, #64
        ldr     x18, [x18]
        cmp     x17, x18
        //  br i1 %r252, label %bb68, label %bb69


        b.eq     bb68
        b     bb69
        //bb68:

bb68:

        //  %r254 = load i32, i32* @other

        adrp     x10, other
        add     x10, x10, #:lo12:other
        ldr     x19, [x10]
        add     x19, sp, #72
        str     x19, [x19]
        //  store i32 %r254, i32* %r253

        add     x16, sp, #72
        ldr     x16, [x16]
        str     x16, [x17]
        add     x17, sp, #80
        str     x17, [x17]
        //  %r255 = load i32, i32* %r253

        add     x19, sp, #80
        ldr     x19, [x19]
        ldr     x18, [x19]
        add     x18, sp, #88
        str     x18, [x18]
        //  %r256 = call i32 @get_op_prec(i32 %r255)

        add     x16, sp, #88
        ldr     x16, [x16]
        mov     x0, x16
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     get_op_prec
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x17, x0
        add     x17, sp, #24
        str     x17, [x17]
        //  %r257 = icmp eq i32 %r256, 0

        mov     x10, #0
        add     x18, sp, #24
        ldr     x18, [x18]
        cmp     x18, x10
        //  br i1 %r257, label %bb70, label %bb71


        b.eq     bb70
        b     bb71
        //bb70:

bb70:

        //  br label %bb69


        b     bb69
        //bb71:

bb71:

        //  br label %bb72


        b     bb72
        //bb72:

bb72:

        //  %r258 = call i32 @next_token()

        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     next_token
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        //  br label %bb73


        b     bb73
        //bb73:

bb73:

        //  %r260 = call i32 @stack_size(i32* %r233)

        add     x19, sp, #96
        ldr     x19, [x19]
        mov     x0, x19
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     stack_size
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x16, x0
        add     x16, sp, #104
        str     x16, [x16]
        //  %r261 = icmp ne i32 %r260, 0

        mov     x10, #0
        add     x17, sp, #104
        ldr     x17, [x17]
        cmp     x17, x10
        //  br i1 %r261, label %bb76, label %bb75


        b.ne     bb76
        b     bb75
        //bb76:

bb76:

        //  %r262 = call i32 @stack_peek(i32* %r233)

        add     x18, sp, #96
        ldr     x18, [x18]
        mov     x0, x18
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     stack_peek
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x10, x0
        //  %r263 = call i32 @get_op_prec(i32 %r262)

        mov     x0, x10
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     get_op_prec
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x11, x0
        //  %r264 = load i32, i32* %r253

        add     x19, sp, #80
        ldr     x19, [x19]
        ldr     x10, [x19]
        //  %r265 = call i32 @get_op_prec(i32 %r264)

        mov     x0, x10
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     get_op_prec
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x16, x0
        add     x16, sp, #112
        str     x16, [x16]
        //  %r266 = icmp sge i32 %r263, %r265

        add     x17, sp, #112
        ldr     x17, [x17]
        cmp     x11, x17
        //  br i1 %r266, label %bb74, label %bb75


        b.ge     bb74
        b     bb75
        //bb74:

bb74:

        //  %r268 = call i32 @stack_pop(i32* %r233)

        add     x18, sp, #96
        ldr     x18, [x18]
        mov     x0, x18
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     stack_pop
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x10, x0
        //  store i32 %r268, i32* %r267

        str     x10, [x19]
        add     x19, sp, #120
        str     x19, [x19]
        //  %r270 = call i32 @stack_pop(i32* %r232)

        add     x16, sp, #128
        ldr     x16, [x16]
        mov     x0, x16
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     stack_pop
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x10, x0
        //  store i32 %r270, i32* %r269

        str     x10, [x15]
        //  %r272 = call i32 @stack_pop(i32* %r232)

        add     x17, sp, #128
        ldr     x17, [x17]
        mov     x0, x17
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     stack_pop
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x10, x0
        //  store i32 %r272, i32* %r271

        str     x10, [x14]
        //  %r273 = getelementptr [256 x i32 ], [256 x i32 ]* %r232, i32 0, i32 0

        mov     x11, #8
        mov     x10, #0
        mul     x18, x11, x10
        add     x18, sp, #136
        str     x18, [x18]
        add     x19, x29, #-2104
        add     x19, sp, #144
        str     x19, [x19]
        add     x13, x19, x18
        //  %r274 = load i32, i32* %r267

        add     x16, sp, #120
        ldr     x16, [x16]
        ldr     x12, [x16]
        //  %r275 = load i32, i32* %r271

        ldr     x11, [x14]
        //  %r276 = load i32, i32* %r269

        ldr     x10, [x15]
        //  %r277 = call i32 @eval_op(i32 %r274, i32 %r275, i32 %r276)

        mov     x0, x12
        mov     x1, x11
        mov     x2, x10
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     eval_op
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x10, x0
        //  call void @stack_push(i32* %r273, i32 %r277)

        mov     x0, x13
        mov     x1, x10
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     stack_push
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        //  br label %bb73


        b     bb73
        //bb75:

bb75:

        //  %r278 = getelementptr [256 x i32 ], [256 x i32 ]* %r233, i32 0, i32 0

        mov     x11, #8
        mov     x10, #0
        mul     x11, x11, x10
        add     x10, x29, #-4152
        add     x11, x10, x11
        //  %r279 = load i32, i32* %r253

        //  %r280 = load i32, i32* %r253

        add     x17, sp, #80
        ldr     x17, [x17]
        ldr     x10, [x17]
        //  call void @stack_push(i32* %r278, i32 %r280)

        mov     x0, x11
        mov     x1, x10
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     stack_push
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        //  %r281 = load i32, i32* @cur_token

        adrp     x10, cur_token
        add     x10, x10, #:lo12:cur_token
        ldr     x11, [x10]
        //  %r282 = load i32, i32* @TOKEN_NUM

        adrp     x10, TOKEN_NUM
        add     x10, x10, #:lo12:TOKEN_NUM
        ldr     x10, [x10]
        //  %r283 = icmp ne i32 %r281, %r282

        cmp     x11, x10
        //  br i1 %r283, label %bb77, label %bb78


        b.ne     bb77
        b     bb78
        //bb77:

bb77:

        //  %r284 = call i32 @panic()

        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     panic
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        //  ret i32 %r284

        mov     x0, x9
        mov     sp, x29
        ret
        //bb78:

bb78:

        //  br label %bb79


        b     bb79
        //bb79:

bb79:

        //  %r285 = getelementptr [256 x i32 ], [256 x i32 ]* %r232, i32 0, i32 0

        mov     x11, #8
        mov     x10, #0
        mul     x18, x11, x10
        add     x18, sp, #152
        str     x18, [x18]
        add     x19, x29, #-2104
        add     x19, sp, #160
        str     x19, [x19]
        add     x11, x19, x18
        //  %r286 = load i32, i32* @num

        add     x16, sp, #168
        ldr     x16, [x16]
        adrp     x16, num
        add     x16, x16, #:lo12:num
        add     x17, sp, #168
        ldr     x17, [x17]
        ldr     x10, [x17]
        //  call void @stack_push(i32* %r285, i32 %r286)

        mov     x0, x11
        mov     x1, x10
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     stack_push
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        //  %r287 = call i32 @next_token()

        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     next_token
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        //  br label %bb67


        b     bb67
        //bb69:

bb69:

        //  %r288 = call i32 @next_token()

        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     next_token
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        //  br label %bb80


        b     bb80
        //bb80:

bb80:

        //  %r289 = call i32 @stack_size(i32* %r233)

        add     x18, sp, #96
        ldr     x18, [x18]
        mov     x0, x18
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     stack_size
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x10, x0
        //  %r290 = icmp ne i32 %r289, 0

        mov     x11, #0
        cmp     x10, x11
        //  br i1 %r290, label %bb81, label %bb82


        b.ne     bb81
        b     bb82
        //bb81:

bb81:

        //  %r292 = call i32 @stack_pop(i32* %r233)

        add     x19, sp, #96
        ldr     x19, [x19]
        mov     x0, x19
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     stack_pop
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x10, x0
        //  store i32 %r292, i32* %r291

        str     x10, [x16]
        add     x16, sp, #176
        str     x16, [x16]
        //  %r294 = call i32 @stack_pop(i32* %r232)

        add     x17, sp, #128
        ldr     x17, [x17]
        mov     x0, x17
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     stack_pop
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x10, x0
        //  store i32 %r294, i32* %r293

        str     x10, [x18]
        add     x18, sp, #184
        str     x18, [x18]
        //  %r296 = call i32 @stack_pop(i32* %r232)

        add     x19, sp, #128
        ldr     x19, [x19]
        mov     x0, x19
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     stack_pop
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x10, x0
        //  store i32 %r296, i32* %r295

        str     x10, [x9]
        //  %r297 = getelementptr [256 x i32 ], [256 x i32 ]* %r232, i32 0, i32 0

        mov     x10, #8
        mov     x11, #0
        mul     x10, x10, x11
        add     x11, x29, #-2104
        add     x12, x11, x10
        //  %r298 = load i32, i32* %r291

        add     x16, sp, #176
        ldr     x16, [x16]
        ldr     x11, [x16]
        //  %r299 = load i32, i32* %r295

        ldr     x10, [x9]
        //  %r300 = load i32, i32* %r293

        add     x18, sp, #184
        ldr     x18, [x18]
        ldr     x17, [x18]
        add     x17, sp, #192
        str     x17, [x17]
        //  %r301 = call i32 @eval_op(i32 %r298, i32 %r299, i32 %r300)

        mov     x0, x11
        mov     x1, x10
        add     x19, sp, #192
        ldr     x19, [x19]
        mov     x2, x19
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     eval_op
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x10, x0
        //  call void @stack_push(i32* %r297, i32 %r301)

        mov     x0, x12
        mov     x1, x10
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     stack_push
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        //  br label %bb80


        b     bb80
        //bb82:

bb82:

        //  %r302 = call i32 @stack_peek(i32* %r232)

        add     x16, sp, #128
        ldr     x16, [x16]
        mov     x0, x16
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     stack_peek
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        //  ret i32 %r302

        mov     x0, x9
        mov     sp, x29
        ret
        sub     sp, sp, #0
main:

        //303:x29,#-8

        //bb83:

bb83:

        //  call void @_sysy_starttime(i32 205)

        mov     x16, #16
        sub     sp, sp, x16
        mov     x0, #205
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
        //  %r304 = call i32 @getint()

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
        mov     x10, x0
        //  %r303 = alloca i32

        //  store i32 %r304, i32* %r303

        str     x10, [x9]
        //  %r305 = call i32 @getch()

        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     getch
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        //  %r306 = call i32 @next_token()

        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     next_token
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        //  br label %bb84


        b     bb84
        //bb84:

bb84:

        //  %r307 = load i32, i32* %r303

        ldr     x11, [x9]
        //  %r308 = icmp ne i32 %r307, 0

        mov     x10, #0
        cmp     x11, x10
        //  br i1 %r308, label %bb85, label %bb86


        b.ne     bb85
        b     bb86
        //bb85:

bb85:

        //  %r309 = call i32 @eval()

        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     eval
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x10, x0
        //  call void @putint(i32 %r309)

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
        //  %r310 = load i32, i32* %r303

        ldr     x11, [x9]
        //  %r311 = sub i32 %r310, 1

        mov     x10, #1
        sub     x10, x11, x10
        //  store i32 %r311, i32* %r303

        str     x10, [x9]
        //  br label %bb84


        b     bb84
        //bb86:

bb86:

        //  call void @_sysy_stoptime(i32 214)

        mov     x0, #214
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
