.section .data
.section .text
.global getch
.global getint
.global putch
.global putint
.global putarray
.global _sysy_starttime
.global _sysy_stoptime
.global func1
.global func2
.global func3
.global func4
.global func5
.global func6
.global func7
.global main
func1:

        //bb2:

bb2:

        //  %r275 = add i32 0, 0

        sub     sp, sp, #0
        mov     x100, x0
        mov     x102, x1
        mov     x104, x2
        mov     x275, #0
        //  %r276 = add i32 %r100, 0

        mov     x276, x100
        //  %r277 = add i32 0, 0

        mov     x277, #0
        //  %r278 = add i32 %r102, 0

        mov     x278, x102
        //  %r279 = add i32 0, 0

        mov     x279, #0
        //  %r280 = add i32 %r104, 0

        mov     x280, x104
        //  br label %bb1


        b     bb1
        //bb1:

bb1:

        //  %r281 = icmp eq i32 %r280, 0

        mov     x393, #0
        cmp     x280, x393
        //  br i1 %r281, label %bb3, label %bb4


        b.eq     bb3
        b     bb4
        //bb3:

bb3:

        //  %r284 = mul i32 %r276, %r278

        mul     x284, x276, x278
        //  ret i32 %r284

        mov     x0, x284
        mov     sp, x29
        ret
        //bb4:

bb4:

        //  %r282 = sub i32 %r278, %r280

        sub     x282, x278, x280
        //  %r283 = call i32 @func1(i32 %r276, i32 %r282, i32 0)

        mov     x0, x276
        mov     x1, x282
        mov     x2, #0
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func1
        stp     x29, x30, [sp, #16]!
        str     x7, [sp, #-8]!
        stp     x14, x15, [sp, #16]!
        stp     x12, x13, [sp, #16]!
        stp     x10, x11, [sp, #16]!
        mov     x283, x0
        //  ret i32 %r283

        mov     x0, x283
        mov     sp, x29
        ret
func2:

        //bb7:

bb7:

        //  %r287 = add i32 0, 0

        sub     sp, sp, #0
        mov     x116, x0
        mov     x118, x1
        mov     x287, #0
        //  %r288 = add i32 %r116, 0

        mov     x288, x116
        //  %r289 = add i32 0, 0

        mov     x289, #0
        //  %r290 = add i32 %r118, 0

        mov     x290, x118
        //  br label %bb6


        b     bb6
        //bb6:

bb6:

        //  %r291 = icmp ne i32 %r290, 0

        mov     x394, #0
        cmp     x290, x394
        //  br i1 %r291, label %bb8, label %bb9


        b.ne     bb8
        b     bb9
        //bb8:

bb8:

        //  %r292 = sdiv i32 %r288, %r290

        sdiv     x292, x288, x290
        //  %r293 = mul i32 %r292, %r290

        mul     x293, x292, x290
        //  %r294 = sub i32 %r288, %r293

        sub     x294, x288, x293
        //  %r295 = call i32 @func2(i32 %r294, i32 0)

        mov     x0, x294
        mov     x1, #0
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func2
        stp     x29, x30, [sp, #16]!
        str     x7, [sp, #-8]!
        stp     x14, x15, [sp, #16]!
        stp     x12, x13, [sp, #16]!
        stp     x10, x11, [sp, #16]!
        mov     x295, x0
        //  ret i32 %r295

        mov     x0, x295
        mov     sp, x29
        ret
        //bb9:

bb9:

        //  ret i32 %r288

        mov     x0, x288
        mov     sp, x29
        ret
func3:

        //bb12:

bb12:

        //  %r298 = add i32 0, 0

        sub     sp, sp, #0
        mov     x131, x0
        mov     x133, x1
        mov     x298, #0
        //  %r299 = add i32 %r131, 0

        mov     x299, x131
        //  %r300 = add i32 0, 0

        mov     x300, #0
        //  %r301 = add i32 %r133, 0

        mov     x301, x133
        //  br label %bb11


        b     bb11
        //bb11:

bb11:

        //  %r302 = icmp eq i32 %r301, 0

        mov     x395, #0
        cmp     x301, x395
        //  br i1 %r302, label %bb13, label %bb14


        b.eq     bb13
        b     bb14
        //bb13:

bb13:

        //  %r305 = add i32 %r299, 1

        add     x305, x299, #1
        //  ret i32 %r305

        mov     x0, x305
        mov     sp, x29
        ret
        //bb14:

bb14:

        //  %r303 = add i32 %r299, %r301

        add     x303, x299, x301
        //  %r304 = call i32 @func3(i32 %r303, i32 0)

        mov     x0, x303
        mov     x1, #0
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func3
        stp     x29, x30, [sp, #16]!
        str     x7, [sp, #-8]!
        stp     x14, x15, [sp, #16]!
        stp     x12, x13, [sp, #16]!
        stp     x10, x11, [sp, #16]!
        mov     x304, x0
        //  ret i32 %r304

        mov     x0, x304
        mov     sp, x29
        ret
func4:

        //bb17:

bb17:

        //  %r309 = add i32 0, 0

        sub     sp, sp, #0
        mov     x143, x0
        mov     x145, x1
        mov     x147, x2
        mov     x309, #0
        //  %r310 = add i32 %r143, 0

        mov     x310, x143
        //  %r311 = add i32 0, 0

        mov     x311, #0
        //  %r312 = add i32 %r145, 0

        mov     x312, x145
        //  %r313 = add i32 0, 0

        mov     x313, #0
        //  %r314 = add i32 %r147, 0

        mov     x314, x147
        //  br label %bb16


        b     bb16
        //bb16:

bb16:

        //  %r315 = icmp ne i32 %r310, 0

        mov     x396, #0
        cmp     x310, x396
        //  br i1 %r315, label %bb18, label %bb19


        b.ne     bb18
        b     bb19
        //bb18:

bb18:

        //  ret i32 %r312

        mov     x0, x312
        mov     sp, x29
        ret
        //bb19:

bb19:

        //  ret i32 %r314

        mov     x0, x314
        mov     sp, x29
        ret
func5:

        //bb22:

bb22:

        //  %r317 = add i32 0, 0

        sub     sp, sp, #0
        mov     x153, x0
        mov     x317, #0
        //  %r318 = add i32 %r153, 0

        mov     x318, x153
        //  br label %bb21


        b     bb21
        //bb21:

bb21:

        //  %r319 = sub i32 0, %r318

        sub     x319, #0, x318
        //  ret i32 %r319

        mov     x0, x319
        mov     sp, x29
        ret
func6:

        //bb24:

bb24:

        //  %r322 = add i32 0, 0

        sub     sp, sp, #0
        mov     x157, x0
        mov     x159, x1
        mov     x322, #0
        //  %r323 = add i32 %r157, 0

        mov     x323, x157
        //  %r324 = add i32 0, 0

        mov     x324, #0
        //  %r325 = add i32 %r159, 0

        mov     x325, x159
        //  br label %bb23


        b     bb23
        //bb23:

bb23:

        //  %r326 = icmp ne i32 %r323, 0

        mov     x397, #0
        cmp     x323, x397
        //  br i1 %r326, label %bb28, label %bb26


        b.ne     bb28
        b     bb26
        //bb28:

bb28:

        //  %r327 = icmp ne i32 %r325, 0

        mov     x398, #0
        cmp     x325, x398
        //  br i1 %r327, label %bb25, label %bb26


        b.ne     bb25
        b     bb26
        //bb25:

bb25:

        //  ret i32 1

        mov     x399, #1
        mov     x0, x399
        mov     sp, x29
        ret
        //bb26:

bb26:

        //  ret i32 0

        mov     x400, #0
        mov     x0, x400
        mov     sp, x29
        ret
func7:

        //bb30:

bb30:

        //  %r329 = add i32 0, 0

        sub     sp, sp, #0
        mov     x166, x0
        mov     x329, #0
        //  %r330 = add i32 %r166, 0

        mov     x330, x166
        //  br label %bb29


        b     bb29
        //bb29:

bb29:

        //  %r331 = icmp ne i32 %r330, 0

        mov     x401, #0
        cmp     x330, x401
        //  br i1 %r331, label %bb31, label %bb32


        b.ne     bb31
        b     bb32
        //bb31:

bb31:

        //  ret i32 1

        mov     x402, #1
        mov     x0, x402
        mov     sp, x29
        ret
        //bb32:

bb32:

        //  ret i32 0

        mov     x403, #0
        mov     x0, x403
        mov     sp, x29
        ret
main:

        //178:x29,#-80

        //bb34:

bb34:

        //  %r338 = add i32 0, 0

        sub     sp, sp, #80
        mov     x338, #0
        //  call void @_sysy_starttime(i32 97)

        mov     x0, #97
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     _sysy_starttime
        stp     x29, x30, [sp, #16]!
        str     x7, [sp, #-8]!
        stp     x14, x15, [sp, #16]!
        stp     x12, x13, [sp, #16]!
        stp     x10, x11, [sp, #16]!
        //  %r339 = call i32 @getint()

        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     getint
        stp     x29, x30, [sp, #16]!
        str     x7, [sp, #-8]!
        stp     x14, x15, [sp, #16]!
        stp     x12, x13, [sp, #16]!
        stp     x10, x11, [sp, #16]!
        mov     x339, x0
        //  %r340 = add i32 0, 0

        mov     x340, #0
        //  %r341 = add i32 %r339, 0

        mov     x341, x339
        //  %r342 = call i32 @getint()

        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     getint
        stp     x29, x30, [sp, #16]!
        str     x7, [sp, #-8]!
        stp     x14, x15, [sp, #16]!
        stp     x12, x13, [sp, #16]!
        stp     x10, x11, [sp, #16]!
        mov     x342, x0
        //  %r343 = add i32 0, 0

        mov     x343, #0
        //  %r344 = add i32 %r342, 0

        mov     x344, x342
        //  %r345 = call i32 @getint()

        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     getint
        stp     x29, x30, [sp, #16]!
        str     x7, [sp, #-8]!
        stp     x14, x15, [sp, #16]!
        stp     x12, x13, [sp, #16]!
        stp     x10, x11, [sp, #16]!
        mov     x345, x0
        //  %r346 = add i32 0, 0

        mov     x346, #0
        //  %r347 = add i32 %r345, 0

        mov     x347, x345
        //  %r348 = call i32 @getint()

        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     getint
        stp     x29, x30, [sp, #16]!
        str     x7, [sp, #-8]!
        stp     x14, x15, [sp, #16]!
        stp     x12, x13, [sp, #16]!
        stp     x10, x11, [sp, #16]!
        mov     x348, x0
        //  %r349 = add i32 0, 0

        mov     x349, #0
        //  %r350 = add i32 %r348, 0

        mov     x350, x348
        //  %r178 = alloca [ 10 x i32 ]

        //  %r351 = add i32 0, 0

        mov     x351, #0
        //  %r352 = add i32 0, 0

        mov     x352, #0
        //  br label %bb35


        b     bb35
        mov     x353, x352
        //bb35:

bb35:

        //  %r353 = phi i32 [ %r352, %bb34 ], [ %r392, %bb36 ]

        //  %r354 = icmp slt i32 %r353, 10

        mov     x404, #10
        cmp     x353, x404
        //  br i1 %r354, label %bb36, label %bb37


        b.lt     bb36
        b     bb37
        //bb36:

bb36:

        //  %r390 = call i32 @getint()

        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     getint
        stp     x29, x30, [sp, #16]!
        str     x7, [sp, #-8]!
        stp     x14, x15, [sp, #16]!
        stp     x12, x13, [sp, #16]!
        stp     x10, x11, [sp, #16]!
        mov     x390, x0
        //  %r184 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 %r353

        mov     x405, #8
        mul     x406, x405, x353
        add     x407, x29, #-80
        add     x184, x407, x406
        //  store i32 %r390, i32* %r184

        mov     x184, x390
        //  %r391 = add i32 %r353, 1

        add     x391, x353, #1
        //  %r392 = add i32 %r391, 0

        mov     x392, x391
        //  br label %bb35


        b     bb35
        mov     x353, x392
        //bb37:

bb37:

        //  %r355 = call i32 @func7(i32 %r341)

        mov     x0, x341
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func7
        stp     x29, x30, [sp, #16]!
        str     x7, [sp, #-8]!
        stp     x14, x15, [sp, #16]!
        stp     x12, x13, [sp, #16]!
        stp     x10, x11, [sp, #16]!
        mov     x355, x0
        //  %r356 = call i32 @func5(i32 %r344)

        mov     x0, x344
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func5
        stp     x29, x30, [sp, #16]!
        str     x7, [sp, #-8]!
        stp     x14, x15, [sp, #16]!
        stp     x12, x13, [sp, #16]!
        stp     x10, x11, [sp, #16]!
        mov     x356, x0
        //  %r357 = call i32 @func6(i32 %r355, i32 %r356)

        mov     x0, x355
        mov     x1, x356
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func6
        stp     x29, x30, [sp, #16]!
        str     x7, [sp, #-8]!
        stp     x14, x15, [sp, #16]!
        stp     x12, x13, [sp, #16]!
        stp     x10, x11, [sp, #16]!
        mov     x357, x0
        //  %r358 = call i32 @func2(i32 %r357, i32 %r347)

        mov     x0, x357
        mov     x1, x347
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func2
        stp     x29, x30, [sp, #16]!
        str     x7, [sp, #-8]!
        stp     x14, x15, [sp, #16]!
        stp     x12, x13, [sp, #16]!
        stp     x10, x11, [sp, #16]!
        mov     x358, x0
        //  %r359 = call i32 @func3(i32 %r358, i32 %r350)

        mov     x0, x358
        mov     x1, x350
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func3
        stp     x29, x30, [sp, #16]!
        str     x7, [sp, #-8]!
        stp     x14, x15, [sp, #16]!
        stp     x12, x13, [sp, #16]!
        stp     x10, x11, [sp, #16]!
        mov     x359, x0
        //  %r360 = call i32 @func5(i32 %r359)

        mov     x0, x359
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func5
        stp     x29, x30, [sp, #16]!
        str     x7, [sp, #-8]!
        stp     x14, x15, [sp, #16]!
        stp     x12, x13, [sp, #16]!
        stp     x10, x11, [sp, #16]!
        mov     x360, x0
        //  %r198 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 0

        mov     x408, #8
        mov     x409, #0
        mul     x410, x408, x409
        add     x411, x29, #-80
        add     x198, x411, x410
        //  %r199 = load i32, i32* %r198

        ldr     x199, x198
        //  %r200 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 1

        mov     x412, #8
        mov     x413, #1
        mul     x414, x412, x413
        add     x415, x29, #-80
        add     x200, x415, x414
        //  %r201 = load i32, i32* %r200

        ldr     x201, x200
        //  %r361 = call i32 @func5(i32 %r201)

        mov     x0, x201
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func5
        stp     x29, x30, [sp, #16]!
        str     x7, [sp, #-8]!
        stp     x14, x15, [sp, #16]!
        stp     x12, x13, [sp, #16]!
        stp     x10, x11, [sp, #16]!
        mov     x361, x0
        //  %r203 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 2

        mov     x416, #8
        mov     x417, #2
        mul     x418, x416, x417
        add     x419, x29, #-80
        add     x203, x419, x418
        //  %r204 = load i32, i32* %r203

        ldr     x204, x203
        //  %r205 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 3

        mov     x420, #8
        mov     x421, #3
        mul     x422, x420, x421
        add     x423, x29, #-80
        add     x205, x423, x422
        //  %r206 = load i32, i32* %r205

        ldr     x206, x205
        //  %r362 = call i32 @func7(i32 %r206)

        mov     x0, x206
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func7
        stp     x29, x30, [sp, #16]!
        str     x7, [sp, #-8]!
        stp     x14, x15, [sp, #16]!
        stp     x12, x13, [sp, #16]!
        stp     x10, x11, [sp, #16]!
        mov     x362, x0
        //  %r363 = call i32 @func6(i32 %r204, i32 %r362)

        mov     x0, x204
        mov     x1, x362
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func6
        stp     x29, x30, [sp, #16]!
        str     x7, [sp, #-8]!
        stp     x14, x15, [sp, #16]!
        stp     x12, x13, [sp, #16]!
        stp     x10, x11, [sp, #16]!
        mov     x363, x0
        //  %r209 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 4

        mov     x424, #8
        mov     x425, #4
        mul     x426, x424, x425
        add     x427, x29, #-80
        add     x209, x427, x426
        //  %r210 = load i32, i32* %r209

        ldr     x210, x209
        //  %r211 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 5

        mov     x428, #8
        mov     x429, #5
        mul     x430, x428, x429
        add     x431, x29, #-80
        add     x211, x431, x430
        //  %r212 = load i32, i32* %r211

        ldr     x212, x211
        //  %r364 = call i32 @func7(i32 %r212)

        mov     x0, x212
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func7
        stp     x29, x30, [sp, #16]!
        str     x7, [sp, #-8]!
        stp     x14, x15, [sp, #16]!
        stp     x12, x13, [sp, #16]!
        stp     x10, x11, [sp, #16]!
        mov     x364, x0
        //  %r365 = call i32 @func2(i32 %r210, i32 %r364)

        mov     x0, x210
        mov     x1, x364
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func2
        stp     x29, x30, [sp, #16]!
        str     x7, [sp, #-8]!
        stp     x14, x15, [sp, #16]!
        stp     x12, x13, [sp, #16]!
        stp     x10, x11, [sp, #16]!
        mov     x365, x0
        //  %r366 = call i32 @func4(i32 %r361, i32 %r363, i32 %r365)

        mov     x0, x361
        mov     x1, x363
        mov     x2, x365
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func4
        stp     x29, x30, [sp, #16]!
        str     x7, [sp, #-8]!
        stp     x14, x15, [sp, #16]!
        stp     x12, x13, [sp, #16]!
        stp     x10, x11, [sp, #16]!
        mov     x366, x0
        //  %r216 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 6

        mov     x432, #8
        mov     x433, #6
        mul     x434, x432, x433
        add     x435, x29, #-80
        add     x216, x435, x434
        //  %r217 = load i32, i32* %r216

        ldr     x217, x216
        //  %r367 = call i32 @func3(i32 %r366, i32 %r217)

        mov     x0, x366
        mov     x1, x217
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func3
        stp     x29, x30, [sp, #16]!
        str     x7, [sp, #-8]!
        stp     x14, x15, [sp, #16]!
        stp     x12, x13, [sp, #16]!
        stp     x10, x11, [sp, #16]!
        mov     x367, x0
        //  %r219 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 7

        mov     x436, #8
        mov     x437, #7
        mul     x438, x436, x437
        add     x439, x29, #-80
        add     x219, x439, x438
        //  %r220 = load i32, i32* %r219

        ldr     x220, x219
        //  %r368 = call i32 @func2(i32 %r367, i32 %r220)

        mov     x0, x367
        mov     x1, x220
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func2
        stp     x29, x30, [sp, #16]!
        str     x7, [sp, #-8]!
        stp     x14, x15, [sp, #16]!
        stp     x12, x13, [sp, #16]!
        stp     x10, x11, [sp, #16]!
        mov     x368, x0
        //  %r222 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 8

        mov     x440, #8
        mov     x441, #8
        mul     x442, x440, x441
        add     x443, x29, #-80
        add     x222, x443, x442
        //  %r223 = load i32, i32* %r222

        ldr     x223, x222
        //  %r224 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 9

        mov     x444, #8
        mov     x445, #9
        mul     x446, x444, x445
        add     x447, x29, #-80
        add     x224, x447, x446
        //  %r225 = load i32, i32* %r224

        ldr     x225, x224
        //  %r369 = call i32 @func7(i32 %r225)

        mov     x0, x225
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func7
        stp     x29, x30, [sp, #16]!
        str     x7, [sp, #-8]!
        stp     x14, x15, [sp, #16]!
        stp     x12, x13, [sp, #16]!
        stp     x10, x11, [sp, #16]!
        mov     x369, x0
        //  %r370 = call i32 @func3(i32 %r223, i32 %r369)

        mov     x0, x223
        mov     x1, x369
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func3
        stp     x29, x30, [sp, #16]!
        str     x7, [sp, #-8]!
        stp     x14, x15, [sp, #16]!
        stp     x12, x13, [sp, #16]!
        stp     x10, x11, [sp, #16]!
        mov     x370, x0
        //  %r371 = call i32 @func1(i32 %r368, i32 %r370, i32 %r341)

        mov     x0, x368
        mov     x1, x370
        mov     x2, x341
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func1
        stp     x29, x30, [sp, #16]!
        str     x7, [sp, #-8]!
        stp     x14, x15, [sp, #16]!
        stp     x12, x13, [sp, #16]!
        stp     x10, x11, [sp, #16]!
        mov     x371, x0
        //  %r372 = call i32 @func4(i32 %r360, i32 %r199, i32 %r371)

        mov     x0, x360
        mov     x1, x199
        mov     x2, x371
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func4
        stp     x29, x30, [sp, #16]!
        str     x7, [sp, #-8]!
        stp     x14, x15, [sp, #16]!
        stp     x12, x13, [sp, #16]!
        stp     x10, x11, [sp, #16]!
        mov     x372, x0
        //  %r373 = call i32 @func7(i32 %r347)

        mov     x0, x347
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func7
        stp     x29, x30, [sp, #16]!
        str     x7, [sp, #-8]!
        stp     x14, x15, [sp, #16]!
        stp     x12, x13, [sp, #16]!
        stp     x10, x11, [sp, #16]!
        mov     x373, x0
        //  %r374 = call i32 @func3(i32 %r373, i32 %r350)

        mov     x0, x373
        mov     x1, x350
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func3
        stp     x29, x30, [sp, #16]!
        str     x7, [sp, #-8]!
        stp     x14, x15, [sp, #16]!
        stp     x12, x13, [sp, #16]!
        stp     x10, x11, [sp, #16]!
        mov     x374, x0
        //  %r375 = call i32 @func2(i32 %r344, i32 %r374)

        mov     x0, x344
        mov     x1, x374
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func2
        stp     x29, x30, [sp, #16]!
        str     x7, [sp, #-8]!
        stp     x14, x15, [sp, #16]!
        stp     x12, x13, [sp, #16]!
        stp     x10, x11, [sp, #16]!
        mov     x375, x0
        //  %r376 = call i32 @func3(i32 %r372, i32 %r375)

        mov     x0, x372
        mov     x1, x375
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func3
        stp     x29, x30, [sp, #16]!
        str     x7, [sp, #-8]!
        stp     x14, x15, [sp, #16]!
        stp     x12, x13, [sp, #16]!
        stp     x10, x11, [sp, #16]!
        mov     x376, x0
        //  %r238 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 0

        mov     x448, #8
        mov     x449, #0
        mul     x450, x448, x449
        add     x451, x29, #-80
        add     x238, x451, x450
        //  %r239 = load i32, i32* %r238

        ldr     x239, x238
        //  %r240 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 1

        mov     x452, #8
        mov     x453, #1
        mul     x454, x452, x453
        add     x455, x29, #-80
        add     x240, x455, x454
        //  %r241 = load i32, i32* %r240

        ldr     x241, x240
        //  %r377 = call i32 @func1(i32 %r376, i32 %r239, i32 %r241)

        mov     x0, x376
        mov     x1, x239
        mov     x2, x241
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func1
        stp     x29, x30, [sp, #16]!
        str     x7, [sp, #-8]!
        stp     x14, x15, [sp, #16]!
        stp     x12, x13, [sp, #16]!
        stp     x10, x11, [sp, #16]!
        mov     x377, x0
        //  %r243 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 2

        mov     x456, #8
        mov     x457, #2
        mul     x458, x456, x457
        add     x459, x29, #-80
        add     x243, x459, x458
        //  %r244 = load i32, i32* %r243

        ldr     x244, x243
        //  %r378 = call i32 @func2(i32 %r377, i32 %r244)

        mov     x0, x377
        mov     x1, x244
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func2
        stp     x29, x30, [sp, #16]!
        str     x7, [sp, #-8]!
        stp     x14, x15, [sp, #16]!
        stp     x12, x13, [sp, #16]!
        stp     x10, x11, [sp, #16]!
        mov     x378, x0
        //  %r246 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 3

        mov     x460, #8
        mov     x461, #3
        mul     x462, x460, x461
        add     x463, x29, #-80
        add     x246, x463, x462
        //  %r247 = load i32, i32* %r246

        ldr     x247, x246
        //  %r248 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 4

        mov     x464, #8
        mov     x465, #4
        mul     x466, x464, x465
        add     x467, x29, #-80
        add     x248, x467, x466
        //  %r249 = load i32, i32* %r248

        ldr     x249, x248
        //  %r250 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 5

        mov     x468, #8
        mov     x469, #5
        mul     x470, x468, x469
        add     x471, x29, #-80
        add     x250, x471, x470
        //  %r251 = load i32, i32* %r250

        ldr     x251, x250
        //  %r379 = call i32 @func5(i32 %r251)

        mov     x0, x251
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func5
        stp     x29, x30, [sp, #16]!
        str     x7, [sp, #-8]!
        stp     x14, x15, [sp, #16]!
        stp     x12, x13, [sp, #16]!
        stp     x10, x11, [sp, #16]!
        mov     x379, x0
        //  %r380 = call i32 @func3(i32 %r249, i32 %r379)

        mov     x0, x249
        mov     x1, x379
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func3
        stp     x29, x30, [sp, #16]!
        str     x7, [sp, #-8]!
        stp     x14, x15, [sp, #16]!
        stp     x12, x13, [sp, #16]!
        stp     x10, x11, [sp, #16]!
        mov     x380, x0
        //  %r254 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 6

        mov     x472, #8
        mov     x473, #6
        mul     x474, x472, x473
        add     x475, x29, #-80
        add     x254, x475, x474
        //  %r255 = load i32, i32* %r254

        ldr     x255, x254
        //  %r381 = call i32 @func5(i32 %r255)

        mov     x0, x255
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func5
        stp     x29, x30, [sp, #16]!
        str     x7, [sp, #-8]!
        stp     x14, x15, [sp, #16]!
        stp     x12, x13, [sp, #16]!
        stp     x10, x11, [sp, #16]!
        mov     x381, x0
        //  %r382 = call i32 @func2(i32 %r380, i32 %r381)

        mov     x0, x380
        mov     x1, x381
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func2
        stp     x29, x30, [sp, #16]!
        str     x7, [sp, #-8]!
        stp     x14, x15, [sp, #16]!
        stp     x12, x13, [sp, #16]!
        stp     x10, x11, [sp, #16]!
        mov     x382, x0
        //  %r258 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 7

        mov     x476, #8
        mov     x477, #7
        mul     x478, x476, x477
        add     x479, x29, #-80
        add     x258, x479, x478
        //  %r259 = load i32, i32* %r258

        ldr     x259, x258
        //  %r260 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 8

        mov     x480, #8
        mov     x481, #8
        mul     x482, x480, x481
        add     x483, x29, #-80
        add     x260, x483, x482
        //  %r261 = load i32, i32* %r260

        ldr     x261, x260
        //  %r383 = call i32 @func7(i32 %r261)

        mov     x0, x261
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func7
        stp     x29, x30, [sp, #16]!
        str     x7, [sp, #-8]!
        stp     x14, x15, [sp, #16]!
        stp     x12, x13, [sp, #16]!
        stp     x10, x11, [sp, #16]!
        mov     x383, x0
        //  %r384 = call i32 @func1(i32 %r382, i32 %r259, i32 %r383)

        mov     x0, x382
        mov     x1, x259
        mov     x2, x383
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func1
        stp     x29, x30, [sp, #16]!
        str     x7, [sp, #-8]!
        stp     x14, x15, [sp, #16]!
        stp     x12, x13, [sp, #16]!
        stp     x10, x11, [sp, #16]!
        mov     x384, x0
        //  %r264 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 9

        mov     x484, #8
        mov     x485, #9
        mul     x486, x484, x485
        add     x487, x29, #-80
        add     x264, x487, x486
        //  %r265 = load i32, i32* %r264

        ldr     x265, x264
        //  %r385 = call i32 @func5(i32 %r265)

        mov     x0, x265
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func5
        stp     x29, x30, [sp, #16]!
        str     x7, [sp, #-8]!
        stp     x14, x15, [sp, #16]!
        stp     x12, x13, [sp, #16]!
        stp     x10, x11, [sp, #16]!
        mov     x385, x0
        //  %r386 = call i32 @func2(i32 %r384, i32 %r385)

        mov     x0, x384
        mov     x1, x385
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func2
        stp     x29, x30, [sp, #16]!
        str     x7, [sp, #-8]!
        stp     x14, x15, [sp, #16]!
        stp     x12, x13, [sp, #16]!
        stp     x10, x11, [sp, #16]!
        mov     x386, x0
        //  %r387 = call i32 @func3(i32 %r386, i32 %r341)

        mov     x0, x386
        mov     x1, x341
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func3
        stp     x29, x30, [sp, #16]!
        str     x7, [sp, #-8]!
        stp     x14, x15, [sp, #16]!
        stp     x12, x13, [sp, #16]!
        stp     x10, x11, [sp, #16]!
        mov     x387, x0
        //  %r388 = call i32 @func1(i32 %r378, i32 %r247, i32 %r387)

        mov     x0, x378
        mov     x1, x247
        mov     x2, x387
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func1
        stp     x29, x30, [sp, #16]!
        str     x7, [sp, #-8]!
        stp     x14, x15, [sp, #16]!
        stp     x12, x13, [sp, #16]!
        stp     x10, x11, [sp, #16]!
        mov     x388, x0
        //  %r389 = add i32 %r388, 0

        mov     x389, x388
        //  call void @_sysy_stoptime(i32 117)

        mov     x0, #117
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     _sysy_stoptime
        stp     x29, x30, [sp, #16]!
        str     x7, [sp, #-8]!
        stp     x14, x15, [sp, #16]!
        stp     x12, x13, [sp, #16]!
        stp     x10, x11, [sp, #16]!
        //  ret i32 %r389

        mov     x0, x389
        mov     sp, x29
        ret
