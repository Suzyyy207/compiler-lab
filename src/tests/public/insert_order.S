.section .data
.global    N
N:
        .quad   0
.section .text
.global getch
.global getint
.global putch
.global putint
.global putarray
.global _sysy_starttime
.global _sysy_stoptime
.global insert
.global main
        sub     sp, sp, #0
insert:

        //bb2:

bb2:

        //  %r165 = add i32 0, 0

        mov     x16, #0
        sub     sp, sp, x16
        mov     x11, x0
        mov     x9, x1
        //  %r166 = add i32 0, 0

        //  %r167 = add i32 0, 0

        //  %r168 = add i32 0, 0

        //  %r169 = add i32 %r101, 0

        mov     x10, x9
        //  br label %bb1


        b     bb1
        //bb1:

bb1:

        //  %r170 = add i32 0, 0

        mov     x9, #0
        mov     x9, x9
        //  br label %bb3


        b     bb3
        //bb3:

bb3:

        //  %r171 = phi i32 [ %r170, %bb1 ], [ %r182, %bb4 ]

        //  %r108 = getelementptr i32, i32* %r100, i32 %r171

        mov     x12, #8
        mul     x12, x12, x9
        add     x12, x11, x12
        //  %r109 = load i32, i32* %r108

        ldr     x12, [x12]
        //  %r172 = icmp sgt i32 %r169, %r109

        cmp     x10, x12
        //  br i1 %r172, label %bb6, label %bb5


        b.gt     bb6
        b     bb5
        //bb6:

bb6:

        //  %r112 = load i32, i32* @N

        adrp     x12, N
        add     x12, x12, #:lo12:N
        ldr     x12, [x12]
        //  %r180 = icmp slt i32 %r171, %r112

        cmp     x9, x12
        //  br i1 %r180, label %bb4, label %bb5


        b.lt     bb4
        b     bb5
        //bb4:

bb4:

        //  %r181 = add i32 %r171, 1

        mov     x12, #1
        add     x9, x9, x12
        //  %r182 = add i32 %r181, 0

        mov     x9, x9
        mov     x9, x9
        //  br label %bb3


        b     bb3
        //bb5:

bb5:

        //  %r116 = load i32, i32* @N

        adrp     x12, N
        add     x12, x12, #:lo12:N
        ldr     x12, [x12]
        //  %r173 = add i32 %r116, 0

        mov     x12, x12
        mov     x12, x12
        //  br label %bb7


        b     bb7
        //bb7:

bb7:

        //  %r174 = phi i32 [ %r173, %bb5 ], [ %r179, %bb8 ]

        //  %r175 = icmp sgt i32 %r174, %r171

        cmp     x12, x9
        //  br i1 %r175, label %bb8, label %bb9


        b.gt     bb8
        b     bb9
        //bb8:

bb8:

        //  %r176 = sub i32 %r174, 1

        mov     x13, #1
        sub     x13, x12, x13
        //  %r177 = add i32 %r176, 0

        mov     x13, x13
        //  %r124 = getelementptr i32, i32* %r100, i32 %r177

        mov     x14, #8
        mul     x13, x14, x13
        add     x13, x11, x13
        //  %r125 = load i32, i32* %r124

        ldr     x14, [x13]
        //  %r127 = getelementptr i32, i32* %r100, i32 %r174

        mov     x13, #8
        mul     x13, x13, x12
        add     x13, x11, x13
        //  store i32 %r125, i32* %r127

        str     x14, [x13]
        //  %r130 = getelementptr i32, i32* %r100, i32 %r171

        mov     x13, #8
        mul     x13, x13, x9
        add     x13, x11, x13
        //  store i32 %r169, i32* %r130

        str     x10, [x13]
        //  %r178 = sub i32 %r174, 1

        mov     x13, #1
        sub     x12, x12, x13
        //  %r179 = add i32 %r178, 0

        mov     x12, x12
        mov     x12, x12
        //  br label %bb7


        b     bb7
        //bb9:

bb9:

        //  ret i32 0

        mov     x9, #0
        mov     x0, x9
        mov     sp, x29
        ret
        sub     sp, sp, #0
main:

        //133:x29,#-88

        //bb10:

bb10:

        //  call void @_sysy_starttime(i32 27)

        mov     x16, #96
        sub     sp, sp, x16
        mov     x0, #27
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
        //  store i32 10, i32* @N

        mov     x10, #10
        adrp     x11, N
        add     x11, x11, #:lo12:N
        str     x10, [x11]
        //  %r133 = alloca [ 11 x i32 ]

        //  %r134 = getelementptr [11 x i32 ], [11 x i32 ]* %r133, i32 0, i32 0

        mov     x11, #8
        mov     x10, #0
        mul     x11, x11, x10
        add     x10, x29, #-88
        add     x11, x10, x11
        //  store i32 1, i32* %r134

        mov     x10, #1
        str     x10, [x11]
        //  %r135 = getelementptr [11 x i32 ], [11 x i32 ]* %r133, i32 0, i32 1

        mov     x11, #8
        mov     x10, #1
        mul     x11, x11, x10
        add     x10, x29, #-88
        add     x11, x10, x11
        //  store i32 3, i32* %r135

        mov     x10, #3
        str     x10, [x11]
        //  %r136 = getelementptr [11 x i32 ], [11 x i32 ]* %r133, i32 0, i32 2

        mov     x11, #8
        mov     x10, #2
        mul     x11, x11, x10
        add     x10, x29, #-88
        add     x11, x10, x11
        //  store i32 4, i32* %r136

        mov     x10, #4
        str     x10, [x11]
        //  %r137 = getelementptr [11 x i32 ], [11 x i32 ]* %r133, i32 0, i32 3

        mov     x11, #8
        mov     x10, #3
        mul     x11, x11, x10
        add     x10, x29, #-88
        add     x11, x10, x11
        //  store i32 7, i32* %r137

        mov     x10, #7
        str     x10, [x11]
        //  %r138 = getelementptr [11 x i32 ], [11 x i32 ]* %r133, i32 0, i32 4

        mov     x11, #8
        mov     x10, #4
        mul     x11, x11, x10
        add     x10, x29, #-88
        add     x11, x10, x11
        //  store i32 8, i32* %r138

        mov     x10, #8
        str     x10, [x11]
        //  %r139 = getelementptr [11 x i32 ], [11 x i32 ]* %r133, i32 0, i32 5

        mov     x11, #8
        mov     x10, #5
        mul     x11, x11, x10
        add     x10, x29, #-88
        add     x11, x10, x11
        //  store i32 11, i32* %r139

        mov     x10, #11
        str     x10, [x11]
        //  %r140 = getelementptr [11 x i32 ], [11 x i32 ]* %r133, i32 0, i32 6

        mov     x10, #8
        mov     x11, #6
        mul     x10, x10, x11
        add     x11, x29, #-88
        add     x10, x11, x10
        //  store i32 13, i32* %r140

        mov     x11, #13
        str     x11, [x10]
        //  %r141 = getelementptr [11 x i32 ], [11 x i32 ]* %r133, i32 0, i32 7

        mov     x10, #8
        mov     x11, #7
        mul     x10, x10, x11
        add     x11, x29, #-88
        add     x10, x11, x10
        //  store i32 18, i32* %r141

        mov     x11, #18
        str     x11, [x10]
        //  %r142 = getelementptr [11 x i32 ], [11 x i32 ]* %r133, i32 0, i32 8

        mov     x10, #8
        mov     x11, #8
        mul     x10, x10, x11
        add     x11, x29, #-88
        add     x10, x11, x10
        //  store i32 56, i32* %r142

        mov     x11, #56
        str     x11, [x10]
        //  %r143 = getelementptr [11 x i32 ], [11 x i32 ]* %r133, i32 0, i32 9

        mov     x11, #8
        mov     x10, #9
        mul     x11, x11, x10
        add     x10, x29, #-88
        add     x10, x10, x11
        //  store i32 78, i32* %r143

        mov     x11, #78
        str     x11, [x10]
        //  %r185 = add i32 0, 0

        //  %r186 = add i32 0, 0

        //  %r187 = add i32 0, 0

        mov     x10, #0
        //  %r188 = call i32 @getint()

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
        mov     x11, x0
        //  %r189 = add i32 %r188, 0

        mov     x11, x11
        //  %r190 = call i32 @insert(i32* %r133, i32 %r189)

        mov     x0, x9
        mov     x1, x11
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     insert
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        //  %r191 = add i32 %r190, 0

        mov     x9, x10
        //  br label %bb11


        b     bb11
        //bb11:

bb11:

        //  %r192 = phi i32 [ %r187, %bb10 ], [ %r197, %bb12 ]

        //  %r150 = load i32, i32* @N

        adrp     x10, N
        add     x10, x10, #:lo12:N
        ldr     x10, [x10]
        //  %r193 = icmp slt i32 %r192, %r150

        cmp     x9, x10
        //  br i1 %r193, label %bb12, label %bb13


        b.lt     bb12
        b     bb13
        //bb12:

bb12:

        //  %r153 = getelementptr [11 x i32 ], [11 x i32 ]* %r133, i32 0, i32 %r192

        mov     x10, #8
        mul     x11, x10, x9
        add     x10, x29, #-88
        add     x10, x10, x11
        //  %r154 = load i32, i32* %r153

        ldr     x10, [x10]
        //  %r194 = add i32 %r154, 0

        mov     x10, x10
        //  call void @putint(i32 %r194)

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
        //  %r195 = add i32 10, 0

        mov     x10, #10
        //  call void @putch(i32 %r195)

        mov     x0, x10
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
        //  %r196 = add i32 %r192, 1

        mov     x10, #1
        add     x9, x9, x10
        //  %r197 = add i32 %r196, 0

        mov     x9, x9
        mov     x9, x9
        //  br label %bb11


        b     bb11
        //bb13:

bb13:

        //  call void @_sysy_stoptime(i32 54)

        mov     x0, #54
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
