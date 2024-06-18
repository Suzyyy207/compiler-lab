.section .data
.global    ascii_0
ascii_0:
        .quad   48
.section .text
.global getch
.global getint
.global putch
.global putint
.global putarray
.global _sysy_starttime
.global _sysy_stoptime
.global my_getint
.global mod
.global my_putint
.global main
my_getint:

        //bb1:

bb1:

        //  %r172 = add i32 0, 0

        mov     x16, #0
        sub     sp, sp, x16
        //  %r173 = add i32 0, 0

        //  %r174 = add i32 0, 0

        mov     x9, #0
        mov     x10, x9
        //  br label %bb2


        b     bb2
        //bb2:

bb2:

        //  %r175 = phi i32 [ %r174, %bb1 ], [ %r191, %bb5 ]

        //  %r176 = icmp sgt i32 1, 0

        mov     x11, #1
        mov     x9, #0
        cmp     x11, x9
        //  br i1 %r176, label %bb3, label %bb4


        mov     x9, x10
        b.gt     bb3
        b     bb4
        //bb3:

bb3:

        //  %r189 = call i32 @getch()

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
        mov     x10, x0
        //  %r104 = load i32, i32* @ascii_0

        adrp     x9, ascii_0
        add     x9, x9, #:lo12:ascii_0
        ldr     x9, [x9]
        //  %r190 = sub i32 %r189, %r104

        sub     x9, x10, x9
        //  %r191 = add i32 %r190, 0

        mov     x10, x9
        //  %r192 = icmp slt i32 %r191, 0

        mov     x9, #0
        cmp     x10, x9
        //  br i1 %r192, label %bb5, label %bb8


        b.lt     bb5
        b     bb8
        //bb8:

bb8:

        //  %r193 = icmp sgt i32 %r191, 9

        mov     x9, #9
        cmp     x10, x9
        //  br i1 %r193, label %bb5, label %bb6


        b.gt     bb5
        b     bb6
        //bb5:

bb5:

        mov     x10, x10
        //  br label %bb2


        b     bb2
        //bb6:

bb6:

        mov     x9, x10
        //  br label %bb4


        b     bb4
        //bb4:

bb4:

        //  %r177 = phi i32 [ %r175, %bb2 ], [ %r191, %bb6 ]

        //  %r178 = add i32 %r177, 0

        mov     x9, x9
        mov     x11, x9
        //  br label %bb9


        b     bb9
        //bb9:

bb9:

        //  %r179 = phi i32 [ %r178, %bb4 ], [ %r188, %bb14 ]

        //  %r180 = icmp sgt i32 1, 0

        mov     x9, #1
        mov     x10, #0
        cmp     x9, x10
        //  br i1 %r180, label %bb10, label %bb11


        b.gt     bb10
        b     bb11
        //bb10:

bb10:

        //  %r181 = call i32 @getch()

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
        mov     x10, x0
        //  %r114 = load i32, i32* @ascii_0

        adrp     x9, ascii_0
        add     x9, x9, #:lo12:ascii_0
        ldr     x9, [x9]
        //  %r182 = sub i32 %r181, %r114

        sub     x9, x10, x9
        //  %r183 = add i32 %r182, 0

        mov     x9, x9
        //  %r184 = icmp sge i32 %r183, 0

        mov     x10, #0
        cmp     x9, x10
        //  br i1 %r184, label %bb15, label %bb13


        b.ge     bb15
        b     bb13
        //bb15:

bb15:

        //  %r185 = icmp sle i32 %r183, 9

        mov     x10, #9
        cmp     x9, x10
        //  br i1 %r185, label %bb12, label %bb13


        b.le     bb12
        b     bb13
        //bb12:

bb12:

        //  %r186 = mul i32 %r179, 10

        mov     x10, #10
        mul     x10, x11, x10
        //  %r187 = add i32 %r186, %r183

        add     x9, x10, x9
        //  %r188 = add i32 %r187, 0

        mov     x9, x9
        //  br label %bb14


        b     bb14
        //bb13:

bb13:

        //  br label %bb11


        b     bb11
        //bb14:

bb14:

        mov     x11, x9
        //  br label %bb9


        b     bb9
        //bb11:

bb11:

        //  ret i32 %r179

        mov     x0, x11
        mov     sp, x29
        ret
mod:

        //bb17:

bb17:

        //  %r196 = add i32 0, 0

        mov     x16, #0
        sub     sp, sp, x16
        mov     x9, x0
        mov     x10, x1
        //  %r197 = add i32 %r126, 0

        mov     x9, x9
        //  %r198 = add i32 0, 0

        //  %r199 = add i32 %r128, 0

        mov     x10, x10
        //  br label %bb16


        b     bb16
        //bb16:

bb16:

        //  %r200 = sdiv i32 %r197, %r199

        sdiv     x11, x9, x10
        //  %r201 = mul i32 %r200, %r199

        mul     x10, x11, x10
        //  %r202 = sub i32 %r197, %r201

        sub     x9, x9, x10
        //  ret i32 %r202

        mov     x0, x9
        mov     sp, x29
        ret
