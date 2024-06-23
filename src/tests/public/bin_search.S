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

        //  %r163 = add i32 0, 0

        mov     x16, #80
        sub     sp, sp, x16
        //  %r164 = add i32 0, 0

        //  %r165 = add i32 0, 0

        //  %r166 = add i32 0, 0

        //  %r167 = add i32 0, 0

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
        //  %r168 = add i32 0, 0

        //  %r169 = add i32 0, 0

        //  %r102 = alloca [ 10 x i32 ]

        //  %r170 = add i32 0, 0

        //  %r171 = add i32 0, 0

        mov     x9, #0
        mov     x9, x9
        //  br label %bb2


        b     bb2
        //bb2:

bb2:

        //  %r172 = phi i32 [ %r171, %bb1 ], [ %r203, %bb3 ]

        //  %r173 = icmp slt i32 %r172, 10

        mov     x10, #10
        cmp     x9, x10
        //  br i1 %r173, label %bb3, label %bb4


        b.lt     bb3
        b     bb4
        //bb3:

bb3:

        //  %r201 = add i32 %r172, 1

        mov     x10, #1
        add     x11, x9, x10
        //  %r108 = getelementptr [10 x i32 ], [10 x i32 ]* %r102, i32 0, i32 %r172

        mov     x10, #8
        mul     x12, x10, x9
        add     x10, x29, #-80
        add     x10, x10, x12
        //  store i32 %r201, i32* %r108

        str     x11, [x10]
        //  %r202 = add i32 %r172, 1

        mov     x10, #1
        add     x9, x9, x10
        //  %r203 = add i32 %r202, 0

        mov     x9, x9
        mov     x9, x9
        //  br label %bb2


        b     bb2
        //bb4:

bb4:

        //  %r174 = add i32 10, 0

        mov     x10, #10
        //  %r175 = call i32 @getint()

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
        //  %r176 = add i32 %r175, 0

        mov     x11, x9
        //  %r177 = sub i32 %r174, 1

        mov     x9, #1
        sub     x9, x10, x9
        //  %r178 = add i32 %r177, 0

        mov     x12, x9
        //  %r179 = add i32 0, 0

        mov     x10, #0
        //  %r180 = add i32 %r178, %r179

        add     x13, x12, x10
        //  %r181 = sdiv i32 %r180, 2

        mov     x9, #2
        sdiv     x9, x13, x9
        //  %r182 = add i32 %r181, 0

        mov     x9, x9
        mov     x10, x10
        mov     x9, x9
        mov     x12, x12
        //  br label %bb5


        b     bb5
        //bb5:

bb5:

        //  %r183 = phi i32 [ %r179, %bb4 ], [ %r195, %bb11 ]

        //  %r184 = phi i32 [ %r182, %bb4 ], [ %r193, %bb11 ]

        //  %r185 = phi i32 [ %r178, %bb4 ], [ %r196, %bb11 ]

        //  %r125 = getelementptr [10 x i32 ], [10 x i32 ]* %r102, i32 0, i32 %r184

        mov     x13, #8
        mul     x14, x13, x9
        add     x13, x29, #-80
        add     x13, x13, x14
        //  %r126 = load i32, i32* %r125

        ldr     x13, [x13]
        //  %r186 = icmp ne i32 %r126, %r176

        cmp     x13, x11
        //  br i1 %r186, label %bb8, label %bb7


        b.ne     bb8
        b     bb7
        //bb8:

bb8:

        //  %r190 = icmp slt i32 %r183, %r185

        cmp     x10, x12
        //  br i1 %r190, label %bb6, label %bb7


        b.lt     bb6
        b     bb7
        //bb6:

bb6:

        //  %r191 = add i32 %r185, %r183

        add     x13, x12, x10
        //  %r192 = sdiv i32 %r191, 2

        mov     x9, #2
        sdiv     x9, x13, x9
        //  %r193 = add i32 %r192, 0

        mov     x9, x9
        //  %r138 = getelementptr [10 x i32 ], [10 x i32 ]* %r102, i32 0, i32 %r193

        mov     x13, #8
        mul     x14, x13, x9
        add     x13, x29, #-80
        add     x13, x13, x14
        //  %r139 = load i32, i32* %r138

        ldr     x13, [x13]
        //  %r194 = icmp slt i32 %r176, %r139

        cmp     x11, x13
        //  br i1 %r194, label %bb9, label %bb10


        b.lt     bb9
        b     bb10
        //bb9:

bb9:

        //  %r199 = sub i32 %r193, 1

        mov     x12, #1
        sub     x12, x9, x12
        //  %r200 = add i32 %r199, 0

        mov     x12, x12
        mov     x10, x10
        mov     x12, x12
        //  br label %bb11


        b     bb11
        //bb10:

bb10:

        //  %r197 = add i32 %r193, 1

        mov     x10, #1
        add     x10, x9, x10
        //  %r198 = add i32 %r197, 0

        mov     x10, x10
        mov     x10, x10
        mov     x12, x12
        //  br label %bb11


        b     bb11
        //bb11:

bb11:

        //  %r195 = phi i32 [ %r183, %bb9 ], [ %r198, %bb10 ]

        //  %r196 = phi i32 [ %r200, %bb9 ], [ %r185, %bb10 ]

        mov     x10, x10
        mov     x9, x9
        mov     x12, x12
        //  br label %bb5


        b     bb5
        //bb7:

bb7:

        //  %r147 = getelementptr [10 x i32 ], [10 x i32 ]* %r102, i32 0, i32 %r184

        mov     x10, #8
        mul     x9, x10, x9
        add     x10, x29, #-80
        add     x9, x10, x9
        //  %r148 = load i32, i32* %r147

        ldr     x9, [x9]
        //  %r187 = icmp eq i32 %r176, %r148

        cmp     x11, x9
        //  br i1 %r187, label %bb12, label %bb13


        b.eq     bb12
        b     bb13
        //bb12:

bb12:

        //  call void @putint(i32 %r176)

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
        //  br label %bb14


        b     bb14
        //bb13:

bb13:

        //  %r189 = add i32 0, 0

        mov     x9, #0
        //  call void @putint(i32 %r189)

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

        //  %r188 = add i32 10, 0

        mov     x9, #10
        //  call void @putch(i32 %r188)

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
        //  call void @_sysy_stoptime(i32 49)

        mov     x0, #49
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
