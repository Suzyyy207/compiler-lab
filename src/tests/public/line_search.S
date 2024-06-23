.section .data
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

        //102:x29,#-80

        //bb1:

bb1:

        //  %r155 = add i32 0, 0

        mov     x16, #80
        sub     sp, sp, x16
        //  %r156 = add i32 0, 0

        //  %r157 = add i32 0, 0

        //  %r158 = add i32 0, 0

        //  %r159 = add i32 0, 0

        //  %r160 = add i32 0, 0

        //  %r161 = add i32 0, 0

        //  call void @_sysy_starttime(i32 3)

        mov     x0, #3
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
        //  %r162 = add i32 0, 0

        //  %r163 = add i32 0, 0

        //  %r102 = alloca [ 10 x i32 ]

        //  %r164 = add i32 0, 0

        //  %r165 = add i32 0, 0

        mov     x9, #0
        mov     x9, x9
        //  br label %bb2


        b     bb2
        //bb2:

bb2:

        //  %r166 = phi i32 [ %r165, %bb1 ], [ %r197, %bb3 ]

        //  %r167 = icmp slt i32 %r166, 10

        mov     x10, #10
        cmp     x9, x10
        //  br i1 %r167, label %bb3, label %bb4


        b.lt     bb3
        b     bb4
        //bb3:

bb3:

        //  %r195 = add i32 %r166, 1

        mov     x10, #1
        add     x11, x9, x10
        //  %r108 = getelementptr [10 x i32 ], [10 x i32 ]* %r102, i32 0, i32 %r166

        mov     x10, #8
        mul     x10, x10, x9
        add     x12, x29, #-80
        add     x10, x12, x10
        //  store i32 %r195, i32* %r108

        str     x11, [x10]
        //  %r196 = add i32 %r166, 1

        mov     x10, #1
        add     x9, x9, x10
        //  %r197 = add i32 %r196, 0

        mov     x9, x9
        mov     x9, x9
        //  br label %bb2


        b     bb2
        //bb4:

bb4:

        //  %r168 = add i32 10, 0

        mov     x10, #10
        //  %r169 = call i32 @getint()

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
        //  %r170 = add i32 %r169, 0

        mov     x9, x9
        //  %r171 = sub i32 %r168, 1

        mov     x11, #1
        sub     x10, x10, x11
        //  %r172 = add i32 %r171, 0

        mov     x11, x10
        //  %r173 = add i32 0, 0

        mov     x10, #0
        //  %r174 = add i32 %r172, %r173

        add     x10, x11, x10
        //  %r175 = sdiv i32 %r174, 2

        mov     x11, #2
        sdiv     x10, x10, x11
        //  %r176 = add i32 %r175, 0

        //  %r177 = add i32 0, 0

        mov     x11, #0
        //  %r178 = add i32 0, 0

        mov     x12, #0
        //  %r179 = add i32 0, 0

        mov     x10, #0
        mov     x11, x11
        mov     x10, x10
        mov     x13, x12
        //  br label %bb5


        b     bb5
        //bb5:

bb5:

        //  %r180 = phi i32 [ %r177, %bb4 ], [ %r189, %bb11 ]

        //  %r181 = phi i32 [ %r179, %bb4 ], [ %r190, %bb11 ]

        //  %r182 = phi i32 [ %r178, %bb4 ], [ %r192, %bb11 ]

        //  %r183 = icmp slt i32 %r182, 10

        mov     x12, #10
        cmp     x13, x12
        //  br i1 %r183, label %bb8, label %bb7


        b.lt     bb8
        b     bb7
        //bb8:

bb8:

        //  %r187 = icmp eq i32 %r180, 0

        mov     x12, #0
        cmp     x11, x12
        //  br i1 %r187, label %bb6, label %bb7


        b.eq     bb6
        b     bb7
        //bb6:

bb6:

        //  %r131 = getelementptr [10 x i32 ], [10 x i32 ]* %r102, i32 0, i32 %r182

        mov     x12, #8
        mul     x12, x12, x13
        add     x14, x29, #-80
        add     x12, x14, x12
        //  %r132 = load i32, i32* %r131

        ldr     x12, [x12]
        //  %r188 = icmp eq i32 %r132, %r170

        cmp     x12, x9
        //  br i1 %r188, label %bb9, label %bb10


        b.eq     bb9
        b     bb10
        //bb9:

bb9:

        //  %r193 = add i32 1, 0

        mov     x10, #1
        //  %r194 = add i32 %r182, 0

        mov     x11, x13
        mov     x12, x10
        mov     x10, x11
        //  br label %bb11


        b     bb11
        //bb10:

bb10:

        mov     x12, x11
        mov     x10, x10
        //  br label %bb11


        b     bb11
        //bb11:

bb11:

        //  %r189 = phi i32 [ %r193, %bb9 ], [ %r180, %bb10 ]

        //  %r190 = phi i32 [ %r194, %bb9 ], [ %r181, %bb10 ]

        //  %r191 = add i32 %r182, 1

        mov     x11, #1
        add     x11, x13, x11
        //  %r192 = add i32 %r191, 0

        mov     x13, x11
        mov     x11, x12
        mov     x10, x10
        mov     x13, x13
        //  br label %bb5


        b     bb5
        //bb7:

bb7:

        //  %r184 = icmp eq i32 %r180, 1

        mov     x9, #1
        cmp     x11, x9
        //  br i1 %r184, label %bb12, label %bb13


        b.eq     bb12
        b     bb13
        //bb12:

bb12:

        //  call void @putint(i32 %r181)

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
        //  br label %bb14


        b     bb14
        //bb13:

bb13:

        //  %r186 = add i32 0, 0

        mov     x9, #0
        //  call void @putint(i32 %r186)

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
        //  br label %bb14


        b     bb14
        //bb14:

bb14:

        //  %r185 = add i32 10, 0

        mov     x9, #10
        //  call void @putch(i32 %r185)

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
        //  call void @_sysy_stoptime(i32 53)

        mov     x0, #53
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
