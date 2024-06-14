.section .data
.global    n
.global    m
.global    to
.global    next
.global    head
.global    cnt
.global    que
.global    h
.global    tail
.global    inq
n:
        .quad   0
m:
        .quad   0
to:
        .zero   40040
next:
        .zero   40040
head:
        .zero   8040
cnt:
        .quad   0
que:
        .zero   8040
h:
        .quad   0
tail:
        .quad   0
inq:
        .zero   8040
.section .text
.global getch
.global getint
.global putch
.global putint
.global putarray
.global _sysy_starttime
.global _sysy_stoptime
.global quickread
.global addedge
.global init
.global inqueue
.global popqueue
.global same
.global main
quickread:

        //bb1:

bb1:

        //  %r263 = call i32 @getch()

        mov     x16, #0
        sub     sp, sp, x16
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
        mov     x9, x0
        //  %r264 = add i32 0, 0

        //  %r265 = add i32 %r263, 0

        mov     x9, x9
        //  %r266 = add i32 0, 0

        //  %r267 = add i32 0, 0

        mov     x13, #0
        //  %r268 = add i32 0, 0

        //  %r269 = add i32 0, 0

        mov     x10, #0
        mov     x9, x9
        mov     x10, x10
        //  br label %bb2


        b     bb2
        //bb2:

bb2:

        //  %r270 = phi i32 [ %r265, %bb1 ], [ %r276, %bb8 ]

        //  %r271 = phi i32 [ %r269, %bb1 ], [ %r274, %bb8 ]

        //  %r272 = icmp slt i32 %r270, 48

        mov     x11, #48
        cmp     x9, x11
        //  br i1 %r272, label %bb3, label %bb5


        b.lt     bb3
        b     bb5
        //bb5:

bb5:

        //  %r278 = icmp sgt i32 %r270, 57

        mov     x11, #57
        cmp     x9, x11
        //  br i1 %r278, label %bb3, label %bb4


        b.gt     bb3
        b     bb4
        //bb3:

bb3:

        //  %r273 = icmp eq i32 %r270, 45

        mov     x11, #45
        cmp     x9, x11
        //  br i1 %r273, label %bb6, label %bb7


        b.eq     bb6
        b     bb7
        //bb6:

bb6:

        //  %r277 = add i32 1, 0

        mov     x9, #1
        mov     x10, x9
        //  br label %bb8


        b     bb8
        //bb7:

bb7:

        mov     x10, x10
        //  br label %bb8


        b     bb8
        //bb8:

bb8:

        //  %r274 = phi i32 [ %r277, %bb6 ], [ %r271, %bb7 ]

        //  %r275 = call i32 @getch()

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
        mov     x9, x0
        //  %r276 = add i32 %r275, 0

        mov     x9, x9
        mov     x9, x9
        mov     x10, x10
        //  br label %bb2


        b     bb2
        //bb4:

bb4:

        mov     x12, x9
        mov     x11, x13
        //  br label %bb9


        b     bb9
        //bb9:

bb9:

        //  %r279 = phi i32 [ %r270, %bb4 ], [ %r290, %bb10 ]

        //  %r280 = phi i32 [ %r267, %bb4 ], [ %r288, %bb10 ]

        //  %r281 = icmp sge i32 %r279, 48

        mov     x9, #48
        cmp     x12, x9
        //  br i1 %r281, label %bb12, label %bb11


        b.ge     bb12
        b     bb11
        //bb12:

bb12:

        //  %r284 = icmp sle i32 %r279, 57

        mov     x9, #57
        cmp     x12, x9
        //  br i1 %r284, label %bb10, label %bb11


        b.le     bb10
        b     bb11
        //bb10:

bb10:

        //  %r285 = mul i32 %r280, 10

        mov     x9, #10
        mul     x9, x11, x9
        //  %r286 = add i32 %r285, %r279

        add     x11, x9, x12
        //  %r287 = sub i32 %r286, 48

        mov     x9, #48
        sub     x9, x11, x9
        //  %r288 = add i32 %r287, 0

        mov     x11, x9
        //  %r289 = call i32 @getch()

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
        mov     x9, x0
        //  %r290 = add i32 %r289, 0

        mov     x9, x9
        mov     x12, x9
        mov     x11, x11
        //  br label %bb9


        b     bb9
        //bb11:

