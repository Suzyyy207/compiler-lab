.section .data
.section .text
.global getch
.global getint
.global putch
.global putint
.global putarray
.global _sysy_starttime
.global _sysy_stoptime
.global canJump
.global main
canJump:

        //110:x29,#-80

        //bb2:

bb2:

        //  %r183 = add i32 0, 0

        mov     x16, #80
        sub     sp, sp, x16
        mov     x9, x0
        mov     x10, x1
        //  %r184 = add i32 0, 0

        //  %r185 = add i32 0, 0

        //  %r110 = alloca [ 10 x i32 ]

        //  %r186 = add i32 0, 0

        //  %r187 = add i32 %r101, 0

        mov     x11, x10
        //  br label %bb1


        b     bb1
        //bb1:

bb1:

        //  %r188 = icmp eq i32 %r187, 1

        mov     x10, #1
        cmp     x11, x10
        //  br i1 %r188, label %bb3, label %bb4


        b.eq     bb3
        b     bb4
        //bb3:

bb3:

        //  ret i32 1

        mov     x9, #1
        mov     x0, x9
        mov     sp, x29
        ret
        //bb4:

bb4:

        //  br label %bb5


        b     bb5
        //bb5:

bb5:

        //  %r105 = getelementptr i32, i32* %r100, i32 0

        mov     x12, #8
        mov     x10, #0
        mul     x10, x12, x10
        add     x10, x9, x10
        //  %r106 = load i32, i32* %r105

        ldr     x10, [x10]
        //  %r189 = sub i32 %r187, 2

        mov     x12, #2
        sub     x12, x11, x12
        //  %r190 = icmp sgt i32 %r106, %r189

        cmp     x10, x12
        //  br i1 %r190, label %bb6, label %bb7


        b.gt     bb6
        b     bb7
        //bb6:

bb6:

        //  ret i32 1

        mov     x9, #1
        mov     x0, x9
        mov     sp, x29
        ret
        //bb7:

bb7:

        //  br label %bb8


        b     bb8
        //bb8:

bb8:

        //  %r191 = add i32 0, 0

        mov     x10, #0
        mov     x10, x10
        //  br label %bb9


        b     bb9
        //bb9:

bb9:

        //  %r192 = phi i32 [ %r191, %bb8 ], [ %r221, %bb10 ]

        //  %r193 = sub i32 %r187, 1

        mov     x12, #1
        sub     x12, x11, x12
        //  %r194 = icmp slt i32 %r192, %r193

        cmp     x10, x12
        //  br i1 %r194, label %bb10, label %bb11


        b.lt     bb10
        b     bb11
        //bb10:

bb10:

        //  %r117 = getelementptr [10 x i32 ], [10 x i32 ]* %r110, i32 0, i32 %r192

        mov     x12, #8
        mul     x13, x12, x10
        add     x12, x29, #-80
        add     x13, x12, x13
        //  store i32 0, i32* %r117

        mov     x12, #0
        str     x12, [x13]
        //  %r220 = add i32 %r192, 1

        mov     x12, #1
        add     x10, x10, x12
        //  %r221 = add i32 %r220, 0

        mov     x10, x10
        mov     x10, x10
        //  br label %bb9


        b     bb9
        //bb11:

bb11:

        //  %r195 = sub i32 %r187, 1

        mov     x10, #1
        sub     x10, x11, x10
        //  %r196 = add i32 %r195, 0

        mov     x10, x10
        //  %r124 = getelementptr [10 x i32 ], [10 x i32 ]* %r110, i32 0, i32 %r196

        mov     x12, #8
        mul     x10, x12, x10
        add     x12, x29, #-80
        add     x10, x12, x10
        //  store i32 1, i32* %r124

        mov     x12, #1
        str     x12, [x10]
        //  %r197 = sub i32 %r187, 2

        mov     x10, #2
        sub     x10, x11, x10
        //  %r198 = add i32 %r197, 0

        mov     x10, x10
        mov     x10, x10
        //  br label %bb12


        b     bb12
        //bb12:

bb12:

        //  %r199 = phi i32 [ %r198, %bb11 ], [ %r210, %bb20 ]

        //  %r200 = sub i32 0, 1

        mov     x12, #0
        mov     x13, #1
        sub     x12, x12, x13
        //  %r201 = icmp sgt i32 %r199, %r200

        cmp     x10, x12
        //  br i1 %r201, label %bb13, label %bb14


        b.gt     bb13
        b     bb14
        //bb13:

bb13:

        //  %r132 = getelementptr i32, i32* %r100, i32 %r199

        mov     x12, #8
        mul     x12, x12, x10
        add     x12, x9, x12
        //  %r133 = load i32, i32* %r132

        ldr     x13, [x12]
        //  %r202 = sub i32 %r187, 1

        mov     x12, #1
        sub     x12, x11, x12
        //  %r203 = sub i32 %r202, %r199

        sub     x12, x12, x10
        //  %r204 = icmp slt i32 %r133, %r203

        cmp     x13, x12
        //  br i1 %r204, label %bb15, label %bb16


        b.lt     bb15
        b     bb16
        //bb15:

bb15:

        //  %r140 = getelementptr i32, i32* %r100, i32 %r199

        mov     x12, #8
        mul     x12, x12, x10
        add     x12, x9, x12
        //  %r141 = load i32, i32* %r140

        ldr     x12, [x12]
        //  %r219 = add i32 %r141, 0

        mov     x12, x12
        mov     x12, x12
        //  br label %bb17


        b     bb17
        //bb16:

bb16:

        //  %r216 = sub i32 %r187, 1

        mov     x12, #1
        sub     x12, x11, x12
        //  %r217 = sub i32 %r216, %r199

        sub     x12, x12, x10
        //  %r218 = add i32 %r217, 0

        mov     x12, x12
        mov     x12, x12
        //  br label %bb17


        b     bb17
        //bb17:

bb17:

        //  %r205 = phi i32 [ %r219, %bb15 ], [ %r218, %bb16 ]

        mov     x13, x12
        //  br label %bb18


        b     bb18
        //bb18:

bb18:

        //  %r206 = phi i32 [ %r205, %bb17 ], [ %r215, %bb23 ]

        //  %r207 = sub i32 0, 1

        mov     x12, #0
        mov     x14, #1
        sub     x12, x12, x14
        //  %r208 = icmp sgt i32 %r206, %r207

        cmp     x13, x12
        //  br i1 %r208, label %bb19, label %bb20


        b.gt     bb19
        b     bb20
        //bb19:

bb19:

        //  %r211 = add i32 %r199, %r206

        add     x12, x10, x13
        //  %r212 = add i32 %r211, 0

        mov     x12, x12
        //  %r153 = getelementptr [10 x i32 ], [10 x i32 ]* %r110, i32 0, i32 %r212

        mov     x14, #8
        mul     x12, x14, x12
        add     x14, x29, #-80
        add     x12, x14, x12
        //  %r154 = load i32, i32* %r153

        ldr     x12, [x12]
        //  %r213 = icmp ne i32 %r154, 0

        mov     x14, #0
        cmp     x12, x14
        //  br i1 %r213, label %bb21, label %bb22


        b.ne     bb21
        b     bb22
        //bb21:

bb21:

        //  %r157 = getelementptr [10 x i32 ], [10 x i32 ]* %r110, i32 0, i32 %r199

        mov     x12, #8
        mul     x12, x12, x10
        add     x14, x29, #-80
        add     x12, x14, x12
        //  store i32 1, i32* %r157

        mov     x14, #1
        str     x14, [x12]
        //  br label %bb23


        b     bb23
        //bb22:

bb22:

        //  br label %bb23


        b     bb23
        //bb23:

bb23:

        //  %r214 = sub i32 %r206, 1

        mov     x12, #1
        sub     x12, x13, x12
        //  %r215 = add i32 %r214, 0

        mov     x12, x12
        mov     x13, x12
        //  br label %bb18


        b     bb18
        //bb20:

bb20:

        //  %r209 = sub i32 %r199, 1

        mov     x12, #1
        sub     x10, x10, x12
        //  %r210 = add i32 %r209, 0

        mov     x10, x10
        mov     x10, x10
        //  br label %bb12


        b     bb12
        //bb14:

bb14:

        //  %r162 = getelementptr [10 x i32 ], [10 x i32 ]* %r110, i32 0, i32 0

        mov     x10, #8
        mov     x9, #0
        mul     x9, x10, x9
        add     x10, x29, #-80
        add     x9, x10, x9
        //  %r163 = load i32, i32* %r162

        ldr     x9, [x9]
        //  ret i32 %r163

        mov     x0, x9
        mov     sp, x29
        ret