my_putint:

        //139:x29,#-128

        //bb19:

bb19:

        //  %r205 = add i32 0, 0

        mov     x16, #128
        sub     sp, sp, x16
        mov     x9, x0
        //  %r139 = alloca [ 16 x i32 ]

        //  %r206 = add i32 0, 0

        //  %r207 = add i32 %r137, 0

        mov     x9, x9
        //  br label %bb18


        b     bb18
        //bb18:

bb18:

        //  %r208 = add i32 0, 0

        mov     x11, #0
        mov     x10, x9
        mov     x9, x11
        //  br label %bb20


        b     bb20
        //bb20:

bb20:

        //  %r209 = phi i32 [ %r207, %bb18 ], [ %r219, %bb21 ]

        //  %r210 = phi i32 [ %r208, %bb18 ], [ %r221, %bb21 ]

        //  %r211 = icmp sgt i32 %r209, 0

        mov     x11, #0
        cmp     x10, x11
        //  br i1 %r211, label %bb21, label %bb22


        b.gt     bb21
        b     bb22
        //bb21:

bb21:

        //  %r216 = call i32 @mod(i32 %r209, i32 10)

        mov     x0, x10
        mov     x1, #10
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
        mov     x12, x0
        //  %r145 = load i32, i32* @ascii_0

        adrp     x11, ascii_0
        add     x11, x11, #:lo12:ascii_0
        ldr     x11, [x11]
        //  %r217 = add i32 %r216, %r145

        add     x13, x12, x11
        //  %r148 = getelementptr [16 x i32 ], [16 x i32 ]* %r139, i32 0, i32 %r210

        mov     x11, #8
        mul     x12, x11, x9
        add     x11, x29, #-128
        add     x11, x11, x12
        //  store i32 %r217, i32* %r148

        str     x13, [x11]
        //  %r218 = sdiv i32 %r209, 10

        mov     x11, #10
        sdiv     x10, x10, x11
        //  %r219 = add i32 %r218, 0

        mov     x11, x10
        //  %r220 = add i32 %r210, 1

        mov     x10, #1
        add     x9, x9, x10
        //  %r221 = add i32 %r220, 0

        mov     x9, x9
        mov     x10, x11
        mov     x9, x9
        //  br label %bb20


        b     bb20
        //bb22:

bb22:

        mov     x10, x9
        //  br label %bb23


        b     bb23
        //bb23:

bb23:

        //  %r212 = phi i32 [ %r210, %bb22 ], [ %r215, %bb24 ]

        //  %r213 = icmp sgt i32 %r212, 0

        mov     x9, #0
        cmp     x10, x9
        //  br i1 %r213, label %bb24, label %bb25


        b.gt     bb24
        b     bb25
        //bb24:

bb24:

        //  %r214 = sub i32 %r212, 1

        mov     x9, #1
        sub     x9, x10, x9
        //  %r215 = add i32 %r214, 0

        mov     x10, x9
        //  %r158 = getelementptr [16 x i32 ], [16 x i32 ]* %r139, i32 0, i32 %r215

        mov     x9, #8
        mul     x9, x9, x10
        add     x11, x29, #-128
        add     x9, x11, x9
        //  %r159 = load i32, i32* %r158

        ldr     x9, [x9]
        //  call void @putch(i32 %r159)

        mov     x0, x9
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
        mov     x10, x10
        //  br label %bb23


        b     bb23
        //bb25:

bb25:

        //  ret void

        mov     sp, x29
        ret
main:

        //bb26:

bb26:

        //  %r224 = add i32 0, 0

        mov     x16, #0
        sub     sp, sp, x16
        //  call void @_sysy_starttime(i32 51)

        mov     x0, #51
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
        //  %r225 = call i32 @my_getint()

        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     my_getint
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        //  %r226 = add i32 0, 0

        //  %r227 = add i32 %r225, 0

        mov     x9, x9
        mov     x9, x9
        //  br label %bb27


        b     bb27
        //bb27:

bb27:

        //  %r228 = phi i32 [ %r227, %bb26 ], [ %r233, %bb28 ]

        //  %r229 = icmp sgt i32 %r228, 0

        mov     x10, #0
        cmp     x9, x10
        //  br i1 %r229, label %bb28, label %bb29


        b.gt     bb28
        b     bb29
        //bb28:

bb28:

        //  %r230 = call i32 @my_getint()

        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     my_getint
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x10, x0
        //  %r231 = add i32 %r230, 0

        mov     x10, x10
        //  call void @my_putint(i32 %r231)

        mov     x0, x10
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     my_putint
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
        //  %r232 = sub i32 %r228, 1

        mov     x10, #1
        sub     x9, x9, x10
        //  %r233 = add i32 %r232, 0

        mov     x9, x9
        mov     x9, x9
        //  br label %bb27


        b     bb27
        //bb29:

bb29:

        //  call void @_sysy_stoptime(i32 58)

        mov     x0, #58
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
