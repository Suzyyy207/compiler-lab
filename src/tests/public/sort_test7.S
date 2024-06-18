.section .data
.global    n
n:
        .quad   0
.section .text
.global getch
.global getint
.global putch
.global putint
.global putarray
.global _sysy_starttime
.global _sysy_stoptime
.global Merge
.global MergeSort
.global main
Merge:

        //116:x29,#-160

        //117:x29,#-80

        //bb2:

bb2:

        //  %r272 = add i32 0, 0

        mov     x16, #160
        sub     sp, sp, x16
        mov     x13, x0
        mov     x11, x1
        mov     x9, x2
        mov     x10, x3
        //  %r273 = add i32 0, 0

        //  %r274 = add i32 0, 0

        //  %r275 = add i32 0, 0

        //  %r117 = alloca [ 10 x i32 ]

        //  %r116 = alloca [ 10 x i32 ]

        //  %r276 = add i32 0, 0

        //  %r277 = add i32 0, 0

        //  %r278 = add i32 0, 0

        //  %r279 = add i32 %r101, 0

        mov     x14, x11
        //  %r280 = add i32 0, 0

        //  %r281 = add i32 %r103, 0

        mov     x15, x9
        //  %r282 = add i32 0, 0

        //  %r283 = add i32 %r105, 0

        mov     x9, x10
        //  br label %bb1


        b     bb1
        //bb1:

