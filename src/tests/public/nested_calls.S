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
        sub     sp, sp, #0
func1:

        //bb2:

bb2:

        //  %r275 = add i32 0, 0

        mov     x16, #0
        sub     sp, sp, x16
        mov     x9, x0
        mov     x10, x1
        mov     x11, x2
        //  %r276 = add i32 %r100, 0

        mov     x12, x9
        //  %r277 = add i32 0, 0

        //  %r278 = add i32 %r102, 0

        mov     x10, x10
        //  %r279 = add i32 0, 0

        //  %r280 = add i32 %r104, 0

        mov     x11, x11
        //  br label %bb1


        b     bb1
        //bb1:

bb1:

        //  %r281 = icmp eq i32 %r280, 0

        mov     x9, #0
        cmp     x11, x9
        //  br i1 %r281, label %bb3, label %bb4


        b.eq     bb3
        b     bb4
        //bb3:

bb3:

        //  %r284 = mul i32 %r276, %r278

        mul     x9, x12, x10
        //  ret i32 %r284

        mov     x0, x9
        mov     sp, x29
        ret
        //bb4:

bb4:

        //  %r282 = sub i32 %r278, %r280

        sub     x9, x10, x11
        //  %r283 = call i32 @func1(i32 %r276, i32 %r282, i32 0)

        mov     x0, x12
        mov     x1, x9
        mov     x2, #0
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func1
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        //  ret i32 %r283

        mov     x0, x9
        mov     sp, x29
        ret
        sub     sp, sp, #0
func2:

        //bb7:

bb7:

        //  %r287 = add i32 0, 0

        mov     x16, #0
        sub     sp, sp, x16
        mov     x9, x0
        mov     x10, x1
        //  %r288 = add i32 %r116, 0

        mov     x9, x9
        //  %r289 = add i32 0, 0

        //  %r290 = add i32 %r118, 0

        mov     x10, x10
        //  br label %bb6


        b     bb6
        //bb6:

bb6:

        //  %r291 = icmp ne i32 %r290, 0

        mov     x11, #0
        cmp     x10, x11
        //  br i1 %r291, label %bb8, label %bb9


        b.ne     bb8
        b     bb9
        //bb8:

bb8:

        //  %r292 = sdiv i32 %r288, %r290

        sdiv     x11, x9, x10
        //  %r293 = mul i32 %r292, %r290

        mul     x10, x11, x10
        //  %r294 = sub i32 %r288, %r293

        sub     x9, x9, x10
        //  %r295 = call i32 @func2(i32 %r294, i32 0)

        mov     x0, x9
        mov     x1, #0
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func2
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        //  ret i32 %r295

        mov     x0, x9
        mov     sp, x29
        ret
        //bb9:

bb9:

        //  ret i32 %r288

        mov     x0, x9
        mov     sp, x29
        ret
        sub     sp, sp, #0
func3:

        //bb12:

bb12:

        //  %r298 = add i32 0, 0

        mov     x16, #0
        sub     sp, sp, x16
        mov     x9, x0
        mov     x10, x1
        //  %r299 = add i32 %r131, 0

        mov     x9, x9
        //  %r300 = add i32 0, 0

        //  %r301 = add i32 %r133, 0

        mov     x10, x10
        //  br label %bb11


        b     bb11
        //bb11:

bb11:

        //  %r302 = icmp eq i32 %r301, 0

        mov     x11, #0
        cmp     x10, x11
        //  br i1 %r302, label %bb13, label %bb14


        b.eq     bb13
        b     bb14
        //bb13:

bb13:

        //  %r305 = add i32 %r299, 1

        mov     x10, #1
        add     x9, x9, x10
        //  ret i32 %r305

        mov     x0, x9
        mov     sp, x29
        ret
        //bb14:

bb14:

        //  %r303 = add i32 %r299, %r301

        add     x9, x9, x10
        //  %r304 = call i32 @func3(i32 %r303, i32 0)

        mov     x0, x9
        mov     x1, #0
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func3
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        //  ret i32 %r304

        mov     x0, x9
        mov     sp, x29
        ret
        sub     sp, sp, #0
func4:

        //bb17:

bb17:

        //  %r309 = add i32 0, 0

        mov     x16, #0
        sub     sp, sp, x16
        mov     x9, x0
        mov     x10, x1
        mov     x11, x2
        //  %r310 = add i32 %r143, 0

        mov     x12, x9
        //  %r311 = add i32 0, 0

        //  %r312 = add i32 %r145, 0

        mov     x9, x10
        //  %r313 = add i32 0, 0

        //  %r314 = add i32 %r147, 0

        mov     x10, x11
        //  br label %bb16


        b     bb16
        //bb16:

bb16:

        //  %r315 = icmp ne i32 %r310, 0

        mov     x11, #0
        cmp     x12, x11
        //  br i1 %r315, label %bb18, label %bb19


        b.ne     bb18
        b     bb19
        //bb18:

bb18:

        //  ret i32 %r312

        mov     x0, x9
        mov     sp, x29
        ret
        //bb19:

bb19:

        //  ret i32 %r314

        mov     x0, x10
        mov     sp, x29
        ret
        sub     sp, sp, #0
func5:

        //bb22:

bb22:

        //  %r317 = add i32 0, 0

        mov     x16, #0
        sub     sp, sp, x16
        mov     x9, x0
        //  %r318 = add i32 %r153, 0

        mov     x9, x9
        //  br label %bb21


        b     bb21
        //bb21:

bb21:

        //  %r319 = sub i32 0, %r318

        mov     x10, #0
        sub     x9, x10, x9
        //  ret i32 %r319

        mov     x0, x9
        mov     sp, x29
        ret
        sub     sp, sp, #0
func6:

        //bb24:

bb24:

        //  %r322 = add i32 0, 0

        mov     x16, #0
        sub     sp, sp, x16
        mov     x9, x0
        mov     x10, x1
        //  %r323 = add i32 %r157, 0

        mov     x9, x9
        //  %r324 = add i32 0, 0

        //  %r325 = add i32 %r159, 0

        mov     x10, x10
        //  br label %bb23


        b     bb23
        //bb23:

bb23:

        //  %r326 = icmp ne i32 %r323, 0

        mov     x11, #0
        cmp     x9, x11
        //  br i1 %r326, label %bb28, label %bb26


        b.ne     bb28
        b     bb26
        //bb28:

bb28:

        //  %r327 = icmp ne i32 %r325, 0

        mov     x9, #0
        cmp     x10, x9
        //  br i1 %r327, label %bb25, label %bb26


        b.ne     bb25
        b     bb26
        //bb25:

bb25:

        //  ret i32 1

        mov     x9, #1
        mov     x0, x9
        mov     sp, x29
        ret
        //bb26:

bb26:

        //  ret i32 0

        mov     x9, #0
        mov     x0, x9
        mov     sp, x29
        ret
        sub     sp, sp, #0
func7:

        //bb30:

bb30:

        //  %r329 = add i32 0, 0

        mov     x16, #0
        sub     sp, sp, x16
        mov     x9, x0
        //  %r330 = add i32 %r166, 0

        mov     x9, x9
        //  br label %bb29


        b     bb29
        //bb29:

bb29:

        //  %r331 = icmp ne i32 %r330, 0

        mov     x10, #0
        cmp     x9, x10
        //  br i1 %r331, label %bb31, label %bb32


        b.ne     bb31
        b     bb32
        //bb31:

bb31:

        //  ret i32 1

        mov     x9, #1
        mov     x0, x9
        mov     sp, x29
        ret
        //bb32:

bb32:

        //  ret i32 0

        mov     x9, #0
        mov     x0, x9
        mov     sp, x29
        ret
        sub     sp, sp, #160
main:

        //178:x29,#-80

        //bb34:

bb34:

        sub     sp, sp, #160
        //  %r338 = add i32 0, 0

        mov     x16, #80
        sub     sp, sp, x16
        //  call void @_sysy_starttime(i32 97)

        mov     x0, #97
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
        //  %r339 = call i32 @getint()

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
        //  %r340 = add i32 0, 0

        //  %r341 = add i32 %r339, 0

        mov     x12, x9
        //  %r342 = call i32 @getint()

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
        //  %r343 = add i32 0, 0

        //  %r344 = add i32 %r342, 0

        mov     x16, x9
        add     x16, sp, #0
        str     x16, [x16]
        //  %r345 = call i32 @getint()

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
        //  %r346 = add i32 0, 0

        //  %r347 = add i32 %r345, 0

        mov     x17, x9
        add     x17, sp, #8
        str     x17, [x17]
        //  %r348 = call i32 @getint()

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
        //  %r349 = add i32 0, 0

        //  %r350 = add i32 %r348, 0

        mov     x18, x9
        add     x18, sp, #16
        str     x18, [x18]
        //  %r178 = alloca [ 10 x i32 ]

        //  %r351 = add i32 0, 0

        //  %r352 = add i32 0, 0

        mov     x9, #0
        mov     x19, x9
        add     x19, sp, #24
        str     x19, [x19]
        //  br label %bb35


        b     bb35
        //bb35:

bb35:

        //  %r353 = phi i32 [ %r352, %bb34 ], [ %r392, %bb36 ]

        //  %r354 = icmp slt i32 %r353, 10

        mov     x9, #10
        add     x16, sp, #24
        ldr     x16, [x16]
        cmp     x16, x9
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
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x11, x0
        //  %r184 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 %r353

        mov     x9, #8
        add     x17, sp, #24
        ldr     x17, [x17]
        mul     x10, x9, x17
        add     x9, x29, #-80
        add     x9, x9, x10
        //  store i32 %r390, i32* %r184

        str     x11, [x9]
        //  %r391 = add i32 %r353, 1

        mov     x9, #1
        add     x18, sp, #24
        ldr     x18, [x18]
        add     x9, x18, x9
        //  %r392 = add i32 %r391, 0

        mov     x9, x9
        mov     x19, x9
        //  br label %bb35


        b     bb35
        //bb37:

bb37:

        //  %r355 = call i32 @func7(i32 %r341)

        mov     x0, x12
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func7
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x10, x0
        //  %r356 = call i32 @func5(i32 %r344)

        add     x19, sp, #0
        ldr     x19, [x19]
        mov     x0, x19
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func5
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        //  %r357 = call i32 @func6(i32 %r355, i32 %r356)

        mov     x0, x10
        mov     x1, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func6
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        //  %r358 = call i32 @func2(i32 %r357, i32 %r347)

        mov     x0, x9
        add     x16, sp, #8
        ldr     x16, [x16]
        mov     x1, x16
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func2
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        //  %r359 = call i32 @func3(i32 %r358, i32 %r350)

        mov     x0, x9
        add     x17, sp, #16
        ldr     x17, [x17]
        mov     x1, x17
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func3
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        //  %r360 = call i32 @func5(i32 %r359)

        mov     x0, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func5
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x11, x0
        //  %r198 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 0

        mov     x10, #8
        mov     x9, #0
        mul     x10, x10, x9
        add     x9, x29, #-80
        add     x9, x9, x10
        //  %r199 = load i32, i32* %r198

        ldr     x18, [x9]
        add     x18, sp, #32
        str     x18, [x18]
        //  %r200 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 1

        mov     x10, #8
        mov     x9, #1
        mul     x10, x10, x9
        add     x9, x29, #-80
        add     x9, x9, x10
        //  %r201 = load i32, i32* %r200

        ldr     x9, [x9]
        //  %r361 = call i32 @func5(i32 %r201)

        mov     x0, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func5
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x10, x0
        //  %r203 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 2

        mov     x13, #8
        mov     x9, #2
        mul     x13, x13, x9
        add     x9, x29, #-80
        add     x9, x9, x13
        //  %r204 = load i32, i32* %r203

        ldr     x9, [x9]
        //  %r205 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 3

        mov     x14, #8
        mov     x13, #3
        mul     x14, x14, x13
        add     x13, x29, #-80
        add     x13, x13, x14
        //  %r206 = load i32, i32* %r205

        ldr     x13, [x13]
        //  %r362 = call i32 @func7(i32 %r206)

        mov     x0, x13
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func7
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x13, x0
        //  %r363 = call i32 @func6(i32 %r204, i32 %r362)

        mov     x0, x9
        mov     x1, x13
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func6
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        //  %r209 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 4

        mov     x14, #8
        mov     x13, #4
        mul     x14, x14, x13
        add     x13, x29, #-80
        add     x13, x13, x14
        //  %r210 = load i32, i32* %r209

        ldr     x13, [x13]
        //  %r211 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 5

        mov     x15, #8
        mov     x14, #5
        mul     x15, x15, x14
        add     x14, x29, #-80
        add     x14, x14, x15
        //  %r212 = load i32, i32* %r211

        ldr     x14, [x14]
        //  %r364 = call i32 @func7(i32 %r212)

        mov     x0, x14
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func7
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x14, x0
        //  %r365 = call i32 @func2(i32 %r210, i32 %r364)

        mov     x0, x13
        mov     x1, x14
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func2
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x13, x0
        //  %r366 = call i32 @func4(i32 %r361, i32 %r363, i32 %r365)

        mov     x0, x10
        mov     x1, x9
        mov     x2, x13
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func4
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x13, x0
        //  %r216 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 6

        mov     x10, #8
        mov     x9, #6
        mul     x9, x10, x9
        add     x19, x29, #-80
        add     x19, sp, #40
        str     x19, [x19]
        add     x9, x19, x9
        //  %r217 = load i32, i32* %r216

        ldr     x9, [x9]
        //  %r367 = call i32 @func3(i32 %r366, i32 %r217)

        mov     x0, x13
        mov     x1, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func3
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x10, x0
        //  %r219 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 7

        mov     x16, #8
        add     x16, sp, #48
        str     x16, [x16]
        mov     x17, #7
        add     x17, sp, #56
        str     x17, [x17]
        mul     x9, x16, x17
        add     x18, x29, #-80
        add     x18, sp, #64
        str     x18, [x18]
        add     x9, x18, x9
        //  %r220 = load i32, i32* %r219

        ldr     x9, [x9]
        //  %r368 = call i32 @func2(i32 %r367, i32 %r220)

        mov     x0, x10
        mov     x1, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func2
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x10, x0
        //  %r222 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 8

        mov     x19, #8
        add     x19, sp, #72
        str     x19, [x19]
        mov     x16, #8
        add     x16, sp, #80
        str     x16, [x16]
        mul     x17, x19, x16
        add     x17, sp, #88
        str     x17, [x17]
        add     x18, x29, #-80
        add     x18, sp, #96
        str     x18, [x18]
        add     x9, x18, x17
        //  %r223 = load i32, i32* %r222

        ldr     x19, [x9]
        add     x19, sp, #104
        str     x19, [x19]
        //  %r224 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 9

        mov     x16, #8
        add     x16, sp, #112
        str     x16, [x16]
        mov     x17, #9
        add     x17, sp, #120
        str     x17, [x17]
        mul     x18, x16, x17
        add     x18, sp, #128
        str     x18, [x18]
        add     x19, x29, #-80
        add     x19, sp, #136
        str     x19, [x19]
        add     x16, x19, x18
        add     x16, sp, #144
        str     x16, [x16]
        //  %r225 = load i32, i32* %r224

        add     x18, sp, #144
        ldr     x18, [x18]
        ldr     x17, [x18]
        add     x17, sp, #152
        str     x17, [x17]
        //  %r369 = call i32 @func7(i32 %r225)

        add     x19, sp, #152
        ldr     x19, [x19]
        mov     x0, x19
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func7
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        //  %r370 = call i32 @func3(i32 %r223, i32 %r369)

        add     x16, sp, #104
        ldr     x16, [x16]
        mov     x0, x16
        mov     x1, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func3
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        //  %r371 = call i32 @func1(i32 %r368, i32 %r370, i32 %r341)

        mov     x0, x10
        mov     x1, x9
        mov     x2, x12
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func1
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        //  %r372 = call i32 @func4(i32 %r360, i32 %r199, i32 %r371)

        mov     x0, x11
        add     x17, sp, #32
        ldr     x17, [x17]
        mov     x1, x17
        mov     x2, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func4
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        //  %r373 = call i32 @func7(i32 %r347)

        add     x18, sp, #8
        ldr     x18, [x18]
        mov     x0, x18
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func7
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x10, x0
        //  %r374 = call i32 @func3(i32 %r373, i32 %r350)

        mov     x0, x10
        add     x19, sp, #16
        ldr     x19, [x19]
        mov     x1, x19
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func3
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x10, x0
        //  %r375 = call i32 @func2(i32 %r344, i32 %r374)

        add     x16, sp, #0
        ldr     x16, [x16]
        mov     x0, x16
        mov     x1, x10
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func2
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x10, x0
        //  %r376 = call i32 @func3(i32 %r372, i32 %r375)

        mov     x0, x9
        mov     x1, x10
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func3
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        //  %r238 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 0

        mov     x10, #8
        mov     x11, #0
        mul     x10, x10, x11
        add     x11, x29, #-80
        add     x10, x11, x10
        //  %r239 = load i32, i32* %r238

        ldr     x10, [x10]
        //  %r240 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 1

        mov     x11, #8
        mov     x13, #1
        mul     x11, x11, x13
        add     x13, x29, #-80
        add     x11, x13, x11
        //  %r241 = load i32, i32* %r240

        ldr     x11, [x11]
        //  %r377 = call i32 @func1(i32 %r376, i32 %r239, i32 %r241)

        mov     x0, x9
        mov     x1, x10
        mov     x2, x11
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func1
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x11, x0
        //  %r243 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 2

        mov     x10, #8
        mov     x9, #2
        mul     x9, x10, x9
        add     x10, x29, #-80
        add     x9, x10, x9
        //  %r244 = load i32, i32* %r243

        ldr     x9, [x9]
        //  %r378 = call i32 @func2(i32 %r377, i32 %r244)

        mov     x0, x11
        mov     x1, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func2
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x10, x0
        //  %r246 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 3

        mov     x9, #8
        mov     x11, #3
        mul     x11, x9, x11
        add     x9, x29, #-80
        add     x9, x9, x11
        //  %r247 = load i32, i32* %r246

        ldr     x9, [x9]
        //  %r248 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 4

        mov     x11, #8
        mov     x13, #4
        mul     x11, x11, x13
        add     x13, x29, #-80
        add     x11, x13, x11
        //  %r249 = load i32, i32* %r248

        ldr     x13, [x11]
        //  %r250 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 5

        mov     x11, #8
        mov     x14, #5
        mul     x11, x11, x14
        add     x14, x29, #-80
        add     x11, x14, x11
        //  %r251 = load i32, i32* %r250

        ldr     x11, [x11]
        //  %r379 = call i32 @func5(i32 %r251)

        mov     x0, x11
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func5
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x11, x0
        //  %r380 = call i32 @func3(i32 %r249, i32 %r379)

        mov     x0, x13
        mov     x1, x11
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func3
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x11, x0
        //  %r254 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 6

        mov     x14, #8
        mov     x13, #6
        mul     x13, x14, x13
        add     x14, x29, #-80
        add     x13, x14, x13
        //  %r255 = load i32, i32* %r254

        ldr     x13, [x13]
        //  %r381 = call i32 @func5(i32 %r255)

        mov     x0, x13
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func5
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x13, x0
        //  %r382 = call i32 @func2(i32 %r380, i32 %r381)

        mov     x0, x11
        mov     x1, x13
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func2
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x11, x0
        //  %r258 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 7

        mov     x13, #8
        mov     x14, #7
        mul     x13, x13, x14
        add     x14, x29, #-80
        add     x13, x14, x13
        //  %r259 = load i32, i32* %r258

        ldr     x14, [x13]
        //  %r260 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 8

        mov     x13, #8
        mov     x15, #8
        mul     x13, x13, x15
        add     x15, x29, #-80
        add     x13, x15, x13
        //  %r261 = load i32, i32* %r260

        ldr     x13, [x13]
        //  %r383 = call i32 @func7(i32 %r261)

        mov     x0, x13
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func7
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x13, x0
        //  %r384 = call i32 @func1(i32 %r382, i32 %r259, i32 %r383)

        mov     x0, x11
        mov     x1, x14
        mov     x2, x13
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func1
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x11, x0
        //  %r264 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 9

        mov     x13, #8
        mov     x14, #9
        mul     x13, x13, x14
        add     x14, x29, #-80
        add     x13, x14, x13
        //  %r265 = load i32, i32* %r264

        ldr     x13, [x13]
        //  %r385 = call i32 @func5(i32 %r265)

        mov     x0, x13
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func5
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x13, x0
        //  %r386 = call i32 @func2(i32 %r384, i32 %r385)

        mov     x0, x11
        mov     x1, x13
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func2
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x11, x0
        //  %r387 = call i32 @func3(i32 %r386, i32 %r341)

        mov     x0, x11
        mov     x1, x12
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func3
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x11, x0
        //  %r388 = call i32 @func1(i32 %r378, i32 %r247, i32 %r387)

        mov     x0, x10
        mov     x1, x9
        mov     x2, x11
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func1
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        //  %r389 = add i32 %r388, 0

        mov     x9, x9
        //  call void @_sysy_stoptime(i32 117)

        mov     x0, #117
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
        //  ret i32 %r389

        mov     x0, x9
        mov     sp, x29
        ret