main:

        //165:x29,#-80

        //bb24:

bb24:

        //  call void @_sysy_starttime(i32 42)

        mov     x16, #80
        sub     sp, sp, x16
        mov     x0, #42
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
        //  %r223 = add i32 0, 0

        //  %r165 = alloca [ 10 x i32 ]

        //  %r166 = getelementptr [10 x i32 ], [10 x i32 ]* %r165, i32 0, i32 0

        mov     x10, #8
        mov     x11, #0
        mul     x10, x10, x11
        add     x11, x29, #-80
        add     x10, x11, x10
        //  store i32 3, i32* %r166

        mov     x11, #3
        str     x11, [x10]
        //  %r167 = getelementptr [10 x i32 ], [10 x i32 ]* %r165, i32 0, i32 1

        mov     x10, #8
        mov     x11, #1
        mul     x10, x10, x11
        add     x11, x29, #-80
        add     x10, x11, x10
        //  store i32 3, i32* %r167

        mov     x11, #3
        str     x11, [x10]
        //  %r168 = getelementptr [10 x i32 ], [10 x i32 ]* %r165, i32 0, i32 2

        mov     x11, #8
        mov     x10, #2
        mul     x10, x11, x10
        add     x11, x29, #-80
        add     x10, x11, x10
        //  store i32 9, i32* %r168

        mov     x11, #9
        str     x11, [x10]
        //  %r169 = getelementptr [10 x i32 ], [10 x i32 ]* %r165, i32 0, i32 3

        mov     x11, #8
        mov     x10, #3
        mul     x11, x11, x10
        add     x10, x29, #-80
        add     x10, x10, x11
        //  store i32 0, i32* %r169

        mov     x11, #0
        str     x11, [x10]
        //  %r170 = getelementptr [10 x i32 ], [10 x i32 ]* %r165, i32 0, i32 4

        mov     x11, #8
        mov     x10, #4
        mul     x11, x11, x10
        add     x10, x29, #-80
        add     x10, x10, x11
        //  store i32 0, i32* %r170

        mov     x11, #0
        str     x11, [x10]
        //  %r171 = getelementptr [10 x i32 ], [10 x i32 ]* %r165, i32 0, i32 5

        mov     x11, #8
        mov     x10, #5
        mul     x11, x11, x10
        add     x10, x29, #-80
        add     x11, x10, x11
        //  store i32 1, i32* %r171

        mov     x10, #1
        str     x10, [x11]
        //  %r172 = getelementptr [10 x i32 ], [10 x i32 ]* %r165, i32 0, i32 6

        mov     x11, #8
        mov     x10, #6
        mul     x11, x11, x10
        add     x10, x29, #-80
        add     x11, x10, x11
        //  store i32 1, i32* %r172

        mov     x10, #1
        str     x10, [x11]
        //  %r173 = getelementptr [10 x i32 ], [10 x i32 ]* %r165, i32 0, i32 7

        mov     x11, #8
        mov     x10, #7
        mul     x11, x11, x10
        add     x10, x29, #-80
        add     x11, x10, x11
        //  store i32 5, i32* %r173

        mov     x10, #5
        str     x10, [x11]
        //  %r174 = getelementptr [10 x i32 ], [10 x i32 ]* %r165, i32 0, i32 8

        mov     x11, #8
        mov     x10, #8
        mul     x11, x11, x10
        add     x10, x29, #-80
        add     x10, x10, x11
        //  store i32 7, i32* %r174

        mov     x11, #7
        str     x11, [x10]
        //  %r175 = getelementptr [10 x i32 ], [10 x i32 ]* %r165, i32 0, i32 9

        mov     x10, #8
        mov     x11, #9
        mul     x10, x10, x11
        add     x11, x29, #-80
        add     x10, x11, x10
        //  store i32 8, i32* %r175

        mov     x11, #8
        str     x11, [x10]
        //  %r224 = add i32 10, 0

        mov     x10, #10
        //  %r225 = call i32 @canJump(i32* %r165, i32 %r224)

        mov     x0, x9
        mov     x1, x10
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     canJump
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        //  %r226 = add i32 %r225, 0

        mov     x9, x9
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
        //  ret i32 %r226

        mov     x0, x9
        mov     sp, x29
        ret