bb11:

        //  %r282 = icmp ne i32 %r271, 0

        mov     x9, #0
        cmp     x10, x9
        //  br i1 %r282, label %bb13, label %bb14


        b.ne     bb13
        b     bb14
        //bb13:

bb13:

        //  %r283 = sub i32 0, %r280

        mov     x9, #0
        sub     x9, x9, x11
        //  ret i32 %r283

        mov     x0, x9
        mov     sp, x29
        ret
        //bb14:

bb14:

        //  ret i32 %r280

        mov     x0, x11
        mov     sp, x29
        ret
addedge:

        //bb17:

bb17:

        //  %r293 = add i32 0, 0

        mov     x16, #0
        sub     sp, sp, x16
        mov     x10, x0
        mov     x9, x1
        //  %r294 = add i32 %r128, 0

        mov     x10, x10
        //  %r295 = add i32 0, 0

        //  %r296 = add i32 %r130, 0

        mov     x13, x9
        //  br label %bb16


        b     bb16
        //bb16:

bb16:

        //  %r133 = load i32, i32* @cnt

        adrp     x9, cnt
        add     x9, x9, #:lo12:cnt
        ldr     x11, x9
        //  %r134 = getelementptr [5005 x i32 ], [5005 x i32 ]* @to, i32 0, i32 %r133

        mov     x9, #8
        mul     x11, x9, x11
        adrp     x9, to
        add     x9, x9, #:lo12:to
        //  store i32 %r296, i32* %r134

        //  %r136 = getelementptr [1005 x i32 ], [1005 x i32 ]* @head, i32 0, i32 %r294

        mov     x9, #8
        mul     x11, x9, x10
        adrp     x9, head
        add     x9, x9, #:lo12:head
        add     x9, x9, x11
        //  %r137 = load i32, i32* %r136

        ldr     x12, x9
        //  %r138 = load i32, i32* @cnt

        adrp     x9, cnt
        add     x9, x9, #:lo12:cnt
        ldr     x11, x9
        //  %r139 = getelementptr [5005 x i32 ], [5005 x i32 ]* @next, i32 0, i32 %r138

        mov     x9, #8
        mul     x11, x9, x11
        adrp     x9, next
        add     x9, x9, #:lo12:next
        //  store i32 %r137, i32* %r139

        //  %r140 = load i32, i32* @cnt

        adrp     x9, cnt
        add     x9, x9, #:lo12:cnt
        ldr     x12, x9
        //  %r142 = getelementptr [1005 x i32 ], [1005 x i32 ]* @head, i32 0, i32 %r294

        mov     x9, #8
        mul     x11, x9, x10
        adrp     x9, head
        add     x9, x9, #:lo12:head
        //  store i32 %r140, i32* %r142

        //  %r143 = load i32, i32* @cnt

        adrp     x9, cnt
        add     x9, x9, #:lo12:cnt
        ldr     x11, x9
        //  %r297 = add i32 %r143, 1

        mov     x9, #1
        add     x9, x11, x9
        //  store i32 %r297, i32* @cnt

        //  %r146 = load i32, i32* @cnt

        adrp     x9, cnt
        add     x9, x9, #:lo12:cnt
        ldr     x9, x9
        //  %r147 = getelementptr [5005 x i32 ], [5005 x i32 ]* @to, i32 0, i32 %r146

        mov     x11, #8
        mul     x9, x11, x9
        adrp     x11, to
        add     x11, x11, #:lo12:to
        //  store i32 %r294, i32* %r147

        //  %r149 = getelementptr [1005 x i32 ], [1005 x i32 ]* @head, i32 0, i32 %r296

        mov     x9, #8
        mul     x9, x9, x13
        adrp     x10, head
        add     x10, x10, #:lo12:head
        add     x9, x10, x9
        //  %r150 = load i32, i32* %r149

        ldr     x11, x9
        //  %r151 = load i32, i32* @cnt

        adrp     x9, cnt
        add     x9, x9, #:lo12:cnt
        ldr     x10, x9
        //  %r152 = getelementptr [5005 x i32 ], [5005 x i32 ]* @next, i32 0, i32 %r151

        mov     x9, #8
        mul     x10, x9, x10
        adrp     x9, next
        add     x9, x9, #:lo12:next
        //  store i32 %r150, i32* %r152

        //  %r153 = load i32, i32* @cnt

        adrp     x9, cnt
        add     x9, x9, #:lo12:cnt
        ldr     x10, x9
        //  %r155 = getelementptr [1005 x i32 ], [1005 x i32 ]* @head, i32 0, i32 %r296

        mov     x9, #8
        mul     x11, x9, x13
        adrp     x9, head
        add     x9, x9, #:lo12:head
        //  store i32 %r153, i32* %r155

        //  %r156 = load i32, i32* @cnt

        adrp     x9, cnt
        add     x9, x9, #:lo12:cnt
        ldr     x9, x9
        //  %r298 = add i32 %r156, 1

        mov     x10, #1
        add     x9, x9, x10
        //  store i32 %r298, i32* @cnt

        //  ret void

        mov     sp, x29
        ret
