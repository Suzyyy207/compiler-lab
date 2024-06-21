.section .data
.global    n
.global    m
.global    to
.global    next
.global    head
.global    cnt
.global    vis
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
vis:
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
.global clear
.global same
.global main
        sub     sp, sp, #0
quickread:

        //bb1:

bb1:

        //  %r238 = call i32 @getch()

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
        //  %r239 = add i32 0, 0

        //  %r240 = add i32 %r238, 0

        mov     x10, x9
        //  %r241 = add i32 0, 0

        //  %r242 = add i32 0, 0

        mov     x9, #0
        //  %r243 = add i32 0, 0

        //  %r244 = add i32 0, 0

        mov     x11, #0
        mov     x10, x10
        mov     x11, x11
        //  br label %bb2


        b     bb2
        //bb2:

bb2:

        //  %r245 = phi i32 [ %r240, %bb1 ], [ %r251, %bb8 ]

        //  %r246 = phi i32 [ %r244, %bb1 ], [ %r249, %bb8 ]

        //  %r247 = icmp slt i32 %r245, 48

        mov     x12, #48
        cmp     x10, x12
        //  br i1 %r247, label %bb3, label %bb5


        b.lt     bb3
        b     bb5
        //bb5:

bb5:

        //  %r253 = icmp sgt i32 %r245, 57

        mov     x12, #57
        cmp     x10, x12
        //  br i1 %r253, label %bb3, label %bb4


        b.gt     bb3
        b     bb4
        //bb3:

bb3:

        //  %r248 = icmp eq i32 %r245, 45

        mov     x12, #45
        cmp     x10, x12
        //  br i1 %r248, label %bb6, label %bb7


        b.eq     bb6
        b     bb7
        //bb6:

bb6:

        //  %r252 = add i32 1, 0

        mov     x10, #1
        mov     x11, x10
        //  br label %bb8


        b     bb8
        //bb7:

bb7:

        mov     x11, x11
        //  br label %bb8


        b     bb8
        //bb8:

bb8:

        //  %r249 = phi i32 [ %r252, %bb6 ], [ %r246, %bb7 ]

        //  %r250 = call i32 @getch()

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
        mov     x10, x0
        //  %r251 = add i32 %r250, 0

        mov     x10, x10
        mov     x10, x10
        mov     x11, x11
        //  br label %bb2


        b     bb2
        //bb4:

bb4:

        mov     x9, x9
        mov     x12, x10
        //  br label %bb9


        b     bb9
        //bb9:

bb9:

        //  %r254 = phi i32 [ %r242, %bb4 ], [ %r263, %bb10 ]

        //  %r255 = phi i32 [ %r245, %bb4 ], [ %r265, %bb10 ]

        //  %r256 = icmp sge i32 %r255, 48

        mov     x10, #48
        cmp     x12, x10
        //  br i1 %r256, label %bb12, label %bb11


        b.ge     bb12
        b     bb11
        //bb12:

bb12:

        //  %r259 = icmp sle i32 %r255, 57

        mov     x10, #57
        cmp     x12, x10
        //  br i1 %r259, label %bb10, label %bb11


        b.le     bb10
        b     bb11
        //bb10:

bb10:

        //  %r260 = mul i32 %r254, 10

        mov     x10, #10
        mul     x9, x9, x10
        //  %r261 = add i32 %r260, %r255

        add     x9, x9, x12
        //  %r262 = sub i32 %r261, 48

        mov     x10, #48
        sub     x9, x9, x10
        //  %r263 = add i32 %r262, 0

        mov     x12, x9
        //  %r264 = call i32 @getch()

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
        //  %r265 = add i32 %r264, 0

        mov     x10, x9
        mov     x9, x12
        mov     x12, x10
        //  br label %bb9


        b     bb9
        //bb11:

bb11:

        //  %r257 = icmp ne i32 %r246, 0

        mov     x10, #0
        cmp     x11, x10
        //  br i1 %r257, label %bb13, label %bb14


        b.ne     bb13
        b     bb14
        //bb13:

bb13:

        //  %r258 = sub i32 0, %r254

        mov     x10, #0
        sub     x9, x10, x9
        //  ret i32 %r258

        mov     x0, x9
        mov     sp, x29
        ret
        //bb14:

bb14:

        //  ret i32 %r254

        mov     x0, x9
        mov     sp, x29
        ret
        sub     sp, sp, #0
addedge:

        //bb17:

bb17:

        //  %r268 = add i32 0, 0

        mov     x16, #0
        sub     sp, sp, x16
        mov     x9, x0
        mov     x10, x1
        //  %r269 = add i32 %r128, 0

        mov     x9, x9
        //  %r270 = add i32 0, 0

        //  %r271 = add i32 %r130, 0

        mov     x11, x10
        //  br label %bb16


        b     bb16
        //bb16:

bb16:

        //  %r133 = load i32, i32* @cnt

        adrp     x10, cnt
        add     x10, x10, #:lo12:cnt
        ldr     x12, [x10]
        //  %r134 = getelementptr [5005 x i32 ], [5005 x i32 ]* @to, i32 0, i32 %r133

        mov     x10, #8
        mul     x12, x10, x12
        adrp     x10, to
        add     x10, x10, #:lo12:to
        add     x10, x10, x12
        //  store i32 %r271, i32* %r134

        str     x11, [x10]
        //  %r136 = getelementptr [1005 x i32 ], [1005 x i32 ]* @head, i32 0, i32 %r269

        mov     x10, #8
        mul     x12, x10, x9
        adrp     x10, head
        add     x10, x10, #:lo12:head
        add     x10, x10, x12
        //  %r137 = load i32, i32* %r136

        ldr     x10, [x10]
        //  %r138 = load i32, i32* @cnt

        adrp     x12, cnt
        add     x12, x12, #:lo12:cnt
        ldr     x13, [x12]
        //  %r139 = getelementptr [5005 x i32 ], [5005 x i32 ]* @next, i32 0, i32 %r138

        mov     x12, #8
        mul     x13, x12, x13
        adrp     x12, next
        add     x12, x12, #:lo12:next
        add     x12, x12, x13
        //  store i32 %r137, i32* %r139

        str     x10, [x12]
        //  %r140 = load i32, i32* @cnt

        adrp     x10, cnt
        add     x10, x10, #:lo12:cnt
        ldr     x13, [x10]
        //  %r142 = getelementptr [1005 x i32 ], [1005 x i32 ]* @head, i32 0, i32 %r269

        mov     x10, #8
        mul     x12, x10, x9
        adrp     x10, head
        add     x10, x10, #:lo12:head
        add     x10, x10, x12
        //  store i32 %r140, i32* %r142

        str     x13, [x10]
        //  %r143 = load i32, i32* @cnt

        adrp     x10, cnt
        add     x10, x10, #:lo12:cnt
        ldr     x10, [x10]
        //  %r272 = add i32 %r143, 1

        mov     x12, #1
        add     x12, x10, x12
        //  store i32 %r272, i32* @cnt

        adrp     x10, cnt
        add     x10, x10, #:lo12:cnt
        str     x12, [x10]
        //  %r146 = load i32, i32* @cnt

        adrp     x10, cnt
        add     x10, x10, #:lo12:cnt
        ldr     x12, [x10]
        //  %r147 = getelementptr [5005 x i32 ], [5005 x i32 ]* @to, i32 0, i32 %r146

        mov     x10, #8
        mul     x10, x10, x12
        adrp     x12, to
        add     x12, x12, #:lo12:to
        add     x10, x12, x10
        //  store i32 %r269, i32* %r147

        str     x9, [x10]
        //  %r149 = getelementptr [1005 x i32 ], [1005 x i32 ]* @head, i32 0, i32 %r271

        mov     x9, #8
        mul     x9, x9, x11
        adrp     x10, head
        add     x10, x10, #:lo12:head
        add     x9, x10, x9
        //  %r150 = load i32, i32* %r149

        ldr     x12, [x9]
        //  %r151 = load i32, i32* @cnt

        adrp     x9, cnt
        add     x9, x9, #:lo12:cnt
        ldr     x10, [x9]
        //  %r152 = getelementptr [5005 x i32 ], [5005 x i32 ]* @next, i32 0, i32 %r151

        mov     x9, #8
        mul     x10, x9, x10
        adrp     x9, next
        add     x9, x9, #:lo12:next
        add     x9, x9, x10
        //  store i32 %r150, i32* %r152

        str     x12, [x9]
        //  %r153 = load i32, i32* @cnt

        adrp     x9, cnt
        add     x9, x9, #:lo12:cnt
        ldr     x12, [x9]
        //  %r155 = getelementptr [1005 x i32 ], [1005 x i32 ]* @head, i32 0, i32 %r271

        mov     x9, #8
        mul     x10, x9, x11
        adrp     x9, head
        add     x9, x9, #:lo12:head
        add     x9, x9, x10
        //  store i32 %r153, i32* %r155

        str     x12, [x9]
        //  %r156 = load i32, i32* @cnt

        adrp     x9, cnt
        add     x9, x9, #:lo12:cnt
        ldr     x10, [x9]
        //  %r273 = add i32 %r156, 1

        mov     x9, #1
        add     x9, x10, x9
        //  store i32 %r273, i32* @cnt

        adrp     x10, cnt
        add     x10, x10, #:lo12:cnt
        str     x9, [x10]
        //  ret void

        mov     sp, x29
        ret
        sub     sp, sp, #0