bb1:

        //  %r284 = sub i32 %r281, %r279

        sub     x11, x15, x14
        //  %r285 = add i32 %r284, 1

        mov     x10, #1
        add     x10, x11, x10
        //  %r286 = add i32 %r285, 0

        str     x16, [sp, #-8]!
        mov     x17, x10
        str     x17, [sp, #-8]!
        //  %r287 = sub i32 %r283, %r281

        sub     x9, x9, x15
        //  %r288 = add i32 %r287, 0

        str     x18, [sp, #-8]!
        mov     x19, x9
        str     x19, [sp, #-8]!
        //  %r289 = add i32 0, 0

        mov     x9, #0
        //  %r290 = add i32 0, 0

        str     x16, [sp, #-8]!
        mov     x17, #0
        str     x17, [sp, #-8]!
        str     x18, [sp, #-8]!
        mov     x19, x9
        str     x19, [sp, #-8]!
        //  br label %bb3


        b     bb3
        //bb3:

bb3:

        //  %r291 = phi i32 [ %r289, %bb1 ], [ %r338, %bb4 ]

        //  %r292 = icmp slt i32 %r291, %r286

        ldr     x16, [sp], #8
        ldr     x17, [sp], #8
        cmp     x16, x17
        //  br i1 %r292, label %bb4, label %bb5


        b.lt     bb4
        b     bb5
        //bb4:

bb4:

        //  %r335 = add i32 %r291, %r279

        ldr     x18, [sp], #8
        add     x9, x18, x14
        //  %r336 = add i32 %r335, 0

        mov     x10, x9
        //  %r128 = getelementptr i32, i32* %r100, i32 %r336

        mov     x9, #8
        mul     x9, x9, x10
        add     x9, x13, x9
        //  %r129 = load i32, i32* %r128

        ldr     x9, [x9]
        //  %r131 = getelementptr [10 x i32 ], [10 x i32 ]* %r116, i32 0, i32 %r291

        mov     x10, #8
        ldr     x19, [sp], #8
        mul     x11, x10, x19
        add     x10, x29, #-160
        add     x10, x10, x11
        //  store i32 %r129, i32* %r131

        str     x9, [x10]
        //  %r337 = add i32 %r291, 1

        mov     x9, #1
        ldr     x16, [sp], #8
        add     x9, x16, x9
        //  %r338 = add i32 %r337, 0

        mov     x9, x9
        mov     x19, x9
        //  br label %bb3


        b     bb3
        //bb5:

bb5:

        ldr     x17, [sp], #8
        mov     x12, x17
        //  br label %bb6


        b     bb6
        //bb6:

bb6:

        //  %r293 = phi i32 [ %r290, %bb5 ], [ %r334, %bb7 ]

        //  %r294 = icmp slt i32 %r293, %r288

        ldr     x18, [sp], #8
        cmp     x12, x18
        //  br i1 %r294, label %bb7, label %bb8


        b.lt     bb7
        b     bb8
        //bb7:

bb7:

        //  %r330 = add i32 %r293, %r281

        add     x9, x12, x15
        //  %r331 = add i32 %r330, 1

        mov     x10, #1
        add     x9, x9, x10
        //  %r332 = add i32 %r331, 0

        mov     x10, x9
        //  %r142 = getelementptr i32, i32* %r100, i32 %r332

        mov     x9, #8
        mul     x9, x9, x10
        add     x9, x13, x9
        //  %r143 = load i32, i32* %r142

        ldr     x11, [x9]
        //  %r145 = getelementptr [10 x i32 ], [10 x i32 ]* %r117, i32 0, i32 %r293

        mov     x9, #8
        mul     x10, x9, x12
        add     x9, x29, #-80
        add     x9, x9, x10
        //  store i32 %r143, i32* %r145

        str     x11, [x9]
        //  %r333 = add i32 %r293, 1

        mov     x9, #1
        add     x9, x12, x9
        //  %r334 = add i32 %r333, 0

        mov     x9, x9
        mov     x12, x9
        //  br label %bb6


        b     bb6
        //bb8:

bb8:

        //  %r295 = add i32 0, 0

        mov     x9, #0
        //  %r296 = add i32 0, 0

        mov     x10, #0
        //  %r297 = add i32 %r279, 0

        mov     x11, x14
        mov     x10, x10
        str     x19, [sp, #-8]!
        mov     x16, x9
        str     x16, [sp, #-8]!
        str     x17, [sp, #-8]!
        mov     x18, x11
        str     x18, [sp, #-8]!
        //  br label %bb9


        b     bb9
        //bb9:

bb9:

        //  %r298 = phi i32 [ %r296, %bb8 ], [ %r319, %bb15 ]

        //  %r299 = phi i32 [ %r295, %bb8 ], [ %r320, %bb15 ]

        //  %r300 = phi i32 [ %r297, %bb8 ], [ %r321, %bb15 ]

        //  %r301 = icmp ne i32 %r299, %r286

        ldr     x19, [sp], #8
        ldr     x16, [sp], #8
        cmp     x19, x16
        //  br i1 %r301, label %bb12, label %bb11


        b.ne     bb12
        b     bb11
        //bb12:

bb12:

        //  %r316 = icmp ne i32 %r298, %r288

        ldr     x17, [sp], #8
        cmp     x10, x17
        //  br i1 %r316, label %bb10, label %bb11


        b.ne     bb10
        b     bb11
        //bb10:

bb10:

        //  %r158 = getelementptr [10 x i32 ], [10 x i32 ]* %r116, i32 0, i32 %r299

        mov     x9, #8
        ldr     x18, [sp], #8
        mul     x11, x9, x18
        add     x9, x29, #-160
        add     x9, x9, x11
        //  %r159 = load i32, i32* %r158

        ldr     x9, [x9]
        //  %r161 = getelementptr [10 x i32 ], [10 x i32 ]* %r117, i32 0, i32 %r298

        mov     x11, #8
        mul     x12, x11, x10
        add     x11, x29, #-80
        add     x11, x11, x12
        //  %r162 = load i32, i32* %r161

        ldr     x12, [x11]
        //  %r317 = add i32 %r162, 1

        mov     x11, #1
        add     x11, x12, x11
        //  %r318 = icmp slt i32 %r159, %r317

        cmp     x9, x11
        //  br i1 %r318, label %bb13, label %bb14


        b.lt     bb13
        b     bb14
        //bb13:

bb13:

        //  %r166 = getelementptr [10 x i32 ], [10 x i32 ]* %r116, i32 0, i32 %r299

        mov     x9, #8
        ldr     x19, [sp], #8
        mul     x9, x9, x19
        add     x11, x29, #-160
        add     x9, x11, x9
        //  %r167 = load i32, i32* %r166

        ldr     x9, [x9]
        //  %r169 = getelementptr i32, i32* %r100, i32 %r300

        mov     x11, #8
        ldr     x16, [sp], #8
        mul     x11, x11, x16
        add     x11, x13, x11
        //  store i32 %r167, i32* %r169

        str     x9, [x11]
        //  %r326 = add i32 %r300, 1

        mov     x9, #1
        ldr     x17, [sp], #8
        add     x9, x17, x9
        //  %r327 = add i32 %r326, 0

        mov     x9, x9
        //  %r328 = add i32 %r299, 1

        mov     x11, #1
        ldr     x18, [sp], #8
        add     x11, x18, x11
        //  %r329 = add i32 %r328, 0

        mov     x11, x11
        mov     x10, x10
        mov     x11, x11
        mov     x9, x9
        //  br label %bb15


        b     bb15
        //bb14:

bb14:

        //  %r175 = getelementptr [10 x i32 ], [10 x i32 ]* %r117, i32 0, i32 %r298

        mov     x9, #8
        mul     x9, x9, x10
        add     x11, x29, #-80
        add     x9, x11, x9
        //  %r176 = load i32, i32* %r175

        str     x19, [sp, #-8]!
        ldr     x16, [x9]
        str     x16, [sp, #-8]!
        //  %r178 = getelementptr i32, i32* %r100, i32 %r300

        mov     x9, #8
        ldr     x17, [sp], #8
        mul     x9, x9, x17
        add     x9, x13, x9
        //  store i32 %r176, i32* %r178

        ldr     x18, [sp], #8
        str     x18, [x9]
        //  %r322 = add i32 %r300, 1

        mov     x9, #1
        ldr     x19, [sp], #8
        add     x9, x19, x9
        //  %r323 = add i32 %r322, 0

        mov     x9, x9
        //  %r324 = add i32 %r298, 1

        mov     x11, #1
        add     x10, x10, x11
        //  %r325 = add i32 %r324, 0

        mov     x10, x10
        mov     x10, x10
        ldr     x16, [sp], #8
        mov     x11, x16
        mov     x9, x9
        //  br label %bb15


        b     bb15
        //bb15:

bb15:

        //  %r319 = phi i32 [ %r298, %bb13 ], [ %r325, %bb14 ]

        //  %r320 = phi i32 [ %r329, %bb13 ], [ %r299, %bb14 ]

        //  %r321 = phi i32 [ %r327, %bb13 ], [ %r323, %bb14 ]

        mov     x10, x10
        mov     x16, x11
        mov     x18, x9
        //  br label %bb9


        b     bb9
        //bb11:

bb11:

        ldr     x17, [sp], #8
        mov     x11, x17
        str     x18, [sp, #-8]!
        ldr     x16, [sp], #8
        mov     x19, x16
        str     x19, [sp, #-8]!
        //  br label %bb16


        b     bb16
        //bb16:

bb16:

        //  %r302 = phi i32 [ %r299, %bb11 ], [ %r315, %bb17 ]

        //  %r303 = phi i32 [ %r300, %bb11 ], [ %r313, %bb17 ]

        //  %r304 = icmp slt i32 %r302, %r286

        ldr     x17, [sp], #8
        cmp     x11, x17
        //  br i1 %r304, label %bb17, label %bb18


        b.lt     bb17
        b     bb18
        //bb17:

bb17:

        //  %r187 = getelementptr [10 x i32 ], [10 x i32 ]* %r116, i32 0, i32 %r302

        mov     x9, #8
        mul     x9, x9, x11
        add     x12, x29, #-160
        add     x9, x12, x9
        //  %r188 = load i32, i32* %r187

        ldr     x9, [x9]
        //  %r190 = getelementptr i32, i32* %r100, i32 %r303

        mov     x12, #8
        ldr     x18, [sp], #8
        mul     x12, x12, x18
        add     x12, x13, x12
        //  store i32 %r188, i32* %r190

        str     x9, [x12]
        //  %r312 = add i32 %r303, 1

        mov     x9, #1
        ldr     x19, [sp], #8
        add     x9, x19, x9
        //  %r313 = add i32 %r312, 0

        mov     x9, x9
        //  %r314 = add i32 %r302, 1

        mov     x12, #1
        add     x11, x11, x12
        //  %r315 = add i32 %r314, 0

        mov     x11, x11
        mov     x11, x11
        mov     x19, x9
        //  br label %bb16


        b     bb16
        //bb18:

bb18:

        mov     x9, x10
        ldr     x16, [sp], #8
        mov     x10, x16
        //  br label %bb19


        b     bb19
        //bb19:

bb19:

        //  %r305 = phi i32 [ %r298, %bb18 ], [ %r311, %bb20 ]

        //  %r306 = phi i32 [ %r303, %bb18 ], [ %r309, %bb20 ]

        //  %r307 = icmp slt i32 %r305, %r288

        ldr     x17, [sp], #8
        cmp     x9, x17
        //  br i1 %r307, label %bb20, label %bb21


        b.lt     bb20
        b     bb21
        //bb20:

bb20:

        //  %r199 = getelementptr [10 x i32 ], [10 x i32 ]* %r117, i32 0, i32 %r305

        mov     x11, #8
        mul     x11, x11, x9
        add     x12, x29, #-80
        add     x11, x12, x11
        //  %r200 = load i32, i32* %r199

        ldr     x12, [x11]
        //  %r202 = getelementptr i32, i32* %r100, i32 %r306

        mov     x11, #8
        mul     x11, x11, x10
        add     x11, x13, x11
        //  store i32 %r200, i32* %r202

        str     x12, [x11]
        //  %r308 = add i32 %r306, 1

        mov     x11, #1
        add     x10, x10, x11
        //  %r309 = add i32 %r308, 0

        mov     x11, x10
        //  %r310 = add i32 %r305, 1

        mov     x10, #1
        add     x9, x9, x10
        //  %r311 = add i32 %r310, 0

        mov     x9, x9
        mov     x9, x9
        mov     x10, x11
        //  br label %bb19


        b     bb19
        //bb21:

bb21:

        //  ret i32 0

        mov     x9, #0
        mov     x0, x9
        mov     sp, x29
        ret
MergeSort:

        //bb23:

bb23:

        //  %r343 = add i32 0, 0

        mov     x16, #0
        sub     sp, sp, x16
        mov     x10, x0
        mov     x9, x1
        mov     x11, x2
        //  %r344 = add i32 0, 0

        //  %r345 = add i32 0, 0

        //  %r346 = add i32 %r208, 0

        mov     x12, x9
        //  %r347 = add i32 0, 0

        //  %r348 = add i32 %r210, 0

        mov     x11, x11
        //  br label %bb22


        b     bb22
        //bb22:

bb22:

        //  %r349 = icmp slt i32 %r346, %r348

        cmp     x12, x11
        //  br i1 %r349, label %bb24, label %bb25


        b.lt     bb24
        b     bb25
        //bb24:

bb24:

        //  %r350 = add i32 %r346, %r348

        add     x9, x12, x11
        //  %r351 = sdiv i32 %r350, 2

        mov     x13, #2
        sdiv     x9, x9, x13
        //  %r352 = add i32 %r351, 0

        mov     x9, x9
        //  %r353 = call i32 @MergeSort(i32* %r207, i32 %r346, i32 %r352)

        mov     x0, x10
        mov     x1, x12
        mov     x2, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     MergeSort
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x13, x0
        //  %r354 = add i32 %r353, 0

        //  %r355 = add i32 %r352, 1

        mov     x13, #1
        add     x13, x9, x13
        //  %r356 = add i32 %r355, 0

        mov     x13, x13
        //  %r357 = call i32 @MergeSort(i32* %r207, i32 %r356, i32 %r348)

        mov     x0, x10
        mov     x1, x13
        mov     x2, x11
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     MergeSort
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x13, x0
        //  %r358 = add i32 %r357, 0

        //  %r359 = call i32 @Merge(i32* %r207, i32 %r346, i32 %r352, i32 %r348)

        mov     x0, x10
        mov     x1, x12
        mov     x2, x9
        mov     x3, x11
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     Merge
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        //  %r360 = add i32 %r359, 0

        //  br label %bb26


        b     bb26
        //bb25:

bb25:

        //  br label %bb26


        b     bb26
        //bb26:

bb26:

        //  ret i32 0

        mov     x9, #0
        mov     x0, x9
        mov     sp, x29
        ret
main:

        //233:x29,#-80

        //bb27:

bb27:

        //  call void @_sysy_starttime(i32 71)

        mov     x16, #80
        sub     sp, sp, x16
        mov     x0, #71
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
        //  store i32 10, i32* @n

        mov     x11, #10
        adrp     x10, n
        add     x10, x10, #:lo12:n
        str     x11, [x10]
        //  %r233 = alloca [ 10 x i32 ]

        //  %r234 = getelementptr [10 x i32 ], [10 x i32 ]* %r233, i32 0, i32 0

        mov     x10, #8
        mov     x11, #0
        mul     x10, x10, x11
        add     x11, x29, #-80
        add     x11, x11, x10
        //  store i32 4, i32* %r234

        mov     x10, #4
        str     x10, [x11]
        //  %r235 = getelementptr [10 x i32 ], [10 x i32 ]* %r233, i32 0, i32 1

        mov     x11, #8
        mov     x10, #1
        mul     x11, x11, x10
        add     x10, x29, #-80
        add     x11, x10, x11
        //  store i32 3, i32* %r235

        mov     x10, #3
        str     x10, [x11]
        //  %r236 = getelementptr [10 x i32 ], [10 x i32 ]* %r233, i32 0, i32 2

        mov     x11, #8
        mov     x10, #2
        mul     x11, x11, x10
        add     x10, x29, #-80
        add     x11, x10, x11
        //  store i32 9, i32* %r236

        mov     x10, #9
        str     x10, [x11]
        //  %r237 = getelementptr [10 x i32 ], [10 x i32 ]* %r233, i32 0, i32 3

        mov     x11, #8
        mov     x10, #3
        mul     x11, x11, x10
        add     x10, x29, #-80
        add     x11, x10, x11
        //  store i32 2, i32* %r237

        mov     x10, #2
        str     x10, [x11]
        //  %r238 = getelementptr [10 x i32 ], [10 x i32 ]* %r233, i32 0, i32 4

        mov     x11, #8
        mov     x10, #4
        mul     x11, x11, x10
        add     x10, x29, #-80
        add     x11, x10, x11
        //  store i32 0, i32* %r238

        mov     x10, #0
        str     x10, [x11]
        //  %r239 = getelementptr [10 x i32 ], [10 x i32 ]* %r233, i32 0, i32 5

        mov     x11, #8
        mov     x10, #5
        mul     x11, x11, x10
        add     x10, x29, #-80
        add     x11, x10, x11
        //  store i32 1, i32* %r239

        mov     x10, #1
        str     x10, [x11]
        //  %r240 = getelementptr [10 x i32 ], [10 x i32 ]* %r233, i32 0, i32 6

        mov     x10, #8
        mov     x11, #6
        mul     x10, x10, x11
        add     x11, x29, #-80
        add     x10, x11, x10
        //  store i32 6, i32* %r240

        mov     x11, #6
        str     x11, [x10]
        //  %r241 = getelementptr [10 x i32 ], [10 x i32 ]* %r233, i32 0, i32 7

        mov     x10, #8
        mov     x11, #7
        mul     x10, x10, x11
        add     x11, x29, #-80
        add     x10, x11, x10
        //  store i32 5, i32* %r241

        mov     x11, #5
        str     x11, [x10]
        //  %r242 = getelementptr [10 x i32 ], [10 x i32 ]* %r233, i32 0, i32 8

        mov     x10, #8
        mov     x11, #8
        mul     x10, x10, x11
        add     x11, x29, #-80
        add     x10, x11, x10
        //  store i32 7, i32* %r242

        mov     x11, #7
        str     x11, [x10]
        //  %r243 = getelementptr [10 x i32 ], [10 x i32 ]* %r233, i32 0, i32 9

        mov     x10, #8
        mov     x11, #9
        mul     x10, x10, x11
        add     x11, x29, #-80
        add     x10, x11, x10
        //  store i32 8, i32* %r243

        mov     x11, #8
        str     x11, [x10]
        //  %r363 = add i32 0, 0

        //  %r364 = add i32 0, 0

        mov     x11, #0
        //  %r365 = add i32 0, 0

        //  %r246 = load i32, i32* @n

        adrp     x10, n
        add     x10, x10, #:lo12:n
        ldr     x10, [x10]
        //  %r366 = sub i32 %r246, 1

        mov     x12, #1
        sub     x10, x10, x12
        //  %r367 = add i32 %r366, 0

        mov     x10, x10
        //  %r368 = call i32 @MergeSort(i32* %r233, i32 %r364, i32 %r367)

        mov     x0, x9
        mov     x1, x11
        mov     x2, x10
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     MergeSort
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        //  %r369 = add i32 %r368, 0

        mov     x9, x9
        mov     x9, x9
        //  br label %bb28


        b     bb28
        //bb28:

bb28:

        //  %r370 = phi i32 [ %r369, %bb27 ], [ %r375, %bb29 ]

        //  %r252 = load i32, i32* @n

        adrp     x10, n
        add     x10, x10, #:lo12:n
        ldr     x10, [x10]
        //  %r371 = icmp slt i32 %r370, %r252

        cmp     x9, x10
        //  br i1 %r371, label %bb29, label %bb30


        b.lt     bb29
        b     bb30
        //bb29:

bb29:

        //  %r255 = getelementptr [10 x i32 ], [10 x i32 ]* %r233, i32 0, i32 %r370

        mov     x10, #8
        mul     x10, x10, x9
        add     x11, x29, #-80
        add     x10, x11, x10
        //  %r256 = load i32, i32* %r255

        ldr     x10, [x10]
        //  %r372 = add i32 %r256, 0

        mov     x10, x10
        //  call void @putint(i32 %r372)

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
        //  %r373 = add i32 10, 0

        mov     x10, #10
        //  call void @putch(i32 %r373)

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
        //  %r374 = add i32 %r370, 1

        mov     x10, #1
        add     x9, x9, x10
        //  %r375 = add i32 %r374, 0

        mov     x9, x9
        mov     x9, x9
        //  br label %bb28


        b     bb28
        //bb30:

bb30:

        //  call void @_sysy_stoptime(i32 97)

        mov     x0, #97
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