init:

        //bb18:

bb18:

        //  %r300 = add i32 0, 0

        mov     x16, #0
        sub     sp, sp, x16
        //  %r301 = add i32 0, 0

        mov     x9, #0
        mov     x12, x9
        //  br label %bb19


        b     bb19
        //bb19:

bb19:

        //  %r302 = phi i32 [ %r301, %bb18 ], [ %r306, %bb20 ]

        //  %r303 = icmp slt i32 %r302, 1005

        mov     x9, #1005
        cmp     x12, x9
        //  br i1 %r303, label %bb20, label %bb21


        b.lt     bb20
        b     bb21
        //bb20:

bb20:

        //  %r304 = sub i32 0, 1

        mov     x9, #0
        mov     x10, #1
        sub     x10, x9, x10
        //  %r163 = getelementptr [1005 x i32 ], [1005 x i32 ]* @head, i32 0, i32 %r302

        mov     x9, #8
        mul     x11, x9, x12
        adrp     x9, head
        add     x9, x9, #:lo12:head
        //  store i32 %r304, i32* %r163

        //  %r305 = add i32 %r302, 1

        mov     x9, #1
        add     x9, x12, x9
        //  %r306 = add i32 %r305, 0

        mov     x9, x9
        mov     x12, x9
        //  br label %bb19


        b     bb19
        //bb21:

bb21:

        //  ret void

        mov     sp, x29
        ret
inqueue:

        //bb23:

bb23:

        //  %r308 = add i32 0, 0

        mov     x16, #0
        sub     sp, sp, x16
        mov     x9, x0
        //  %r309 = add i32 %r166, 0

        mov     x11, x9
        //  br label %bb22


        b     bb22
        //bb22:

bb22:

        //  %r169 = getelementptr [1005 x i32 ], [1005 x i32 ]* @inq, i32 0, i32 %r309

        mov     x9, #8
        mul     x10, x9, x11
        adrp     x9, inq
        add     x9, x9, #:lo12:inq
        //  store i32 1, i32* %r169

        mov     x9, #1
        //  %r170 = load i32, i32* @tail

        adrp     x9, tail
        add     x9, x9, #:lo12:tail
        ldr     x9, x9
        //  %r310 = add i32 %r170, 1

        mov     x10, #1
        add     x9, x9, x10
        //  store i32 %r310, i32* @tail

        //  %r173 = load i32, i32* @tail

        adrp     x9, tail
        add     x9, x9, #:lo12:tail
        ldr     x9, x9
        //  %r174 = getelementptr [1005 x i32 ], [1005 x i32 ]* @que, i32 0, i32 %r173

        mov     x10, #8
        mul     x9, x10, x9
        adrp     x10, que
        add     x10, x10, #:lo12:que
        //  store i32 %r309, i32* %r174

        //  ret void

        mov     sp, x29
        ret
popqueue:

        //bb24:

bb24:

        //  %r175 = load i32, i32* @h

        mov     x16, #0
        sub     sp, sp, x16
        adrp     x9, h
        add     x9, x9, #:lo12:h
        ldr     x10, x9
        //  %r312 = add i32 %r175, 1

        mov     x9, #1
        add     x9, x10, x9
        //  store i32 %r312, i32* @h

        //  %r178 = load i32, i32* @h

        adrp     x9, h
        add     x9, x9, #:lo12:h
        ldr     x9, x9
        //  %r179 = getelementptr [1005 x i32 ], [1005 x i32 ]* @que, i32 0, i32 %r178

        mov     x10, #8
        mul     x9, x10, x9
        adrp     x10, que
        add     x10, x10, #:lo12:que
        add     x9, x10, x9
        //  %r180 = load i32, i32* %r179

        ldr     x9, x9
        //  %r313 = add i32 0, 0

        //  %r314 = add i32 %r180, 0

        //  %r181 = load i32, i32* @h

        adrp     x9, h
        add     x9, x9, #:lo12:h
        ldr     x9, x9
        //  %r182 = getelementptr [1005 x i32 ], [1005 x i32 ]* @que, i32 0, i32 %r181

        mov     x10, #8
        mul     x9, x10, x9
        adrp     x10, que
        add     x10, x10, #:lo12:que
        add     x9, x10, x9
        //  %r183 = load i32, i32* %r182

        ldr     x9, x9
        //  ret i32 %r183

        mov     x0, x9
        mov     sp, x29
        ret
same:

        //bb26:

bb26:

        //  %r321 = add i32 0, 0

        mov     x16, #0
        sub     sp, sp, x16
        mov     x10, x0
        mov     x9, x1
        //  %r322 = add i32 0, 0

        //  %r323 = add i32 0, 0

        //  %r324 = add i32 0, 0

        //  %r325 = add i32 0, 0

        //  %r326 = add i32 %r184, 0

        mov     x10, x10
        //  %r327 = add i32 0, 0

        //  %r328 = add i32 %r186, 0

        mov     x13, x9
        //  br label %bb25


        b     bb25
        //bb25:

bb25:

        //  store i32 0, i32* @h

        mov     x9, #0
        //  store i32 0, i32* @tail

        mov     x9, #0
        //  call void @inqueue(i32 %r326)

        mov     x0, x10
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     inqueue
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        //  %r329 = add i32 0, 0

        mov     x9, #0
        //  %r330 = add i32 0, 0

        //  %r331 = add i32 0, 0

        //  %r332 = add i32 0, 0

        mov     x11, x9
        //  br label %bb27


        b     bb27
        //bb27:

bb27:

        //  %r333 = phi i32 [ %r329, %bb25 ], [ %r344, %bb35 ]

        //  %r194 = load i32, i32* @h

        adrp     x9, h
        add     x9, x9, #:lo12:h
        ldr     x10, x9
        //  %r195 = load i32, i32* @tail

        adrp     x9, tail
        add     x9, x9, #:lo12:tail
        ldr     x9, x9
        //  %r334 = icmp slt i32 %r194, %r195

        cmp     x10, x9
        //  br i1 %r334, label %bb28, label %bb29


        b.lt     bb28
        b     bb29
        //bb28:

bb28:

        //  %r341 = call i32 @popqueue()

        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     popqueue
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        //  %r342 = add i32 %r341, 0

        mov     x10, x9
        //  %r343 = icmp eq i32 %r342, %r328

        cmp     x10, x13
        //  br i1 %r343, label %bb30, label %bb31


        b.eq     bb30
        b     bb31
        //bb30:

bb30:

        //  %r352 = add i32 1, 0

        mov     x9, #1
        mov     x12, x9
        //  br label %bb32


        b     bb32
        //bb31:

bb31:

        mov     x12, x11
        //  br label %bb32


        b     bb32
        //bb32:

bb32:

        //  %r344 = phi i32 [ %r352, %bb30 ], [ %r333, %bb31 ]

        //  %r202 = getelementptr [1005 x i32 ], [1005 x i32 ]* @head, i32 0, i32 %r342

        mov     x9, #8
        mul     x10, x9, x10
        adrp     x9, head
        add     x9, x9, #:lo12:head
        add     x9, x9, x10
        //  %r203 = load i32, i32* %r202

        ldr     x9, x9
        //  %r345 = add i32 %r203, 0

        mov     x9, x9
        mov     x11, x9
        //  br label %bb33


        b     bb33
        //bb33:

bb33:

        //  %r346 = phi i32 [ %r345, %bb32 ], [ %r351, %bb38 ]

        //  %r347 = sub i32 0, 1

        mov     x9, #0
        mov     x10, #1
        sub     x9, x9, x10
        //  %r348 = icmp ne i32 %r346, %r347

        cmp     x11, x9
        //  br i1 %r348, label %bb34, label %bb35


        b.ne     bb34
        b     bb35
        //bb34:

bb34:

        //  %r208 = getelementptr [5005 x i32 ], [5005 x i32 ]* @to, i32 0, i32 %r346

        mov     x9, #8
        mul     x10, x9, x11
        adrp     x9, to
        add     x9, x9, #:lo12:to
        add     x9, x9, x10
        //  %r209 = load i32, i32* %r208

        ldr     x9, x9
        //  %r349 = add i32 %r209, 0

        mov     x9, x9
        //  %r211 = getelementptr [1005 x i32 ], [1005 x i32 ]* @inq, i32 0, i32 %r349

        mov     x10, #8
        mul     x10, x10, x9
        adrp     x9, inq
        add     x9, x9, #:lo12:inq
        add     x9, x9, x10
        //  %r212 = load i32, i32* %r211

        ldr     x9, x9
        //  %r350 = icmp eq i32 %r212, 0

        mov     x10, #0
        cmp     x9, x10
        //  br i1 %r350, label %bb36, label %bb37


        b.eq     bb36
        b     bb37
        //bb36:

bb36:

        //  %r215 = getelementptr [5005 x i32 ], [5005 x i32 ]* @to, i32 0, i32 %r346

        mov     x9, #8
        mul     x9, x9, x11
        adrp     x10, to
        add     x10, x10, #:lo12:to
        add     x9, x10, x9
        //  %r216 = load i32, i32* %r215

        ldr     x9, x9
        //  call void @inqueue(i32 %r216)

        mov     x0, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     inqueue
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        //  br label %bb38


        b     bb38
        //bb37:

bb37:

        //  br label %bb38


        b     bb38
        //bb38:

bb38:

        //  %r218 = getelementptr [5005 x i32 ], [5005 x i32 ]* @next, i32 0, i32 %r346

        mov     x9, #8
        mul     x9, x9, x11
        adrp     x10, next
        add     x10, x10, #:lo12:next
        add     x9, x10, x9
        //  %r219 = load i32, i32* %r218

        ldr     x9, x9
        //  %r351 = add i32 %r219, 0

        mov     x9, x9
        mov     x11, x9
        //  br label %bb33


        b     bb33
        //bb35:

bb35:

        mov     x11, x12
        //  br label %bb27


        b     bb27
        //bb29:

bb29:

        //  %r335 = add i32 0, 0

        mov     x9, #0
        mov     x10, x9
        //  br label %bb39


        b     bb39
        //bb39:

bb39:

        //  %r336 = phi i32 [ %r335, %bb29 ], [ %r340, %bb40 ]

        //  %r221 = load i32, i32* @tail

        adrp     x9, tail
        add     x9, x9, #:lo12:tail
        ldr     x9, x9
        //  %r337 = icmp sle i32 %r336, %r221

        cmp     x10, x9
        //  br i1 %r337, label %bb40, label %bb41


        b.le     bb40
        b     bb41
        //bb40:

bb40:

        //  %r224 = getelementptr [1005 x i32 ], [1005 x i32 ]* @que, i32 0, i32 %r336

        mov     x9, #8
        mul     x9, x9, x10
        adrp     x12, que
        add     x12, x12, #:lo12:que
        add     x9, x12, x9
        //  %r225 = load i32, i32* %r224

        ldr     x9, x9
        //  %r338 = add i32 %r225, 0

        mov     x9, x9
        //  %r227 = getelementptr [1005 x i32 ], [1005 x i32 ]* @inq, i32 0, i32 %r338

        mov     x12, #8
        mul     x9, x12, x9
        adrp     x12, inq
        add     x12, x12, #:lo12:inq
        //  store i32 0, i32* %r227

        mov     x9, #0
        //  %r339 = add i32 %r336, 1

        mov     x9, #1
        add     x9, x10, x9
        //  %r340 = add i32 %r339, 0

        mov     x9, x9
        mov     x10, x9
        //  br label %bb39


        b     bb39
        //bb41:

bb41:

        //  ret i32 %r333

        mov     x0, x11
        mov     sp, x29
        ret
main:

        //bb42:

bb42:

        //  %r356 = call i32 @quickread()

        mov     x16, #0
        sub     sp, sp, x16
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     quickread
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        //  store i32 %r356, i32* @n

        //  %r357 = call i32 @quickread()

        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     quickread
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        //  store i32 %r357, i32* @m

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
        //  call void @init()

        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     init
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        //  %r358 = add i32 0, 0

        //  %r359 = add i32 0, 0

        //  %r360 = add i32 0, 0

        //  %r361 = add i32 0, 0

        //  %r362 = add i32 0, 0

        //  %r363 = add i32 0, 0

        //  br label %bb43


        b     bb43
        //bb43:

bb43:

        //  %r236 = load i32, i32* @m

        adrp     x9, m
        add     x9, x9, #:lo12:m
        ldr     x10, x9
        //  %r364 = icmp ne i32 %r236, 0

        mov     x9, #0
        cmp     x10, x9
        //  br i1 %r364, label %bb44, label %bb45


        b.ne     bb44
        b     bb45
        //bb44:

bb44:

        //  %r365 = call i32 @getch()

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
        mov     x9, x0
        //  %r366 = add i32 %r365, 0

        mov     x9, x9
        mov     x10, x9
        //  br label %bb46


        b     bb46
        //bb46:

bb46:

        //  %r367 = phi i32 [ %r366, %bb44 ], [ %r382, %bb47 ]

        //  %r368 = icmp ne i32 %r367, 81

        mov     x9, #81
        cmp     x10, x9
        //  br i1 %r368, label %bb49, label %bb48


        b.ne     bb49
        b     bb48
        //bb49:

bb49:

        //  %r380 = icmp ne i32 %r367, 85

        mov     x9, #85
        cmp     x10, x9
        //  br i1 %r380, label %bb47, label %bb48


        b.ne     bb47
        b     bb48
        //bb47:

bb47:

        //  %r381 = call i32 @getch()

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
        mov     x9, x0
        //  %r382 = add i32 %r381, 0

        mov     x9, x9
        mov     x10, x9
        //  br label %bb46


        b     bb46
        //bb48:

bb48:

        //  %r369 = icmp eq i32 %r367, 81

        mov     x9, #81
        cmp     x10, x9
        //  br i1 %r369, label %bb50, label %bb51


        b.eq     bb50
        b     bb51
        //bb50:

bb50:

        //  %r375 = call i32 @quickread()

        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     quickread
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        //  %r376 = add i32 %r375, 0

        mov     x10, x9
        //  %r377 = call i32 @quickread()

        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     quickread
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        //  %r378 = add i32 %r377, 0

        mov     x9, x9
        //  %r379 = call i32 @same(i32 %r376, i32 %r378)

        mov     x0, x10
        mov     x1, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     same
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        //  call void @putint(i32 %r379)

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
        //  br label %bb52


        b     bb52
        //bb51:

bb51:

        //  %r371 = call i32 @quickread()

        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     quickread
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        //  %r372 = add i32 %r371, 0

        mov     x10, x9
        //  %r373 = call i32 @quickread()

        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     quickread
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        //  %r374 = add i32 %r373, 0

        mov     x9, x9
        //  call void @addedge(i32 %r372, i32 %r374)

        mov     x0, x10
        mov     x1, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     addedge
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        //  br label %bb52


        b     bb52
        //bb52:

bb52:

        //  %r258 = load i32, i32* @m

        adrp     x9, m
        add     x9, x9, #:lo12:m
        ldr     x9, x9
        //  %r370 = sub i32 %r258, 1

        mov     x10, #1
        sub     x9, x9, x10
        //  store i32 %r370, i32* @m

        //  br label %bb43


        b     bb43
        //bb45:

bb45:

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
        //  ret i32 0

        mov     x9, #0
        mov     x0, x9
        mov     sp, x29
        ret