init:

        //bb18:

bb18:

        //  %r275 = add i32 0, 0

        mov     x16, #0
        sub     sp, sp, x16
        //  %r276 = add i32 0, 0

        mov     x9, #0
        mov     x9, x9
        //  br label %bb19


        b     bb19
        //bb19:

bb19:

        //  %r277 = phi i32 [ %r276, %bb18 ], [ %r281, %bb20 ]

        //  %r278 = icmp slt i32 %r277, 1005

        mov     x10, #1005
        cmp     x9, x10
        //  br i1 %r278, label %bb20, label %bb21


        b.lt     bb20
        b     bb21
        //bb20:

bb20:

        //  %r279 = sub i32 0, 1

        mov     x11, #0
        mov     x10, #1
        sub     x12, x11, x10
        //  %r163 = getelementptr [1005 x i32 ], [1005 x i32 ]* @head, i32 0, i32 %r277

        mov     x10, #8
        mul     x11, x10, x9
        adrp     x10, head
        add     x10, x10, #:lo12:head
        add     x10, x10, x11
        //  store i32 %r279, i32* %r163

        str     x12, [x10]
        //  %r280 = add i32 %r277, 1

        mov     x10, #1
        add     x9, x9, x10
        //  %r281 = add i32 %r280, 0

        mov     x9, x9
        mov     x9, x9
        //  br label %bb19


        b     bb19
        //bb21:

bb21:

        //  ret void

        mov     sp, x29
        ret
        sub     sp, sp, #0
clear:

        //bb22:

bb22:

        //  %r283 = add i32 0, 0

        mov     x16, #0
        sub     sp, sp, x16
        //  %r284 = add i32 1, 0

        mov     x9, #1
        mov     x10, x9
        //  br label %bb23


        b     bb23
        //bb23:

bb23:

        //  %r285 = phi i32 [ %r284, %bb22 ], [ %r288, %bb24 ]

        //  %r168 = load i32, i32* @n

        adrp     x9, n
        add     x9, x9, #:lo12:n
        ldr     x9, [x9]
        //  %r286 = icmp sle i32 %r285, %r168

        cmp     x10, x9
        //  br i1 %r286, label %bb24, label %bb25


        b.le     bb24
        b     bb25
        //bb24:

bb24:

        //  %r171 = getelementptr [1005 x i32 ], [1005 x i32 ]* @vis, i32 0, i32 %r285

        mov     x9, #8
        mul     x9, x9, x10
        adrp     x11, vis
        add     x11, x11, #:lo12:vis
        add     x9, x11, x9
        //  store i32 0, i32* %r171

        mov     x11, #0
        str     x11, [x9]
        //  %r287 = add i32 %r285, 1

        mov     x9, #1
        add     x9, x10, x9
        //  %r288 = add i32 %r287, 0

        mov     x9, x9
        mov     x10, x9
        //  br label %bb23


        b     bb23
        //bb25:

bb25:

        //  ret void

        mov     sp, x29
        ret
        sub     sp, sp, #0
same:

        //bb27:

bb27:

        //  %r293 = add i32 0, 0

        mov     x16, #0
        sub     sp, sp, x16
        mov     x9, x0
        mov     x10, x1
        //  %r294 = add i32 0, 0

        //  %r295 = add i32 0, 0

        //  %r296 = add i32 %r174, 0

        mov     x11, x9
        //  %r297 = add i32 0, 0

        //  %r298 = add i32 %r176, 0

        mov     x9, x10
        //  br label %bb26


        b     bb26
        //bb26:

bb26:

        //  %r179 = getelementptr [1005 x i32 ], [1005 x i32 ]* @vis, i32 0, i32 %r296

        mov     x10, #8
        mul     x10, x10, x11
        adrp     x12, vis
        add     x12, x12, #:lo12:vis
        add     x10, x12, x10
        //  store i32 1, i32* %r179

        mov     x12, #1
        str     x12, [x10]
        //  %r299 = icmp eq i32 %r296, %r298

        cmp     x11, x9
        //  br i1 %r299, label %bb28, label %bb29


        b.eq     bb28
        b     bb29
        //bb28:

bb28:

        //  ret i32 1

        mov     x9, #1
        mov     x0, x9
        mov     sp, x29
        ret
        //bb29:

bb29:

        //  br label %bb30


        b     bb30
        //bb30:

bb30:

        //  %r185 = getelementptr [1005 x i32 ], [1005 x i32 ]* @head, i32 0, i32 %r296

        mov     x10, #8
        mul     x10, x10, x11
        adrp     x11, head
        add     x11, x11, #:lo12:head
        add     x10, x11, x10
        //  %r186 = load i32, i32* %r185

        ldr     x10, [x10]
        //  %r300 = add i32 %r186, 0

        mov     x10, x10
        mov     x10, x10
        //  br label %bb31


        b     bb31
        //bb31:

bb31:

        //  %r301 = phi i32 [ %r300, %bb30 ], [ %r306, %bb36 ]

        //  %r302 = sub i32 0, 1

        mov     x11, #0
        mov     x12, #1
        sub     x11, x11, x12
        //  %r303 = icmp ne i32 %r301, %r302

        cmp     x10, x11
        //  br i1 %r303, label %bb32, label %bb33


        b.ne     bb32
        b     bb33
        //bb32:

bb32:

        //  %r192 = getelementptr [5005 x i32 ], [5005 x i32 ]* @to, i32 0, i32 %r301

        mov     x11, #8
        mul     x11, x11, x10
        adrp     x12, to
        add     x12, x12, #:lo12:to
        add     x11, x12, x11
        //  %r193 = load i32, i32* %r192

        ldr     x11, [x11]
        //  %r304 = add i32 %r193, 0

        mov     x11, x11
        //  %r196 = getelementptr [1005 x i32 ], [1005 x i32 ]* @vis, i32 0, i32 %r304

        mov     x12, #8
        mul     x12, x12, x11
        adrp     x13, vis
        add     x13, x13, #:lo12:vis
        add     x12, x13, x12
        //  %r197 = load i32, i32* %r196

        ldr     x13, [x12]
        //  %r305 = icmp eq i32 %r197, 0

        mov     x12, #0
        cmp     x13, x12
        //  br i1 %r305, label %bb37, label %bb35


        b.eq     bb37
        b     bb35
        //bb37:

bb37:

        //  %r307 = call i32 @same(i32 %r304, i32 %r298)

        mov     x0, x11
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
        mov     x11, x0
        //  %r308 = icmp ne i32 %r307, 0

        mov     x12, #0
        cmp     x11, x12
        //  br i1 %r308, label %bb34, label %bb35


        b.ne     bb34
        b     bb35
        //bb34:

bb34:

        //  ret i32 1

        mov     x9, #1
        mov     x0, x9
        mov     sp, x29
        ret
        //bb35:

bb35:

        //  br label %bb36


        b     bb36
        //bb36:

bb36:

        //  %r204 = getelementptr [5005 x i32 ], [5005 x i32 ]* @next, i32 0, i32 %r301

        mov     x11, #8
        mul     x11, x11, x10
        adrp     x10, next
        add     x10, x10, #:lo12:next
        add     x10, x10, x11
        //  %r205 = load i32, i32* %r204

        ldr     x10, [x10]
        //  %r306 = add i32 %r205, 0

        mov     x10, x10
        mov     x10, x10
        //  br label %bb31


        b     bb31
        //bb33:

bb33:

        //  ret i32 0

        mov     x9, #0
        mov     x0, x9
        mov     sp, x29
        ret
        sub     sp, sp, #0
main:

        //bb38:

bb38:

        //  call void @_sysy_starttime(i32 74)

        mov     x16, #0
        sub     sp, sp, x16
        mov     x0, #74
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
        //  %r312 = call i32 @quickread()

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
        mov     x10, x0
        //  store i32 %r312, i32* @n

        adrp     x9, n
        add     x9, x9, #:lo12:n
        str     x10, [x9]
        //  %r313 = call i32 @quickread()

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
        mov     x10, x0
        //  store i32 %r313, i32* @m

        adrp     x9, m
        add     x9, x9, #:lo12:m
        str     x10, [x9]
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
        //  %r314 = add i32 0, 0

        //  %r315 = add i32 0, 0

        //  %r316 = add i32 0, 0

        //  %r317 = add i32 0, 0

        //  %r318 = add i32 0, 0

        //  %r319 = add i32 0, 0

        //  br label %bb39


        b     bb39
        //bb39:

bb39:

        //  %r211 = load i32, i32* @m

        adrp     x9, m
        add     x9, x9, #:lo12:m
        ldr     x10, [x9]
        //  %r320 = icmp ne i32 %r211, 0

        mov     x9, #0
        cmp     x10, x9
        //  br i1 %r320, label %bb40, label %bb41


        b.ne     bb40
        b     bb41
        //bb40:

bb40:

        //  %r321 = call i32 @getch()

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
        //  %r322 = add i32 %r321, 0

        mov     x9, x9
        mov     x9, x9
        //  br label %bb42


        b     bb42
        //bb42:

bb42:

        //  %r323 = phi i32 [ %r322, %bb40 ], [ %r338, %bb43 ]

        //  %r324 = icmp ne i32 %r323, 81

        mov     x10, #81
        cmp     x9, x10
        //  br i1 %r324, label %bb45, label %bb44


        b.ne     bb45
        b     bb44
        //bb45:

bb45:

        //  %r336 = icmp ne i32 %r323, 85

        mov     x10, #85
        cmp     x9, x10
        //  br i1 %r336, label %bb43, label %bb44


        b.ne     bb43
        b     bb44
        //bb43:

bb43:

        //  %r337 = call i32 @getch()

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
        //  %r338 = add i32 %r337, 0

        mov     x9, x9
        mov     x9, x9
        //  br label %bb42


        b     bb42
        //bb44:

bb44:

        //  %r325 = icmp eq i32 %r323, 81

        mov     x10, #81
        cmp     x9, x10
        //  br i1 %r325, label %bb46, label %bb47


        b.eq     bb46
        b     bb47
        //bb46:

bb46:

        //  %r331 = call i32 @quickread()

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
        //  %r332 = add i32 %r331, 0

        mov     x10, x9
        //  %r333 = call i32 @quickread()

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
        //  %r334 = add i32 %r333, 0

        mov     x9, x9
        //  call void @clear()

        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     clear
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        //  %r335 = call i32 @same(i32 %r332, i32 %r334)

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
        //  call void @putint(i32 %r335)

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
        //  br label %bb48


        b     bb48
        //bb47:

bb47:

        //  %r327 = call i32 @quickread()

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
        //  %r328 = add i32 %r327, 0

        mov     x10, x9
        //  %r329 = call i32 @quickread()

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
        //  %r330 = add i32 %r329, 0

        mov     x9, x9
        //  call void @addedge(i32 %r328, i32 %r330)

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
        //  br label %bb48


        b     bb48
        //bb48:

bb48:

        //  %r233 = load i32, i32* @m

        adrp     x9, m
        add     x9, x9, #:lo12:m
        ldr     x9, [x9]
        //  %r326 = sub i32 %r233, 1

        mov     x10, #1
        sub     x9, x9, x10
        //  store i32 %r326, i32* @m

        adrp     x10, m
        add     x10, x10, #:lo12:m
        str     x9, [x10]
        //  br label %bb39


        b     bb39
        //bb41:

bb41:

        //  call void @_sysy_stoptime(i32 96)

        mov     x0, #96
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
