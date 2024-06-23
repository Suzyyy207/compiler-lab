.section .data
.section .text
.global getch
.global getint
.global putch
.global putint
.global putarray
.global _sysy_starttime
.global _sysy_stoptime
.global uniquePaths
.global main
        sub     sp, sp, #0
uniquePaths:

        //109:x29,#-72

        //bb2:

bb2:

        //  %r191 = add i32 0, 0

        mov     x16, #80
        sub     sp, sp, x16
        mov     x9, x0
        mov     x10, x1
        //  %r192 = add i32 0, 0

        //  %r193 = add i32 0, 0

        //  %r194 = add i32 0, 0

        //  %r195 = add i32 0, 0

        //  %r109 = alloca [ 9 x i32 ]

        //  %r196 = add i32 0, 0

        //  %r197 = add i32 %r100, 0

        mov     x9, x9
        //  %r198 = add i32 0, 0

        //  %r199 = add i32 %r102, 0

        mov     x12, x10
        //  br label %bb1


        b     bb1
        //bb1:

bb1:

        //  %r200 = icmp eq i32 %r197, 1

        mov     x10, #1
        cmp     x9, x10
        //  br i1 %r200, label %bb3, label %bb6


        b.eq     bb3
        b     bb6
        //bb6:

bb6:

        //  %r201 = icmp eq i32 %r199, 1

        mov     x10, #1
        cmp     x12, x10
        //  br i1 %r201, label %bb3, label %bb4


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

        //  %r202 = add i32 0, 0

        mov     x10, #0
        mov     x10, x10
        //  br label %bb7


        b     bb7
        //bb7:

bb7:

        //  %r203 = phi i32 [ %r202, %bb5 ], [ %r245, %bb8 ]

        //  %r204 = icmp slt i32 %r203, %r197

        cmp     x10, x9
        //  br i1 %r204, label %bb8, label %bb9


        b.lt     bb8
        b     bb9
        //bb8:

bb8:

        //  %r240 = mul i32 %r203, 3

        mov     x11, #3
        mul     x11, x10, x11
        //  %r241 = add i32 %r240, %r199

        add     x11, x11, x12
        //  %r242 = sub i32 %r241, 1

        mov     x13, #1
        sub     x11, x11, x13
        //  %r243 = add i32 %r242, 0

        mov     x11, x11
        //  %r124 = getelementptr [9 x i32 ], [9 x i32 ]* %r109, i32 0, i32 %r243

        mov     x13, #8
        mul     x11, x13, x11
        add     x13, x29, #-72
        add     x11, x13, x11
        //  store i32 1, i32* %r124

        mov     x13, #1
        str     x13, [x11]
        //  %r244 = add i32 %r203, 1

        mov     x11, #1
        add     x10, x10, x11
        //  %r245 = add i32 %r244, 0

        mov     x10, x10
        mov     x10, x10
        //  br label %bb7


        b     bb7
        //bb9:

bb9:

        //  %r205 = add i32 0, 0

        mov     x10, #0
        mov     x11, x10
        //  br label %bb10


        b     bb10
        //bb10:

bb10:

        //  %r206 = phi i32 [ %r205, %bb9 ], [ %r239, %bb11 ]

        //  %r207 = icmp slt i32 %r206, %r199

        cmp     x11, x12
        //  br i1 %r207, label %bb11, label %bb12


        b.lt     bb11
        b     bb12
        //bb11:

bb11:

        //  %r234 = sub i32 %r197, 1

        mov     x10, #1
        sub     x10, x9, x10
        //  %r235 = mul i32 %r234, 3

        mov     x13, #3
        mul     x10, x10, x13
        //  %r236 = add i32 %r235, %r206

        add     x10, x10, x11
        //  %r237 = add i32 %r236, 0

        mov     x10, x10
        //  %r136 = getelementptr [9 x i32 ], [9 x i32 ]* %r109, i32 0, i32 %r237

        mov     x13, #8
        mul     x10, x13, x10
        add     x13, x29, #-72
        add     x10, x13, x10
        //  store i32 1, i32* %r136

        mov     x13, #1
        str     x13, [x10]
        //  %r238 = add i32 %r206, 1

        mov     x10, #1
        add     x10, x11, x10
        //  %r239 = add i32 %r238, 0

        mov     x10, x10
        mov     x11, x10
        //  br label %bb10


        b     bb10
        //bb12:

bb12:

        //  %r208 = sub i32 %r197, 2

        mov     x10, #2
        sub     x9, x9, x10
        //  %r209 = add i32 %r208, 0

        mov     x9, x9
        mov     x13, x9
        //  br label %bb13


        b     bb13
        //bb13:

bb13:

        //  %r210 = phi i32 [ %r209, %bb12 ], [ %r219, %bb18 ]

        //  %r211 = sub i32 0, 1

        mov     x9, #0
        mov     x10, #1
        sub     x9, x9, x10
        //  %r212 = icmp sgt i32 %r210, %r211

        cmp     x13, x9
        //  br i1 %r212, label %bb14, label %bb15


        b.gt     bb14
        b     bb15
        //bb14:

bb14:

        //  %r213 = sub i32 %r199, 2

        mov     x9, #2
        sub     x9, x12, x9
        //  %r214 = add i32 %r213, 0

        mov     x9, x9
        mov     x10, x9
        //  br label %bb16


        b     bb16
        //bb16:

bb16:

        //  %r215 = phi i32 [ %r214, %bb14 ], [ %r233, %bb17 ]

        //  %r216 = sub i32 0, 1

        mov     x9, #0
        mov     x11, #1
        sub     x9, x9, x11
        //  %r217 = icmp sgt i32 %r215, %r216

        cmp     x10, x9
        //  br i1 %r217, label %bb17, label %bb18


        b.gt     bb17
        b     bb18
        //bb17:

bb17:

        //  %r220 = mul i32 %r210, 3

        mov     x9, #3
        mul     x9, x13, x9
        //  %r221 = add i32 %r220, %r215

        add     x9, x9, x10
        //  %r222 = add i32 %r221, 0

        mov     x9, x9
        //  %r223 = add i32 %r210, 1

        mov     x11, #1
        add     x11, x13, x11
        //  %r224 = mul i32 %r223, 3

        mov     x14, #3
        mul     x11, x11, x14
        //  %r225 = add i32 %r224, %r215

        add     x11, x11, x10
        //  %r226 = add i32 %r225, 0

        mov     x11, x11
        //  %r227 = mul i32 %r210, 3

        mov     x14, #3
        mul     x14, x13, x14
        //  %r228 = add i32 %r227, %r215

        add     x14, x14, x10
        //  %r229 = add i32 %r228, 1

        mov     x15, #1
        add     x14, x14, x15
        //  %r230 = add i32 %r229, 0

        mov     x14, x14
        //  %r164 = getelementptr [9 x i32 ], [9 x i32 ]* %r109, i32 0, i32 %r226

        mov     x15, #8
        mul     x11, x15, x11
        add     x15, x29, #-72
        add     x11, x15, x11
        //  %r165 = load i32, i32* %r164

        ldr     x15, [x11]
        //  %r167 = getelementptr [9 x i32 ], [9 x i32 ]* %r109, i32 0, i32 %r230

        mov     x11, #8
        mul     x11, x11, x14
        add     x14, x29, #-72
        add     x11, x14, x11
        //  %r168 = load i32, i32* %r167

        ldr     x11, [x11]
        //  %r231 = add i32 %r165, %r168

        add     x11, x15, x11
        //  %r171 = getelementptr [9 x i32 ], [9 x i32 ]* %r109, i32 0, i32 %r222

        mov     x14, #8
        mul     x9, x14, x9
        add     x14, x29, #-72
        add     x9, x14, x9
        //  store i32 %r231, i32* %r171

        str     x11, [x9]
        //  %r232 = sub i32 %r215, 1

        mov     x9, #1
        sub     x9, x10, x9
        //  %r233 = add i32 %r232, 0

        mov     x9, x9
        mov     x10, x9
        //  br label %bb16


        b     bb16
        //bb18:

bb18:

        //  %r218 = sub i32 %r210, 1

        mov     x9, #1
        sub     x9, x13, x9
        //  %r219 = add i32 %r218, 0

        mov     x9, x9
        mov     x13, x9
        //  br label %bb13


        b     bb13
        //bb15:

bb15:

        //  %r176 = getelementptr [9 x i32 ], [9 x i32 ]* %r109, i32 0, i32 0

        mov     x9, #8
        mov     x10, #0
        mul     x10, x9, x10
        add     x9, x29, #-72
        add     x9, x9, x10
        //  %r177 = load i32, i32* %r176

        ldr     x9, [x9]
        //  ret i32 %r177

        mov     x0, x9
        mov     sp, x29
        ret
        sub     sp, sp, #0
main:

        //bb19:

bb19:

        //  call void @_sysy_starttime(i32 40)

        mov     x16, #0
        sub     sp, sp, x16
        mov     x0, #40
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
        //  %r248 = add i32 0, 0

        //  %r249 = add i32 0, 0

        //  %r250 = add i32 3, 0

        mov     x9, #3
        //  %r251 = call i32 @uniquePaths(i32 %r250, i32 %r250)

        mov     x0, x9
        mov     x1, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     uniquePaths
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        //  %r252 = add i32 %r251, 0

        mov     x9, x9
        //  call void @_sysy_stoptime(i32 45)

        mov     x0, #45
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
        //  ret i32 %r252

        mov     x0, x9
        mov     sp, x29
        ret
