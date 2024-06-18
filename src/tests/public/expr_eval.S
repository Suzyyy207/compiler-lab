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
next_char:

        //bb1:

bb1:

        //  %r312 = call i32 @getch()

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
        //  store i32 %r312, i32* @last_char

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
is_space:

        //bb3:

bb3:

        //  %r314 = add i32 0, 0

        mov     x16, #0
        sub     sp, sp, x16
        mov     x9, x0
        //  %r315 = add i32 %r102, 0

        mov     x9, x9
        //  br label %bb2


        b     bb2
        //bb2:

bb2:

        //  %r316 = icmp eq i32 %r315, 32

        mov     x10, #32
        cmp     x9, x10
        //  br i1 %r316, label %bb4, label %bb7


        b.eq     bb4
        b     bb7
        //bb7:

bb7:

        //  %r317 = icmp eq i32 %r315, 10

        mov     x10, #10
        cmp     x9, x10
        //  br i1 %r317, label %bb4, label %bb5


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
is_num:

        //bb9:

bb9:

        //  %r319 = add i32 0, 0

        mov     x16, #0
        sub     sp, sp, x16
        mov     x9, x0
        //  %r320 = add i32 %r109, 0

        mov     x9, x9
        //  br label %bb8


        b     bb8
        //bb8:

bb8:

        //  %r321 = icmp sge i32 %r320, 48

        mov     x10, #48
        cmp     x9, x10
        //  br i1 %r321, label %bb13, label %bb11


        b.ge     bb13
        b     bb11
        //bb13:

bb13:

        //  %r322 = icmp sle i32 %r320, 57

        mov     x10, #57
        cmp     x9, x10
        //  br i1 %r322, label %bb10, label %bb11


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
        //  %r323 = call i32 @is_space(i32 %r116)

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
        //  %r324 = icmp ne i32 %r323, 0

        mov     x9, #0
        cmp     x10, x9
        //  br i1 %r324, label %bb16, label %bb17


        b.ne     bb16
        b     bb17
        //bb16:

bb16:

        //  %r335 = call i32 @next_char()

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
        //  %r325 = call i32 @is_num(i32 %r120)

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
        mov     x10, x0
        //  %r326 = icmp ne i32 %r325, 0

        mov     x9, #0
        cmp     x10, x9
        //  br i1 %r326, label %bb18, label %bb19


        b.ne     bb18
        b     bb19
        //bb18:

bb18:

        //  %r123 = load i32, i32* @last_char

        adrp     x9, last_char
        add     x9, x9, #:lo12:last_char
        ldr     x9, [x9]
        //  %r328 = sub i32 %r123, 48

        mov     x10, #48
        sub     x10, x9, x10
        //  store i32 %r328, i32* @num

        adrp     x9, num
        add     x9, x9, #:lo12:num
        str     x10, [x9]
        //  br label %bb21


        b     bb21
        //bb21:

bb21:

        //  %r329 = call i32 @next_char()

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
        //  %r330 = call i32 @is_num(i32 %r329)

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
        //  %r331 = icmp ne i32 %r330, 0

        mov     x10, #0
        cmp     x9, x10
        //  br i1 %r331, label %bb22, label %bb23


        b.ne     bb22
        b     bb23
        //bb22:

bb22:

        //  %r128 = load i32, i32* @num

        adrp     x9, num
        add     x9, x9, #:lo12:num
        ldr     x10, [x9]
        //  %r332 = mul i32 %r128, 10

        mov     x9, #10
        mul     x9, x10, x9
        //  %r130 = load i32, i32* @last_char

        adrp     x10, last_char
        add     x10, x10, #:lo12:last_char
        ldr     x10, [x10]
        //  %r333 = add i32 %r332, %r130

        add     x9, x9, x10
        //  %r334 = sub i32 %r333, 48

        mov     x10, #48
        sub     x9, x9, x10
        //  store i32 %r334, i32* @num

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
        //  %r327 = call i32 @next_char()

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
        //  %r336 = sub i32 0, 1

        mov     x9, #0
        mov     x10, #1
        sub     x9, x9, x10
        //  ret i32 %r336

        mov     x0, x9
        mov     sp, x29
        ret
