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
.global main
main:

        //bb1:

bb1:

        //  %r296 = add i32 0, 0

        mov     x16, #0
        sub     sp, sp, x16
        //  %r297 = add i32 0, 0

        //  call void @_sysy_starttime(i32 4)

        mov     x0, #4
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
        //  %r298 = add i32 0, 0

        //  %r299 = add i32 0, 0

        //  %r300 = add i32 0, 0

        //  %r301 = add i32 0, 0

        //  %r302 = add i32 0, 0

        //  %r303 = add i32 0, 0

        //  %r304 = add i32 0, 0

        //  %r305 = add i32 0, 0

        //  %r306 = add i32 0, 0

        //  %r307 = add i32 0, 0

        //  %r308 = add i32 0, 0

        //  %r309 = add i32 0, 0

        //  %r310 = add i32 0, 0

        //  %r311 = add i32 0, 0

        //  %r312 = add i32 0, 0

        //  %r313 = add i32 0, 0

        //  %r314 = add i32 0, 0

        //  %r315 = add i32 0, 0

        //  %r316 = add i32 0, 0

        //  %r317 = add i32 0, 0

        //  %r318 = add i32 0, 0

        //  %r319 = add i32 0, 0

        //  %r320 = add i32 0, 0

        //  %r321 = add i32 0, 0

        //  %r322 = add i32 0, 0

        //  %r323 = add i32 0, 0

        //  %r324 = add i32 0, 0

        //  %r325 = add i32 0, 0

        //  %r326 = add i32 0, 0

        //  %r327 = add i32 0, 0

        //  %r328 = add i32 0, 0

        //  %r329 = call i32 @getint()

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
        //  %r330 = add i32 %r329, 0

        mov     x9, x9
        str     x16, [sp, #-8]!
        mov     x17, x9
        str     x17, [sp, #-8]!
        //  br label %bb2


        b     bb2
        //bb2:

bb2:

        //  %r331 = phi i32 [ %r330, %bb1 ], [ %r394, %bb3 ]

        //  %r332 = icmp eq i32 %r331, 5

        mov     x9, #5
        ldr     x18, [sp], #8
        cmp     x18, x9
        //  br i1 %r332, label %bb3, label %bb4


        b.eq     bb3
        b     bb4
        //bb3:

bb3:

        //  %r393 = add i32 %r331, 1

        mov     x9, #1
        ldr     x19, [sp], #8
        add     x9, x19, x9
        //  %r394 = add i32 %r393, 0

        mov     x9, x9
        mov     x17, x9
        //  br label %bb2


        b     bb2
        //bb4:

bb4:

        //  %r333 = add i32 0, 0

        str     x16, [sp, #-8]!
        mov     x17, #0
        str     x17, [sp, #-8]!
        //  %r334 = add i32 %r333, 1

        mov     x9, #1
        ldr     x18, [sp], #8
        add     x9, x18, x9
        //  %r335 = add i32 %r334, 0

        str     x19, [sp, #-8]!
        mov     x16, x9
        str     x16, [sp, #-8]!
        //  %r336 = add i32 %r335, 1

        mov     x9, #1
        ldr     x17, [sp], #8
        add     x9, x17, x9
        //  %r337 = add i32 %r336, 0

        str     x18, [sp, #-8]!
        mov     x19, x9
        str     x19, [sp, #-8]!
        //  %r338 = add i32 %r337, 1

        mov     x9, #1
        ldr     x16, [sp], #8
        add     x9, x16, x9
        //  %r339 = add i32 %r338, 0

        str     x17, [sp, #-8]!
        mov     x18, x9
        str     x18, [sp, #-8]!
        //  %r340 = add i32 %r339, 1

        mov     x9, #1
        ldr     x19, [sp], #8
        add     x9, x19, x9
        //  %r341 = add i32 %r340, 0

        str     x16, [sp, #-8]!
        mov     x17, x9
        str     x17, [sp, #-8]!
        //  %r342 = add i32 %r341, 1

        mov     x9, #1
        ldr     x18, [sp], #8
        add     x9, x18, x9
        //  %r343 = add i32 %r342, 0

        str     x19, [sp, #-8]!
        mov     x16, x9
        str     x16, [sp, #-8]!
        //  %r344 = add i32 %r343, 1

        mov     x9, #1
        ldr     x17, [sp], #8
        str     x18, [sp, #-8]!
        add     x19, x17, x9
        str     x19, [sp, #-8]!
        //  %r345 = add i32 %r344, 0

        str     x16, [sp, #-8]!
        ldr     x18, [sp], #8
        mov     x17, x18
        str     x17, [sp, #-8]!
        //  %r346 = add i32 %r345, 1

        mov     x9, #1
        ldr     x19, [sp], #8
        str     x16, [sp, #-8]!
        add     x17, x19, x9
        str     x17, [sp, #-8]!
        //  %r347 = add i32 %r346, 0

        str     x18, [sp, #-8]!
        ldr     x16, [sp], #8
        mov     x19, x16
        str     x19, [sp, #-8]!
        //  %r348 = add i32 %r347, 1

        mov     x9, #1
        ldr     x17, [sp], #8
        str     x18, [sp, #-8]!
        add     x19, x17, x9
        str     x19, [sp, #-8]!
        //  %r349 = add i32 %r348, 0

        str     x16, [sp, #-8]!
        ldr     x18, [sp], #8
        mov     x17, x18
        str     x17, [sp, #-8]!
        //  %r350 = add i32 %r349, 1

        mov     x9, #1
        ldr     x19, [sp], #8
        str     x16, [sp, #-8]!
        add     x17, x19, x9
        str     x17, [sp, #-8]!
        //  %r351 = add i32 %r350, 0

        str     x18, [sp, #-8]!
        ldr     x16, [sp], #8
        mov     x19, x16
        str     x19, [sp, #-8]!
        //  %r352 = add i32 %r351, 1

        mov     x9, #1
        ldr     x17, [sp], #8
        str     x18, [sp, #-8]!
        add     x19, x17, x9
        str     x19, [sp, #-8]!
        //  %r353 = add i32 %r352, 0

        str     x16, [sp, #-8]!
        ldr     x18, [sp], #8
        mov     x17, x18
        str     x17, [sp, #-8]!
        //  %r354 = add i32 %r353, 1

        mov     x9, #1
        ldr     x19, [sp], #8
        str     x16, [sp, #-8]!
        add     x17, x19, x9
        str     x17, [sp, #-8]!
        //  %r355 = add i32 %r354, 0

        str     x18, [sp, #-8]!
        ldr     x16, [sp], #8
        mov     x19, x16
        str     x19, [sp, #-8]!
        //  %r356 = add i32 %r355, 1

        mov     x9, #1
        ldr     x17, [sp], #8
        add     x9, x17, x9
        //  %r357 = add i32 %r356, 0

        str     x18, [sp, #-8]!
        mov     x19, x9
        str     x19, [sp, #-8]!
        //  %r358 = add i32 %r357, 1

        mov     x9, #1
        ldr     x16, [sp], #8
        add     x9, x16, x9
        //  %r359 = add i32 %r358, 0

        str     x17, [sp, #-8]!
        mov     x18, x9
        str     x18, [sp, #-8]!
        //  %r360 = add i32 %r359, 1

        mov     x9, #1
        ldr     x19, [sp], #8
        add     x9, x19, x9
        //  %r361 = add i32 %r360, 0

        str     x16, [sp, #-8]!
        mov     x17, x9
        str     x17, [sp, #-8]!
        //  %r362 = add i32 %r361, 1

        mov     x9, #1
        ldr     x18, [sp], #8
        add     x9, x18, x9
        //  %r363 = add i32 %r362, 0

        str     x19, [sp, #-8]!
        mov     x16, x9
        str     x16, [sp, #-8]!
        //  %r364 = add i32 %r363, 1

        mov     x9, #1
        ldr     x17, [sp], #8
        add     x9, x17, x9
        //  %r365 = add i32 %r364, 0

        str     x18, [sp, #-8]!
        mov     x19, x9
        str     x19, [sp, #-8]!
        //  %r366 = add i32 %r365, 1

        mov     x9, #1
        ldr     x16, [sp], #8
        add     x9, x16, x9
        //  %r367 = add i32 %r366, 0

        str     x17, [sp, #-8]!
        mov     x18, x9
        str     x18, [sp, #-8]!
        //  %r368 = add i32 %r367, 1

        mov     x9, #1
        ldr     x19, [sp], #8
        add     x9, x19, x9
        //  %r369 = add i32 %r368, 0

        str     x16, [sp, #-8]!
        mov     x17, x9
        str     x17, [sp, #-8]!
        //  %r370 = add i32 %r369, 1

        mov     x9, #1
        ldr     x18, [sp], #8
        add     x9, x18, x9
        //  %r371 = add i32 %r370, 0

        str     x19, [sp, #-8]!
        mov     x16, x9
        str     x16, [sp, #-8]!
        //  %r372 = add i32 %r371, 1

        mov     x9, #1
        ldr     x17, [sp], #8
        add     x9, x17, x9
        //  %r373 = add i32 %r372, 0

        str     x18, [sp, #-8]!
        mov     x19, x9
        str     x19, [sp, #-8]!
        //  %r374 = add i32 %r373, 1

        mov     x9, #1
        ldr     x16, [sp], #8
        add     x9, x16, x9
        //  %r375 = add i32 %r374, 0

        str     x17, [sp, #-8]!
        mov     x18, x9
        str     x18, [sp, #-8]!
        //  %r376 = add i32 %r375, 1

        mov     x9, #1
        ldr     x19, [sp], #8
        add     x9, x19, x9
        //  %r377 = add i32 %r376, 0

        str     x16, [sp, #-8]!
        mov     x17, x9
        str     x17, [sp, #-8]!
        //  %r378 = add i32 %r377, 1

        mov     x9, #1
        ldr     x18, [sp], #8
        add     x9, x18, x9
        //  %r379 = add i32 %r378, 0

        mov     x14, x9
        //  %r380 = add i32 %r379, 1

        mov     x9, #1
        add     x9, x14, x9
        //  %r381 = add i32 %r380, 0

        mov     x13, x9
        //  %r382 = add i32 %r381, 1

        mov     x9, #1
        add     x9, x13, x9
        //  %r383 = add i32 %r382, 0

        mov     x12, x9
        //  %r384 = add i32 %r383, 1

        mov     x9, #1
        add     x9, x12, x9
        //  %r385 = add i32 %r384, 0

        mov     x11, x9
        //  %r386 = add i32 %r385, 1

        str     x19, [sp, #-8]!
        mov     x16, #1
        str     x16, [sp, #-8]!
        add     x9, x11, x16
        //  %r387 = add i32 %r386, 0

        mov     x10, x9
        //  %r388 = add i32 %r387, 1

        str     x17, [sp, #-8]!
        mov     x18, #1
        str     x18, [sp, #-8]!
        add     x9, x10, x18
        //  %r389 = add i32 %r388, 0

        mov     x9, x9
        //  %r390 = add i32 %r389, 1

        str     x19, [sp, #-8]!
        mov     x16, #1
        str     x16, [sp, #-8]!
        add     x15, x9, x16
        //  %r391 = add i32 %r390, 0

        mov     x15, x15
        //  call void @putint(i32 %r333)

        ldr     x17, [sp], #8
        mov     x0, x17
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
        //  call void @putint(i32 %r335)

        ldr     x18, [sp], #8
        mov     x0, x18
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
        //  call void @putint(i32 %r337)

        ldr     x19, [sp], #8
        mov     x0, x19
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
        //  call void @putint(i32 %r339)

        ldr     x16, [sp], #8
        mov     x0, x16
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
        //  call void @putint(i32 %r341)

        ldr     x17, [sp], #8
        mov     x0, x17
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
        //  call void @putint(i32 %r343)

        ldr     x18, [sp], #8
        mov     x0, x18
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
        //  call void @putint(i32 %r345)

        ldr     x19, [sp], #8
        mov     x0, x19
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
        //  call void @putint(i32 %r347)

        ldr     x16, [sp], #8
        mov     x0, x16
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
        //  call void @putint(i32 %r349)

        ldr     x17, [sp], #8
        mov     x0, x17
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
        //  call void @putint(i32 %r351)

        ldr     x18, [sp], #8
        mov     x0, x18
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
        //  call void @putint(i32 %r353)

        ldr     x19, [sp], #8
        mov     x0, x19
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
        //  call void @putint(i32 %r355)

        ldr     x16, [sp], #8
        mov     x0, x16
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
        //  call void @putint(i32 %r357)

        ldr     x17, [sp], #8
        mov     x0, x17
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
        //  call void @putint(i32 %r359)

        ldr     x18, [sp], #8
        mov     x0, x18
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
        //  call void @putint(i32 %r361)

        ldr     x19, [sp], #8
        mov     x0, x19
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
        //  call void @putint(i32 %r363)

        ldr     x16, [sp], #8
        mov     x0, x16
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
        //  call void @putint(i32 %r365)

        ldr     x17, [sp], #8
        mov     x0, x17
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
        //  call void @putint(i32 %r367)

        ldr     x18, [sp], #8
        mov     x0, x18
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
        //  call void @putint(i32 %r369)

        ldr     x19, [sp], #8
        mov     x0, x19
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
        //  call void @putint(i32 %r371)

        ldr     x16, [sp], #8
        mov     x0, x16
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
        //  call void @putint(i32 %r373)

        ldr     x17, [sp], #8
        mov     x0, x17
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
        //  call void @putint(i32 %r375)

        ldr     x18, [sp], #8
        mov     x0, x18
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
        //  call void @putint(i32 %r377)

        ldr     x19, [sp], #8
        mov     x0, x19
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
        //  call void @putint(i32 %r379)

        mov     x0, x14
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
        //  call void @putint(i32 %r381)

        mov     x0, x13
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
        //  call void @putint(i32 %r383)

        mov     x0, x12
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
        //  call void @putint(i32 %r385)

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
        //  call void @putint(i32 %r387)

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
        //  call void @putint(i32 %r389)

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
        //  call void @putint(i32 %r391)

        mov     x0, x15
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
        //  %r392 = add i32 10, 0

        mov     x9, #10
        //  call void @putch(i32 %r392)

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
        //  call void @putint(i32 %r331)

        ldr     x16, [sp], #8
        mov     x0, x16
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
        //  call void @putch(i32 %r392)

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
        //  call void @_sysy_stoptime(i32 312)

        mov     x0, #9
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
        //  ret i32 %r383

        mov     x0, x12
        mov     sp, x29
        ret
