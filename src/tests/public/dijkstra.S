.section .data
.global    INF
.global    e
.global    book
.global    dis
.global    n
.global    m
.global    v1
.global    v2
.global    w
INF:
        .quad   65535
e:
        .zero   2048
book:
        .zero   128
dis:
        .zero   128
n:
        .quad   0
m:
        .quad   0
v1:
        .quad   0
v2:
        .quad   0
w:
        .quad   0
.section .text
.global getch
.global getint
.global putch
.global putint
.global putarray
.global _sysy_starttime
.global _sysy_stoptime
.global Dijkstra
.global main
Dijkstra:

        //bb1:

bb1:

        //  %r243 = add i32 0, 0

        mov     x16, #0
        sub     sp, sp, x16
        //  %r244 = add i32 0, 0

        //  %r245 = add i32 0, 0

        //  %r246 = add i32 0, 0

        //  %r247 = add i32 0, 0

        //  %r248 = add i32 1, 0

        mov     x9, #1
        mov     x9, x9
        //  br label %bb2


        b     bb2
        //bb2:

bb2:

        //  %r249 = phi i32 [ %r248, %bb1 ], [ %r282, %bb3 ]

        //  %r102 = load i32, i32* @n

        adrp     x10, n
        add     x10, x10, #:lo12:n
        ldr     x10, [x10]
        //  %r250 = icmp sle i32 %r249, %r102

        cmp     x9, x10
        //  br i1 %r250, label %bb3, label %bb4


        b.le     bb3
        b     bb4
        //bb3:

bb3:

        //  %r105 = getelementptr [16 x %array2D ], [16 x %array2D ]* @e, i32 0, i32 1

        mov     x11, #128
        mov     x10, #1
        mul     x11, x11, x10
        adrp     x10, e
        add     x10, x10, #:lo12:e
        add     x12, x10, x11
        //  %r106 = getelementptr %array2D, %array2D* %r105, i32 0, i32 0

        mov     x11, #128
        mov     x10, #0
        mul     x10, x11, x10
        add     x10, x12, x10
        //  %r107 = getelementptr [16 x i32 ], [16 x i32 ]* %r106, i32 0, i32 %r249

        mov     x11, #8
        mul     x11, x11, x9
        add     x10, x10, x11
        //  %r108 = load i32, i32* %r107

        ldr     x11, [x10]
        //  %r110 = getelementptr [16 x i32 ], [16 x i32 ]* @dis, i32 0, i32 %r249

        mov     x10, #8
        mul     x12, x10, x9
        adrp     x10, dis
        add     x10, x10, #:lo12:dis
        add     x10, x10, x12
        //  store i32 %r108, i32* %r110

        str     x11, [x10]
        //  %r112 = getelementptr [16 x i32 ], [16 x i32 ]* @book, i32 0, i32 %r249

        mov     x10, #8
        mul     x11, x10, x9
        adrp     x10, book
        add     x10, x10, #:lo12:book
        add     x11, x10, x11
        //  store i32 0, i32* %r112

        mov     x10, #0
        str     x10, [x11]
        //  %r281 = add i32 %r249, 1

        mov     x10, #1
        add     x9, x9, x10
        //  %r282 = add i32 %r281, 0

        mov     x9, x9
        mov     x9, x9
        //  br label %bb2


        b     bb2
        //bb4:

bb4:

        //  %r115 = getelementptr [16 x i32 ], [16 x i32 ]* @book, i32 0, i32 1

        mov     x10, #8
        mov     x9, #1
        mul     x10, x10, x9
        adrp     x9, book
        add     x9, x9, #:lo12:book
        add     x10, x9, x10
        //  store i32 1, i32* %r115

        mov     x9, #1
        str     x9, [x10]
        //  %r251 = add i32 1, 0

        mov     x9, #1
        mov     x11, x9
        //  br label %bb5


        b     bb5
        //bb5:

bb5:

        //  %r252 = phi i32 [ %r251, %bb4 ], [ %r266, %bb17 ]

        //  %r117 = load i32, i32* @n

        adrp     x9, n
        add     x9, x9, #:lo12:n
        ldr     x10, [x9]
        //  %r253 = sub i32 %r117, 1

        mov     x9, #1
        sub     x9, x10, x9
        //  %r254 = icmp sle i32 %r252, %r253

        cmp     x11, x9
        //  br i1 %r254, label %bb6, label %bb7


        b.le     bb6
        b     bb7
        //bb6:

bb6:

        //  %r121 = load i32, i32* @INF

        adrp     x9, INF
        add     x9, x9, #:lo12:INF
        ldr     x9, [x9]
        //  %r255 = add i32 %r121, 0

        mov     x12, x9
        //  %r256 = add i32 0, 0

        mov     x9, #0
        //  %r257 = add i32 1, 0

        mov     x10, #1
        mov     x10, x10
        mov     x13, x9
        mov     x12, x12
        //  br label %bb8


        b     bb8
        //bb8:

bb8:

        //  %r258 = phi i32 [ %r257, %bb6 ], [ %r277, %bb13 ]

        //  %r259 = phi i32 [ %r256, %bb6 ], [ %r274, %bb13 ]

        //  %r260 = phi i32 [ %r255, %bb6 ], [ %r275, %bb13 ]

        //  %r125 = load i32, i32* @n

        adrp     x9, n
        add     x9, x9, #:lo12:n
        ldr     x9, [x9]
        //  %r261 = icmp sle i32 %r258, %r125

        cmp     x10, x9
        //  br i1 %r261, label %bb9, label %bb10


        b.le     bb9
        b     bb10
        //bb9:

bb9:

        //  %r130 = getelementptr [16 x i32 ], [16 x i32 ]* @dis, i32 0, i32 %r258

        mov     x9, #8
        mul     x14, x9, x10
        adrp     x9, dis
        add     x9, x9, #:lo12:dis
        add     x9, x9, x14
        //  %r131 = load i32, i32* %r130

        ldr     x9, [x9]
        //  %r273 = icmp sgt i32 %r260, %r131

        cmp     x12, x9
        //  br i1 %r273, label %bb14, label %bb12


        b.gt     bb14
        b     bb12
        //bb14:

bb14:

        //  %r134 = getelementptr [16 x i32 ], [16 x i32 ]* @book, i32 0, i32 %r258

        mov     x9, #8
        mul     x14, x9, x10
        adrp     x9, book
        add     x9, x9, #:lo12:book
        add     x9, x9, x14
        //  %r135 = load i32, i32* %r134

        ldr     x14, [x9]
        //  %r278 = icmp eq i32 %r135, 0

        mov     x9, #0
        cmp     x14, x9
        //  br i1 %r278, label %bb11, label %bb12


        b.eq     bb11
        b     bb12
        //bb11:

bb11:

        //  %r138 = getelementptr [16 x i32 ], [16 x i32 ]* @dis, i32 0, i32 %r258

        mov     x9, #8
        mul     x12, x9, x10
        adrp     x9, dis
        add     x9, x9, #:lo12:dis
        add     x9, x9, x12
        //  %r139 = load i32, i32* %r138

        ldr     x9, [x9]
        //  %r279 = add i32 %r139, 0

        mov     x12, x9
        //  %r280 = add i32 %r258, 0

        mov     x9, x10
        mov     x9, x9
        mov     x12, x12
        //  br label %bb13


        b     bb13
        //bb12:

bb12:

        mov     x9, x13
        mov     x12, x12
        //  br label %bb13


        b     bb13
        //bb13:

bb13:

        //  %r274 = phi i32 [ %r280, %bb11 ], [ %r259, %bb12 ]

        //  %r275 = phi i32 [ %r279, %bb11 ], [ %r260, %bb12 ]

        //  %r276 = add i32 %r258, 1

        mov     x13, #1
        add     x10, x10, x13
        //  %r277 = add i32 %r276, 0

        mov     x10, x10
        mov     x10, x10
        mov     x13, x9
        mov     x12, x12
        //  br label %bb8


        b     bb8
        //bb10:

bb10:

        //  %r144 = getelementptr [16 x i32 ], [16 x i32 ]* @book, i32 0, i32 %r259

        mov     x9, #8
        mul     x9, x9, x13
        adrp     x10, book
        add     x10, x10, #:lo12:book
        add     x9, x10, x9
        //  store i32 1, i32* %r144

        mov     x10, #1
        str     x10, [x9]
        //  %r262 = add i32 1, 0

        mov     x9, #1
        mov     x14, x9
        //  br label %bb15


        b     bb15
        //bb15:

bb15:

        //  %r263 = phi i32 [ %r262, %bb10 ], [ %r269, %bb20 ]

        //  %r147 = load i32, i32* @n

        adrp     x9, n
        add     x9, x9, #:lo12:n
        ldr     x9, [x9]
        //  %r264 = icmp sle i32 %r263, %r147

        cmp     x14, x9
        //  br i1 %r264, label %bb16, label %bb17


        b.le     bb16
        b     bb17
        //bb16:

bb16:

        //  %r151 = getelementptr [16 x %array2D ], [16 x %array2D ]* @e, i32 0, i32 %r259

        mov     x9, #128
        mul     x9, x9, x13
        adrp     x10, e
        add     x10, x10, #:lo12:e
        add     x10, x10, x9
        //  %r152 = getelementptr %array2D, %array2D* %r151, i32 0, i32 0

        mov     x9, #128
        mov     x12, #0
        mul     x9, x9, x12
        add     x10, x10, x9
        //  %r153 = getelementptr [16 x i32 ], [16 x i32 ]* %r152, i32 0, i32 %r263

        mov     x9, #8
        mul     x9, x9, x14
        add     x9, x10, x9
        //  %r154 = load i32, i32* %r153

        ldr     x10, [x9]
        //  %r155 = load i32, i32* @INF

        adrp     x9, INF
        add     x9, x9, #:lo12:INF
        ldr     x9, [x9]
        //  %r267 = icmp slt i32 %r154, %r155

        cmp     x10, x9
        //  br i1 %r267, label %bb18, label %bb19


        b.lt     bb18
        b     bb19
        //bb18:

bb18:

        //  %r158 = getelementptr [16 x i32 ], [16 x i32 ]* @dis, i32 0, i32 %r263

        mov     x9, #8
        mul     x9, x9, x14
        adrp     x10, dis
        add     x10, x10, #:lo12:dis
        add     x9, x10, x9
        //  %r159 = load i32, i32* %r158

        ldr     x12, [x9]
        //  %r161 = getelementptr [16 x i32 ], [16 x i32 ]* @dis, i32 0, i32 %r259

        mov     x9, #8
        mul     x9, x9, x13
        adrp     x10, dis
        add     x10, x10, #:lo12:dis
        add     x9, x10, x9
        //  %r162 = load i32, i32* %r161

        ldr     x9, [x9]
        //  %r165 = getelementptr [16 x %array2D ], [16 x %array2D ]* @e, i32 0, i32 %r259

        mov     x10, #128
        mul     x10, x10, x13
        adrp     x15, e
        add     x15, x15, #:lo12:e
        add     x10, x15, x10
        //  %r166 = getelementptr %array2D, %array2D* %r165, i32 0, i32 0

        mov     x15, #128
        str     x16, [sp, #-8]!
        mov     x17, #0
        str     x17, [sp, #-8]!
        mul     x15, x15, x17
        add     x10, x10, x15
        //  %r167 = getelementptr [16 x i32 ], [16 x i32 ]* %r166, i32 0, i32 %r263

        mov     x15, #8
        mul     x15, x15, x14
        add     x10, x10, x15
        //  %r168 = load i32, i32* %r167

        ldr     x10, [x10]
        //  %r270 = add i32 %r162, %r168

        add     x9, x9, x10
        //  %r271 = icmp sgt i32 %r159, %r270

        cmp     x12, x9
        //  br i1 %r271, label %bb21, label %bb22


        b.gt     bb21
        b     bb22
        //bb21:

bb21:

        //  %r172 = getelementptr [16 x i32 ], [16 x i32 ]* @dis, i32 0, i32 %r259

        mov     x9, #8
        mul     x10, x9, x13
        adrp     x9, dis
        add     x9, x9, #:lo12:dis
        add     x9, x9, x10
        //  %r173 = load i32, i32* %r172

        ldr     x9, [x9]
        //  %r176 = getelementptr [16 x %array2D ], [16 x %array2D ]* @e, i32 0, i32 %r259

        mov     x10, #128
        mul     x10, x10, x13
        adrp     x12, e
        add     x12, x12, #:lo12:e
        add     x15, x12, x10
        //  %r177 = getelementptr %array2D, %array2D* %r176, i32 0, i32 0

        mov     x10, #128
        mov     x12, #0
        mul     x10, x10, x12
        add     x12, x15, x10
        //  %r178 = getelementptr [16 x i32 ], [16 x i32 ]* %r177, i32 0, i32 %r263

        mov     x10, #8
        mul     x10, x10, x14
        add     x10, x12, x10
        //  %r179 = load i32, i32* %r178

        ldr     x10, [x10]
        //  %r272 = add i32 %r173, %r179

        add     x9, x9, x10
        //  %r182 = getelementptr [16 x i32 ], [16 x i32 ]* @dis, i32 0, i32 %r263

        mov     x10, #8
        mul     x10, x10, x14
        adrp     x12, dis
        add     x12, x12, #:lo12:dis
        add     x10, x12, x10
        //  store i32 %r272, i32* %r182

        str     x9, [x10]
        //  br label %bb23


        b     bb23
        //bb22:

bb22:

        //  br label %bb23


        b     bb23
        //bb23:

bb23:

        //  br label %bb20


        b     bb20
        //bb19:

bb19:

        //  br label %bb20


        b     bb20
        //bb20:

bb20:

        //  %r268 = add i32 %r263, 1

        mov     x9, #1
        add     x9, x14, x9
        //  %r269 = add i32 %r268, 0

        mov     x9, x9
        mov     x14, x9
        //  br label %bb15


        b     bb15
        //bb17:

bb17:

        //  %r265 = add i32 %r252, 1

        mov     x9, #1
        add     x9, x11, x9
        //  %r266 = add i32 %r265, 0

        mov     x9, x9
        mov     x11, x9
        //  br label %bb5


        b     bb5
        //bb7:

bb7:

        //  ret void

        mov     sp, x29
        ret
main:

        //bb24:

bb24:

        //  %r287 = add i32 0, 0

        mov     x16, #0
        sub     sp, sp, x16
        //  %r288 = add i32 0, 0

        //  %r289 = add i32 0, 0

        //  call void @_sysy_starttime(i32 53)

        mov     x0, #53
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
        //  %r290 = add i32 0, 0

        //  %r291 = call i32 @getint()

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
        mov     x10, x0
        //  store i32 %r291, i32* @n

        adrp     x9, n
        add     x9, x9, #:lo12:n
        str     x10, [x9]
        //  %r292 = call i32 @getint()

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
        mov     x10, x0
        //  store i32 %r292, i32* @m

        adrp     x9, m
        add     x9, x9, #:lo12:m
        str     x10, [x9]
        //  %r293 = add i32 1, 0

        mov     x9, #1
        mov     x9, x9
        //  br label %bb25


        b     bb25
        //bb25:

bb25:

        //  %r294 = phi i32 [ %r293, %bb24 ], [ %r315, %bb30 ]

        //  %r191 = load i32, i32* @n

        adrp     x10, n
        add     x10, x10, #:lo12:n
        ldr     x10, [x10]
        //  %r295 = icmp sle i32 %r294, %r191

        cmp     x9, x10
        //  br i1 %r295, label %bb26, label %bb27


        b.le     bb26
        b     bb27
        //bb26:

bb26:

        //  %r311 = add i32 1, 0

        mov     x10, #1
        mov     x11, x10
        //  br label %bb28


        b     bb28
        //bb28:

bb28:

        //  %r312 = phi i32 [ %r311, %bb26 ], [ %r318, %bb33 ]

        //  %r195 = load i32, i32* @n

        adrp     x10, n
        add     x10, x10, #:lo12:n
        ldr     x10, [x10]
        //  %r313 = icmp sle i32 %r312, %r195

        cmp     x11, x10
        //  br i1 %r313, label %bb29, label %bb30


        b.le     bb29
        b     bb30
        //bb29:

bb29:

        //  %r316 = icmp eq i32 %r294, %r312

        cmp     x9, x11
        //  br i1 %r316, label %bb31, label %bb32


        b.eq     bb31
        b     bb32
        //bb31:

bb31:

        //  %r202 = getelementptr [16 x %array2D ], [16 x %array2D ]* @e, i32 0, i32 %r294

        mov     x10, #128
        mul     x12, x10, x9
        adrp     x10, e
        add     x10, x10, #:lo12:e
        add     x12, x10, x12
        //  %r203 = getelementptr %array2D, %array2D* %r202, i32 0, i32 0

        mov     x10, #128
        mov     x13, #0
        mul     x10, x10, x13
        add     x10, x12, x10
        //  %r204 = getelementptr [16 x i32 ], [16 x i32 ]* %r203, i32 0, i32 %r312

        mov     x12, #8
        mul     x12, x12, x11
        add     x12, x10, x12
        //  store i32 0, i32* %r204

        mov     x10, #0
        str     x10, [x12]
        //  br label %bb33


        b     bb33
        //bb32:

bb32:

        //  %r205 = load i32, i32* @INF

        adrp     x10, INF
        add     x10, x10, #:lo12:INF
        ldr     x12, [x10]
        //  %r208 = getelementptr [16 x %array2D ], [16 x %array2D ]* @e, i32 0, i32 %r294

        mov     x10, #128
        mul     x10, x10, x9
        adrp     x13, e
        add     x13, x13, #:lo12:e
        add     x13, x13, x10
        //  %r209 = getelementptr %array2D, %array2D* %r208, i32 0, i32 0

        mov     x14, #128
        mov     x10, #0
        mul     x10, x14, x10
        add     x10, x13, x10
        //  %r210 = getelementptr [16 x i32 ], [16 x i32 ]* %r209, i32 0, i32 %r312

        mov     x13, #8
        mul     x13, x13, x11
        add     x10, x10, x13
        //  store i32 %r205, i32* %r210

        str     x12, [x10]
        //  br label %bb33


        b     bb33
        //bb33:

bb33:

        //  %r317 = add i32 %r312, 1

        mov     x10, #1
        add     x10, x11, x10
        //  %r318 = add i32 %r317, 0

        mov     x10, x10
        mov     x11, x10
        //  br label %bb28


        b     bb28
        //bb30:

bb30:

        //  %r314 = add i32 %r294, 1

        mov     x10, #1
        add     x9, x9, x10
        //  %r315 = add i32 %r314, 0

        mov     x9, x9
        mov     x9, x9
        //  br label %bb25


        b     bb25
        //bb27:

bb27:

        //  %r296 = add i32 1, 0

        mov     x9, #1
        mov     x9, x9
        //  br label %bb34


        b     bb34
        //bb34:

bb34:

        //  %r297 = phi i32 [ %r296, %bb27 ], [ %r310, %bb35 ]

        //  %r216 = load i32, i32* @m

        adrp     x10, m
        add     x10, x10, #:lo12:m
        ldr     x10, [x10]
        //  %r298 = icmp sle i32 %r297, %r216

        cmp     x9, x10
        //  br i1 %r298, label %bb35, label %bb36


        b.le     bb35
        b     bb36
        //bb35:

bb35:

        //  %r304 = call i32 @getint()

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
        mov     x10, x0
        //  %r305 = add i32 %r304, 0

        mov     x12, x10
        //  %r306 = call i32 @getint()

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
        mov     x10, x0
        //  %r307 = add i32 %r306, 0

        mov     x11, x10
        //  %r308 = call i32 @getint()

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
        mov     x10, x0
        //  %r225 = getelementptr [16 x %array2D ], [16 x %array2D ]* @e, i32 0, i32 %r305

        mov     x13, #128
        mul     x12, x13, x12
        adrp     x13, e
        add     x13, x13, #:lo12:e
        add     x13, x13, x12
        //  %r226 = getelementptr %array2D, %array2D* %r225, i32 0, i32 0

        mov     x14, #128
        mov     x12, #0
        mul     x12, x14, x12
        add     x13, x13, x12
        //  %r227 = getelementptr [16 x i32 ], [16 x i32 ]* %r226, i32 0, i32 %r307

        mov     x12, #8
        mul     x11, x12, x11
        add     x11, x13, x11
        //  store i32 %r308, i32* %r227

        str     x10, [x11]
        //  %r309 = add i32 %r297, 1

        mov     x10, #1
        add     x9, x9, x10
        //  %r310 = add i32 %r309, 0

        mov     x9, x9
        mov     x9, x9
        //  br label %bb34


        b     bb34
        //bb36:

bb36:

        //  call void @Dijkstra()

        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     Dijkstra
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        //  %r299 = add i32 1, 0

        mov     x9, #1
        mov     x9, x9
        //  br label %bb37


        b     bb37
        //bb37:

bb37:

        //  %r300 = phi i32 [ %r299, %bb36 ], [ %r303, %bb38 ]

        //  %r231 = load i32, i32* @n

        adrp     x10, n
        add     x10, x10, #:lo12:n
        ldr     x10, [x10]
        //  %r301 = icmp sle i32 %r300, %r231

        cmp     x9, x10
        //  br i1 %r301, label %bb38, label %bb39


        b.le     bb38
        b     bb39
        //bb38:

bb38:

        //  %r234 = getelementptr [16 x i32 ], [16 x i32 ]* @dis, i32 0, i32 %r300

        mov     x10, #8
        mul     x11, x10, x9
        adrp     x10, dis
        add     x10, x10, #:lo12:dis
        add     x10, x10, x11
        //  %r235 = load i32, i32* %r234

        ldr     x10, [x10]
        //  call void @putint(i32 %r235)

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
        //  call void @putch(i32 32)

        mov     x0, #32
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
        //  %r302 = add i32 %r300, 1

        mov     x10, #1
        add     x9, x9, x10
        //  %r303 = add i32 %r302, 0

        mov     x9, x9
        mov     x9, x9
        //  br label %bb37


        b     bb37
        //bb39:

bb39:

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
        //  call void @_sysy_stoptime(i32 91)

        mov     x0, #91
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