get_op_prec:

        //bb26:

bb26:

        //  %r338 = add i32 0, 0

        mov     x16, #0
        sub     sp, sp, x16
        mov     x9, x0
        //  %r339 = add i32 %r139, 0

        mov     x10, x9
        //  br label %bb25


        b     bb25
        //bb25:

bb25:

        //  %r340 = icmp eq i32 %r339, 43

        mov     x9, #43
        cmp     x10, x9
        //  br i1 %r340, label %bb27, label %bb30


        b.eq     bb27
        b     bb30
        //bb30:

bb30:

        //  %r341 = icmp eq i32 %r339, 45

        mov     x9, #45
        cmp     x10, x9
        //  br i1 %r341, label %bb27, label %bb28


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

        //  %r342 = icmp eq i32 %r339, 42

        mov     x9, #42
        cmp     x10, x9
        //  br i1 %r342, label %bb31, label %bb35


        b.eq     bb31
        b     bb35
        //bb35:

bb35:

        //  %r343 = icmp eq i32 %r339, 47

        mov     x9, #47
        cmp     x10, x9
        //  br i1 %r343, label %bb31, label %bb34


        b.eq     bb31
        b     bb34
        //bb34:

bb34:

        //  %r344 = icmp eq i32 %r339, 37

        mov     x9, #37
        cmp     x10, x9
        //  br i1 %r344, label %bb31, label %bb32


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
stack_push:

        //bb37:

bb37:

        //  %r347 = add i32 0, 0

        mov     x16, #0
        sub     sp, sp, x16
        mov     x10, x0
        mov     x9, x1
        //  %r348 = add i32 0, 0

        //  %r349 = add i32 %r155, 0

        mov     x9, x9
        //  br label %bb36


        b     bb36
        //bb36:

bb36:

        //  %r157 = getelementptr i32, i32* %r154, i32 0

        mov     x11, #8
        mov     x12, #0
        mul     x11, x11, x12
        add     x11, x10, x11
        //  %r158 = load i32, i32* %r157

        ldr     x11, [x11]
        //  %r350 = add i32 %r158, 1

        mov     x12, #1
        add     x12, x11, x12
        //  %r160 = getelementptr i32, i32* %r154, i32 0

        mov     x13, #8
        mov     x11, #0
        mul     x11, x13, x11
        add     x11, x10, x11
        //  store i32 %r350, i32* %r160

        str     x12, [x11]
        //  %r162 = getelementptr i32, i32* %r154, i32 0

        mov     x12, #8
        mov     x11, #0
        mul     x11, x12, x11
        add     x11, x10, x11
        //  %r163 = load i32, i32* %r162

        ldr     x11, [x11]
        //  %r351 = add i32 %r163, 0

        mov     x11, x11
        //  %r166 = getelementptr i32, i32* %r154, i32 %r351

        mov     x12, #8
        mul     x11, x12, x11
        add     x10, x10, x11
        //  store i32 %r349, i32* %r166

        str     x9, [x10]
        //  ret void

        mov     sp, x29
        ret
stack_pop:

        //bb38:

bb38:

        //  %r169 = getelementptr i32, i32* %r167, i32 0

        mov     x16, #0
        sub     sp, sp, x16
        mov     x9, x0
        mov     x10, #8
        mov     x11, #0
        mul     x10, x10, x11
        add     x10, x9, x10
        //  %r170 = load i32, i32* %r169

        ldr     x10, [x10]
        //  %r354 = add i32 0, 0

        //  %r355 = add i32 %r170, 0

        mov     x10, x10
        //  %r173 = getelementptr i32, i32* %r167, i32 %r355

        mov     x11, #8
        mul     x10, x11, x10
        add     x10, x9, x10
        //  %r174 = load i32, i32* %r173

        ldr     x10, [x10]
        //  %r356 = add i32 0, 0

        //  %r357 = add i32 %r174, 0

        mov     x11, x10
        //  %r175 = getelementptr i32, i32* %r167, i32 0

        mov     x12, #8
        mov     x10, #0
        mul     x10, x12, x10
        add     x10, x9, x10
        //  %r176 = load i32, i32* %r175

        ldr     x10, [x10]
        //  %r358 = sub i32 %r176, 1

        mov     x12, #1
        sub     x10, x10, x12
        //  %r178 = getelementptr i32, i32* %r167, i32 0

        mov     x12, #8
        mov     x13, #0
        mul     x12, x12, x13
        add     x9, x9, x12
        //  store i32 %r358, i32* %r178

        str     x10, [x9]
        //  ret i32 %r357

        mov     x0, x11
        mov     sp, x29
        ret
stack_peek:

        //bb39:

bb39:

        //  %r182 = getelementptr i32, i32* %r180, i32 0

        mov     x16, #0
        sub     sp, sp, x16
        mov     x9, x0
        mov     x10, #8
        mov     x11, #0
        mul     x10, x10, x11
        add     x10, x9, x10
        //  %r183 = load i32, i32* %r182

        ldr     x10, [x10]
        //  %r360 = add i32 0, 0

        //  %r361 = add i32 %r183, 0

        mov     x11, x10
        //  %r185 = getelementptr i32, i32* %r180, i32 %r361

        mov     x10, #8
        mul     x10, x10, x11
        add     x9, x9, x10
        //  %r186 = load i32, i32* %r185

        ldr     x9, [x9]
        //  ret i32 %r186

        mov     x0, x9
        mov     sp, x29
        ret
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
mod:

        //bb42:

bb42:

        //  %r364 = add i32 0, 0

        mov     x16, #0
        sub     sp, sp, x16
        mov     x9, x0
        mov     x10, x1
        //  %r365 = add i32 %r190, 0

        mov     x9, x9
        //  %r366 = add i32 0, 0

        //  %r367 = add i32 %r192, 0

        mov     x10, x10
        //  br label %bb41


        b     bb41
        //bb41:

bb41:

        //  %r368 = sdiv i32 %r365, %r367

        sdiv     x11, x9, x10
        //  %r369 = mul i32 %r368, %r367

        mul     x10, x11, x10
        //  %r370 = sub i32 %r365, %r369

        sub     x9, x9, x10
        //  ret i32 %r370

        mov     x0, x9
        mov     sp, x29
        ret
eval_op:

        //bb44:

bb44:

        //  %r374 = add i32 0, 0

        mov     x16, #0
        sub     sp, sp, x16
        mov     x11, x0
        mov     x10, x1
        mov     x9, x2
        //  %r375 = add i32 %r201, 0

        mov     x12, x11
        //  %r376 = add i32 0, 0

        //  %r377 = add i32 %r203, 0

        mov     x11, x10
        //  %r378 = add i32 0, 0

        //  %r379 = add i32 %r205, 0

        mov     x10, x9
        //  br label %bb43


        b     bb43
        //bb43:

bb43:

        //  %r380 = icmp eq i32 %r375, 43

        mov     x9, #43
        cmp     x12, x9
        //  br i1 %r380, label %bb45, label %bb46


        b.eq     bb45
        b     bb46
        //bb45:

bb45:

        //  %r389 = add i32 %r377, %r379

        add     x9, x11, x10
        //  ret i32 %r389

        mov     x0, x9
        mov     sp, x29
        ret
        //bb46:

bb46:

        //  br label %bb47


        b     bb47
        //bb47:

bb47:

        //  %r381 = icmp eq i32 %r375, 45

        mov     x9, #45
        cmp     x12, x9
        //  br i1 %r381, label %bb48, label %bb49


        b.eq     bb48
        b     bb49
        //bb48:

bb48:

        //  %r388 = sub i32 %r377, %r379

        sub     x9, x11, x10
        //  ret i32 %r388

        mov     x0, x9
        mov     sp, x29
        ret
        //bb49:

bb49:

        //  br label %bb50


        b     bb50
        //bb50:

bb50:

        //  %r382 = icmp eq i32 %r375, 42

        mov     x9, #42
        cmp     x12, x9
        //  br i1 %r382, label %bb51, label %bb52


        b.eq     bb51
        b     bb52
        //bb51:

bb51:

        //  %r387 = mul i32 %r377, %r379

        mul     x9, x11, x10
        //  ret i32 %r387

        mov     x0, x9
        mov     sp, x29
        ret
        //bb52:

bb52:

        //  br label %bb53


        b     bb53
        //bb53:

bb53:

        //  %r383 = icmp eq i32 %r375, 47

        mov     x9, #47
        cmp     x12, x9
        //  br i1 %r383, label %bb54, label %bb55


        b.eq     bb54
        b     bb55
        //bb54:

bb54:

        //  %r386 = sdiv i32 %r377, %r379

        sdiv     x9, x11, x10
        //  ret i32 %r386

        mov     x0, x9
        mov     sp, x29
        ret
        //bb55:

bb55:

        //  br label %bb56


        b     bb56
        //bb56:

bb56:

        //  %r384 = icmp eq i32 %r375, 37

        mov     x9, #37
        cmp     x12, x9
        //  br i1 %r384, label %bb57, label %bb58


        b.eq     bb57
        b     bb58
        //bb57:

bb57:

        //  %r385 = call i32 @mod(i32 %r377, i32 %r379)

        mov     x0, x11
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
        //  ret i32 %r385

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
eval:

        //233:x29,#-4096

        //232:x29,#-2048

        //bb60:

bb60:

        //  %r398 = add i32 0, 0

        mov     x16, #4096
        sub     sp, sp, x16
        //  %r399 = add i32 0, 0

        //  %r400 = add i32 0, 0

        //  %r401 = add i32 0, 0

        //  %r402 = add i32 0, 0

        //  %r403 = add i32 0, 0

        //  %r404 = add i32 0, 0

        //  %r232 = alloca [ 256 x i32 ]

        //  %r233 = alloca [ 256 x i32 ]

        //  %r405 = add i32 0, 0

        //  %r406 = add i32 0, 0

        mov     x9, #0
        mov     x9, x9
        //  br label %bb61


        b     bb61
        //bb61:

bb61:

        //  %r407 = phi i32 [ %r406, %bb60 ], [ %r445, %bb62 ]

        //  %r408 = icmp slt i32 %r407, 256

        mov     x11, #256
        cmp     x9, x11
        //  br i1 %r408, label %bb62, label %bb63


        b.lt     bb62
        b     bb63
        //bb62:

bb62:

        //  %r238 = getelementptr [256 x i32 ], [256 x i32 ]* %r232, i32 0, i32 %r407

        mov     x11, #8
        mul     x11, x11, x9
        add     x12, x29, #-2048
        add     x12, x12, x11
        //  store i32 0, i32* %r238

        mov     x11, #0
        str     x11, [x12]
        //  %r240 = getelementptr [256 x i32 ], [256 x i32 ]* %r233, i32 0, i32 %r407

        mov     x11, #8
        mul     x12, x11, x9
        add     x11, x29, #-4096
        add     x12, x11, x12
        //  store i32 0, i32* %r240

        mov     x11, #0
        str     x11, [x12]
        //  %r444 = add i32 %r407, 1

        mov     x11, #1
        add     x9, x9, x11
        //  %r445 = add i32 %r444, 0

        mov     x9, x9
        mov     x9, x9
        //  br label %bb61


        b     bb61
        //bb63:

bb63:

        //  %r243 = load i32, i32* @cur_token

        adrp     x9, cur_token
        add     x9, x9, #:lo12:cur_token
        ldr     x11, [x9]
        //  %r244 = load i32, i32* @TOKEN_NUM

        adrp     x9, TOKEN_NUM
        add     x9, x9, #:lo12:TOKEN_NUM
        ldr     x9, [x9]
        //  %r409 = icmp ne i32 %r243, %r244

        cmp     x11, x9
        //  br i1 %r409, label %bb64, label %bb65


        b.ne     bb64
        b     bb65
        //bb64:

bb64:

        //  %r443 = call i32 @panic()

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
        //  ret i32 %r443

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
        mov     x9, #0
        mul     x11, x11, x9
        add     x9, x29, #-2048
        add     x11, x9, x11
        //  %r248 = load i32, i32* @num

        adrp     x9, num
        add     x9, x9, #:lo12:num
        ldr     x9, [x9]
        //  call void @stack_push(i32* %r247, i32 %r248)

        mov     x0, x11
        mov     x1, x9
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
        //  %r410 = call i32 @next_token()

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

        adrp     x9, cur_token
        add     x9, x9, #:lo12:cur_token
        ldr     x11, [x9]
        //  %r251 = load i32, i32* @TOKEN_OTHER

        adrp     x9, TOKEN_OTHER
        add     x9, x9, #:lo12:TOKEN_OTHER
        ldr     x9, [x9]
        //  %r411 = icmp eq i32 %r250, %r251

        cmp     x11, x9
        //  br i1 %r411, label %bb68, label %bb69


        b.eq     bb68
        b     bb69
        //bb68:

bb68:

        //  %r254 = load i32, i32* @other

        adrp     x9, other
        add     x9, x9, #:lo12:other
        ldr     x9, [x9]
        //  %r423 = add i32 %r254, 0

        mov     x9, x9
        //  %r424 = call i32 @get_op_prec(i32 %r423)

        mov     x0, x9
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
        //  %r425 = icmp eq i32 %r424, 0

        mov     x12, #0
        cmp     x11, x12
        //  br i1 %r425, label %bb70, label %bb71


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

        //  %r426 = call i32 @next_token()

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

        //  %r427 = call i32 @stack_size(i32* %r233)

        str     x16, [sp, #-8]!
        ldr     x17, [sp], #8
        mov     x0, x17
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
        mov     x11, x0
        //  %r428 = icmp ne i32 %r427, 0

        mov     x12, #0
        cmp     x11, x12
        //  br i1 %r428, label %bb76, label %bb75


        b.ne     bb76
        b     bb75
        //bb76:

bb76:

        //  %r432 = call i32 @stack_peek(i32* %r233)

        ldr     x18, [sp], #8
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
        mov     x11, x0
        //  %r433 = call i32 @get_op_prec(i32 %r432)

        mov     x0, x11
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
        mov     x12, x0
        //  %r434 = call i32 @get_op_prec(i32 %r423)

        mov     x0, x9
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
        //  %r435 = icmp sge i32 %r433, %r434

        cmp     x12, x11
        //  br i1 %r435, label %bb74, label %bb75


        b.ge     bb74
        b     bb75
        //bb74:

bb74:

        //  %r436 = call i32 @stack_pop(i32* %r233)

        ldr     x19, [sp], #8
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
        mov     x11, x0
        //  %r437 = add i32 %r436, 0

        mov     x13, x11
        //  %r438 = call i32 @stack_pop(i32* %r232)

        mov     x0, x10
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
        mov     x11, x0
        //  %r439 = add i32 %r438, 0

        mov     x12, x11
        //  %r440 = call i32 @stack_pop(i32* %r232)

        mov     x0, x10
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
        mov     x11, x0
        //  %r441 = add i32 %r440, 0

        mov     x11, x11
        //  %r273 = getelementptr [256 x i32 ], [256 x i32 ]* %r232, i32 0, i32 0

        mov     x14, #8
        mov     x15, #0
        mul     x15, x14, x15
        add     x14, x29, #-2048
        add     x14, x14, x15
        //  %r442 = call i32 @eval_op(i32 %r437, i32 %r441, i32 %r439)

        mov     x0, x13
        mov     x1, x11
        mov     x2, x12
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
        mov     x11, x0
        //  call void @stack_push(i32* %r273, i32 %r442)

        mov     x0, x14
        mov     x1, x11
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
        mov     x12, #0
        mul     x12, x11, x12
        add     x11, x29, #-4096
        add     x11, x11, x12
        //  call void @stack_push(i32* %r278, i32 %r423)

        mov     x0, x11
        mov     x1, x9
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

        adrp     x9, cur_token
        add     x9, x9, #:lo12:cur_token
        ldr     x11, [x9]
        //  %r282 = load i32, i32* @TOKEN_NUM

        adrp     x9, TOKEN_NUM
        add     x9, x9, #:lo12:TOKEN_NUM
        ldr     x9, [x9]
        //  %r429 = icmp ne i32 %r281, %r282

        cmp     x11, x9
        //  br i1 %r429, label %bb77, label %bb78


        b.ne     bb77
        b     bb78
        //bb77:

bb77:

        //  %r431 = call i32 @panic()

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
        //  ret i32 %r431

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
        mov     x9, #0
        mul     x11, x11, x9
        add     x9, x29, #-2048
        add     x11, x9, x11
        //  %r286 = load i32, i32* @num

        adrp     x9, num
        add     x9, x9, #:lo12:num
        ldr     x9, [x9]
        //  call void @stack_push(i32* %r285, i32 %r286)

        mov     x0, x11
        mov     x1, x9
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
        //  %r430 = call i32 @next_token()

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

        //  %r412 = call i32 @next_token()

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

        //  %r413 = call i32 @stack_size(i32* %r233)

        ldr     x16, [sp], #8
        mov     x0, x16
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
        mov     x11, x0
        //  %r414 = icmp ne i32 %r413, 0

        mov     x9, #0
        cmp     x11, x9
        //  br i1 %r414, label %bb81, label %bb82


        b.ne     bb81
        b     bb82
        //bb81:

bb81:

        //  %r416 = call i32 @stack_pop(i32* %r233)

        ldr     x17, [sp], #8
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
        mov     x9, x0
        //  %r417 = add i32 %r416, 0

        mov     x9, x9
        //  %r418 = call i32 @stack_pop(i32* %r232)

        mov     x0, x10
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
        mov     x11, x0
        //  %r419 = add i32 %r418, 0

        mov     x11, x11
        //  %r420 = call i32 @stack_pop(i32* %r232)

        mov     x0, x10
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
        mov     x12, x0
        //  %r421 = add i32 %r420, 0

        mov     x12, x12
        //  %r297 = getelementptr [256 x i32 ], [256 x i32 ]* %r232, i32 0, i32 0

        mov     x13, #8
        mov     x14, #0
        mul     x13, x13, x14
        add     x14, x29, #-2048
        add     x13, x14, x13
        //  %r422 = call i32 @eval_op(i32 %r417, i32 %r421, i32 %r419)

        mov     x0, x9
        mov     x1, x12
        mov     x2, x11
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
        mov     x9, x0
        //  call void @stack_push(i32* %r297, i32 %r422)

        mov     x0, x13
        mov     x1, x9
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

        //  %r415 = call i32 @stack_peek(i32* %r232)

        mov     x0, x10
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
        //  ret i32 %r415

        mov     x0, x9
        mov     sp, x29
        ret
main:

        //bb83:

bb83:

        //  call void @_sysy_starttime(i32 205)

        mov     x16, #0
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
        //  %r447 = call i32 @getint()

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
        //  %r448 = add i32 0, 0

        //  %r449 = add i32 %r447, 0

        mov     x9, x9
        //  %r450 = call i32 @getch()

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
        //  %r451 = call i32 @next_token()

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
        mov     x10, x9
        //  br label %bb84


        b     bb84
        //bb84:

bb84:

        //  %r452 = phi i32 [ %r449, %bb83 ], [ %r456, %bb85 ]

        //  %r453 = icmp ne i32 %r452, 0

        mov     x9, #0
        cmp     x10, x9
        //  br i1 %r453, label %bb85, label %bb86


        b.ne     bb85
        b     bb86
        //bb85:

bb85:

        //  %r454 = call i32 @eval()

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
        mov     x9, x0
        //  call void @putint(i32 %r454)

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
        //  %r455 = sub i32 %r452, 1

        mov     x9, #1
        sub     x9, x10, x9
        //  %r456 = add i32 %r455, 0

        mov     x9, x9
        mov     x10, x9
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
