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

        sub     sp, sp, #0
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     getch
        stp     x29, x30, [sp, #16]!
        str     x7, [sp, #-8]!
        stp     x14, x15, [sp, #16]!
        stp     x12, x13, [sp, #16]!
        stp     x10, x11, [sp, #16]!
        mov     x263, x0
        //  %r264 = add i32 0, 0

        mov     x264, #0
        //  %r265 = add i32 %r263, 0

        mov     x265, x263
        //  %r266 = add i32 0, 0

        mov     x266, #0
        //  %r267 = add i32 0, 0

        mov     x267, #0
        //  %r268 = add i32 0, 0

        mov     x268, #0
        //  %r269 = add i32 0, 0

        mov     x269, #0
        //  br label %bb2


        b     bb2
        mov     x271, x269
        mov     x270, x265
        //bb2:

bb2:

        //  %r270 = phi i32 [ %r265, %bb1 ], [ %r276, %bb8 ]

        //  %r271 = phi i32 [ %r269, %bb1 ], [ %r274, %bb8 ]

        //  %r272 = icmp slt i32 %r270, 48

        mov     x383, #48
        cmp     x270, x383
        //  br i1 %r272, label %bb3, label %bb5


        b.lt     bb3
        b     bb5
        //bb5:

bb5:

        //  %r278 = icmp sgt i32 %r270, 57

        mov     x384, #57
        cmp     x270, x384
        //  br i1 %r278, label %bb3, label %bb4


        b.gt     bb3
        b     bb4
        //bb3:

bb3:

        //  %r273 = icmp eq i32 %r270, 45

        mov     x385, #45
        cmp     x270, x385
        //  br i1 %r273, label %bb6, label %bb7


        b.eq     bb6
        b     bb7
        //bb6:

bb6:

        //  %r277 = add i32 1, 0

        mov     x277, #1
        //  br label %bb8


        b     bb8
        mov     x274, x277
        //bb7:

bb7:

        //  br label %bb8


        b     bb8
        mov     x274, x271
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
        stp     x29, x30, [sp, #16]!
        str     x7, [sp, #-8]!
        stp     x14, x15, [sp, #16]!
        stp     x12, x13, [sp, #16]!
        stp     x10, x11, [sp, #16]!
        mov     x275, x0
        //  %r276 = add i32 %r275, 0

        mov     x276, x275
        //  br label %bb2


        b     bb2
        mov     x271, x274
        mov     x270, x276
        //bb4:

bb4:

        //  br label %bb9


        b     bb9
        mov     x280, x267
        mov     x279, x270
        //bb9:

bb9:

        //  %r279 = phi i32 [ %r270, %bb4 ], [ %r290, %bb10 ]

        //  %r280 = phi i32 [ %r267, %bb4 ], [ %r288, %bb10 ]

        //  %r281 = icmp sge i32 %r279, 48

        mov     x386, #48
        cmp     x279, x386
        //  br i1 %r281, label %bb12, label %bb11


        b.ge     bb12
        b     bb11
        //bb12:

bb12:

        //  %r284 = icmp sle i32 %r279, 57

        mov     x387, #57
        cmp     x279, x387
        //  br i1 %r284, label %bb10, label %bb11


        b.le     bb10
        b     bb11
        //bb10:

bb10:

        //  %r285 = mul i32 %r280, 10

        mul     x285, x280, #10
        //  %r286 = add i32 %r285, %r279

        add     x286, x285, x279
        //  %r287 = sub i32 %r286, 48

        sub     x287, x286, #48
        //  %r288 = add i32 %r287, 0

        mov     x288, x287
        //  %r289 = call i32 @getch()

        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     getch
        stp     x29, x30, [sp, #16]!
        str     x7, [sp, #-8]!
        stp     x14, x15, [sp, #16]!
        stp     x12, x13, [sp, #16]!
        stp     x10, x11, [sp, #16]!
        mov     x289, x0
        //  %r290 = add i32 %r289, 0

        mov     x290, x289
        //  br label %bb9


        b     bb9
        mov     x280, x288
        mov     x279, x290
        //bb11:

bb11:

        //  %r282 = icmp ne i32 %r271, 0

        mov     x388, #0
        cmp     x271, x388
        //  br i1 %r282, label %bb13, label %bb14


        b.ne     bb13
        b     bb14
        //bb13:

bb13:

        //  %r283 = sub i32 0, %r280

        sub     x283, #0, x280
        //  ret i32 %r283

        mov     x0, x283
        mov     sp, x29
        ret
        //bb14:

bb14:

        //  ret i32 %r280

        mov     x0, x280
        mov     sp, x29
        ret
addedge:

        //bb17:

bb17:

        //  %r293 = add i32 0, 0

        sub     sp, sp, #0
        mov     x128, x0
        mov     x130, x1
        mov     x293, #0
        //  %r294 = add i32 %r128, 0

        mov     x294, x128
        //  %r295 = add i32 0, 0

        mov     x295, #0
        //  %r296 = add i32 %r130, 0

        mov     x296, x130
        //  br label %bb16


        b     bb16
        //bb16:

bb16:

        //  %r133 = load i32, i32* @cnt

        adrp     x389, cnt
        add     x389, x389, #:lo12:cnt
        ldr     x133, x389
        //  %r134 = getelementptr [5005 x i32 ], [5005 x i32 ]* @to, i32 0, i32 %r133

        mov     x390, #8
        mul     x391, x390, x133
        adrp     x392, to
        add     x392, x392, #:lo12:to
        add     x134, x392, x391
        //  store i32 %r296, i32* %r134

        mov     x134, x296
        //  %r136 = getelementptr [1005 x i32 ], [1005 x i32 ]* @head, i32 0, i32 %r294

        mov     x393, #8
        mul     x394, x393, x294
        adrp     x395, head
        add     x395, x395, #:lo12:head
        add     x136, x395, x394
        //  %r137 = load i32, i32* %r136

        ldr     x137, x136
        //  %r138 = load i32, i32* @cnt

        adrp     x396, cnt
        add     x396, x396, #:lo12:cnt
        ldr     x138, x396
        //  %r139 = getelementptr [5005 x i32 ], [5005 x i32 ]* @next, i32 0, i32 %r138

        mov     x397, #8
        mul     x398, x397, x138
        adrp     x399, next
        add     x399, x399, #:lo12:next
        add     x139, x399, x398
        //  store i32 %r137, i32* %r139

        mov     x139, x137
        //  %r140 = load i32, i32* @cnt

        adrp     x400, cnt
        add     x400, x400, #:lo12:cnt
        ldr     x140, x400
        //  %r142 = getelementptr [1005 x i32 ], [1005 x i32 ]* @head, i32 0, i32 %r294

        mov     x401, #8
        mul     x402, x401, x294
        adrp     x403, head
        add     x403, x403, #:lo12:head
        add     x142, x403, x402
        //  store i32 %r140, i32* %r142

        mov     x142, x140
        //  %r143 = load i32, i32* @cnt

        adrp     x404, cnt
        add     x404, x404, #:lo12:cnt
        ldr     x143, x404
        //  %r297 = add i32 %r143, 1

        add     x297, x143, #1
        //  store i32 %r297, i32* @cnt

        adrp     x405, cnt
        add     x405, x405, #:lo12:cnt
        mov     x405, x297
        //  %r146 = load i32, i32* @cnt

        adrp     x406, cnt
        add     x406, x406, #:lo12:cnt
        ldr     x146, x406
        //  %r147 = getelementptr [5005 x i32 ], [5005 x i32 ]* @to, i32 0, i32 %r146

        mov     x407, #8
        mul     x408, x407, x146
        adrp     x409, to
        add     x409, x409, #:lo12:to
        add     x147, x409, x408
        //  store i32 %r294, i32* %r147

        mov     x147, x294
        //  %r149 = getelementptr [1005 x i32 ], [1005 x i32 ]* @head, i32 0, i32 %r296

        mov     x410, #8
        mul     x411, x410, x296
        adrp     x412, head
        add     x412, x412, #:lo12:head
        add     x149, x412, x411
        //  %r150 = load i32, i32* %r149

        ldr     x150, x149
        //  %r151 = load i32, i32* @cnt

        adrp     x413, cnt
        add     x413, x413, #:lo12:cnt
        ldr     x151, x413
        //  %r152 = getelementptr [5005 x i32 ], [5005 x i32 ]* @next, i32 0, i32 %r151

        mov     x414, #8
        mul     x415, x414, x151
        adrp     x416, next
        add     x416, x416, #:lo12:next
        add     x152, x416, x415
        //  store i32 %r150, i32* %r152

        mov     x152, x150
        //  %r153 = load i32, i32* @cnt

        adrp     x417, cnt
        add     x417, x417, #:lo12:cnt
        ldr     x153, x417
        //  %r155 = getelementptr [1005 x i32 ], [1005 x i32 ]* @head, i32 0, i32 %r296

        mov     x418, #8
        mul     x419, x418, x296
        adrp     x420, head
        add     x420, x420, #:lo12:head
        add     x155, x420, x419
        //  store i32 %r153, i32* %r155

        mov     x155, x153
        //  %r156 = load i32, i32* @cnt

        adrp     x421, cnt
        add     x421, x421, #:lo12:cnt
        ldr     x156, x421
        //  %r298 = add i32 %r156, 1

        add     x298, x156, #1
        //  store i32 %r298, i32* @cnt

        adrp     x422, cnt
        add     x422, x422, #:lo12:cnt
        mov     x422, x298
        //  ret void

        mov     sp, x29
        ret
init:

        //bb18:

bb18:

        //  %r300 = add i32 0, 0

        sub     sp, sp, #0
        mov     x300, #0
        //  %r301 = add i32 0, 0

        mov     x301, #0
        //  br label %bb19


        b     bb19
        mov     x302, x301
        //bb19:

bb19:

        //  %r302 = phi i32 [ %r301, %bb18 ], [ %r306, %bb20 ]

        //  %r303 = icmp slt i32 %r302, 1005

        mov     x423, #1005
        cmp     x302, x423
        //  br i1 %r303, label %bb20, label %bb21


        b.lt     bb20
        b     bb21
        //bb20:

bb20:

        //  %r304 = sub i32 0, 1

        sub     x304, #0, #1
        //  %r163 = getelementptr [1005 x i32 ], [1005 x i32 ]* @head, i32 0, i32 %r302

        mov     x424, #8
        mul     x425, x424, x302
        adrp     x426, head
        add     x426, x426, #:lo12:head
        add     x163, x426, x425
        //  store i32 %r304, i32* %r163

        mov     x163, x304
        //  %r305 = add i32 %r302, 1

        add     x305, x302, #1
        //  %r306 = add i32 %r305, 0

        mov     x306, x305
        //  br label %bb19


        b     bb19
        mov     x302, x306
        //bb21:

bb21:

        //  ret void

        mov     sp, x29
        ret
inqueue:

        //bb23:

bb23:

        //  %r308 = add i32 0, 0

        sub     sp, sp, #0
        mov     x166, x0
        mov     x308, #0
        //  %r309 = add i32 %r166, 0

        mov     x309, x166
        //  br label %bb22


        b     bb22
        //bb22:

bb22:

        //  %r169 = getelementptr [1005 x i32 ], [1005 x i32 ]* @inq, i32 0, i32 %r309

        mov     x427, #8
        mul     x428, x427, x309
        adrp     x429, inq
        add     x429, x429, #:lo12:inq
        add     x169, x429, x428
        //  store i32 1, i32* %r169

        mov     x430, #1
        mov     x169, x430
        //  %r170 = load i32, i32* @tail

        adrp     x431, tail
        add     x431, x431, #:lo12:tail
        ldr     x170, x431
        //  %r310 = add i32 %r170, 1

        add     x310, x170, #1
        //  store i32 %r310, i32* @tail

        adrp     x432, tail
        add     x432, x432, #:lo12:tail
        mov     x432, x310
        //  %r173 = load i32, i32* @tail

        adrp     x433, tail
        add     x433, x433, #:lo12:tail
        ldr     x173, x433
        //  %r174 = getelementptr [1005 x i32 ], [1005 x i32 ]* @que, i32 0, i32 %r173

        mov     x434, #8
        mul     x435, x434, x173
        adrp     x436, que
        add     x436, x436, #:lo12:que
        add     x174, x436, x435
        //  store i32 %r309, i32* %r174

        mov     x174, x309
        //  ret void

        mov     sp, x29
        ret
popqueue:

        //bb24:

bb24:

        //  %r175 = load i32, i32* @h

        sub     sp, sp, #0
        adrp     x437, h
        add     x437, x437, #:lo12:h
        ldr     x175, x437
        //  %r312 = add i32 %r175, 1

        add     x312, x175, #1
        //  store i32 %r312, i32* @h

        adrp     x438, h
        add     x438, x438, #:lo12:h
        mov     x438, x312
        //  %r178 = load i32, i32* @h

        adrp     x439, h
        add     x439, x439, #:lo12:h
        ldr     x178, x439
        //  %r179 = getelementptr [1005 x i32 ], [1005 x i32 ]* @que, i32 0, i32 %r178

        mov     x440, #8
        mul     x441, x440, x178
        adrp     x442, que
        add     x442, x442, #:lo12:que
        add     x179, x442, x441
        //  %r180 = load i32, i32* %r179

        ldr     x180, x179
        //  %r313 = add i32 0, 0

        mov     x313, #0
        //  %r314 = add i32 %r180, 0

        mov     x314, x180
        //  %r181 = load i32, i32* @h

        adrp     x443, h
        add     x443, x443, #:lo12:h
        ldr     x181, x443
        //  %r182 = getelementptr [1005 x i32 ], [1005 x i32 ]* @que, i32 0, i32 %r181

        mov     x444, #8
        mul     x445, x444, x181
        adrp     x446, que
        add     x446, x446, #:lo12:que
        add     x182, x446, x445
        //  %r183 = load i32, i32* %r182

        ldr     x183, x182
        //  ret i32 %r183

        mov     x0, x183
        mov     sp, x29
        ret
same:

        //bb26:

bb26:

        //  %r321 = add i32 0, 0

        sub     sp, sp, #0
        mov     x184, x0
        mov     x186, x1
        mov     x321, #0
        //  %r322 = add i32 0, 0

        mov     x322, #0
        //  %r323 = add i32 0, 0

        mov     x323, #0
        //  %r324 = add i32 0, 0

        mov     x324, #0
        //  %r325 = add i32 0, 0

        mov     x325, #0
        //  %r326 = add i32 %r184, 0

        mov     x326, x184
        //  %r327 = add i32 0, 0

        mov     x327, #0
        //  %r328 = add i32 %r186, 0

        mov     x328, x186
        //  br label %bb25


        b     bb25
        //bb25:

bb25:

        //  store i32 0, i32* @h

        mov     x447, #0
        adrp     x448, h
        add     x448, x448, #:lo12:h
        mov     x448, x447
        //  store i32 0, i32* @tail

        mov     x449, #0
        adrp     x450, tail
        add     x450, x450, #:lo12:tail
        mov     x450, x449
        //  call void @inqueue(i32 %r326)

        mov     x0, x326
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     inqueue
        stp     x29, x30, [sp, #16]!
        str     x7, [sp, #-8]!
        stp     x14, x15, [sp, #16]!
        stp     x12, x13, [sp, #16]!
        stp     x10, x11, [sp, #16]!
        //  %r329 = add i32 0, 0

        mov     x329, #0
        //  %r330 = add i32 0, 0

        mov     x330, #0
        //  %r331 = add i32 0, 0

        mov     x331, #0
        //  %r332 = add i32 0, 0

        mov     x332, #0
        //  br label %bb27


        b     bb27
        mov     x333, x329
        //bb27:

bb27:

        //  %r333 = phi i32 [ %r329, %bb25 ], [ %r344, %bb35 ]

        //  %r194 = load i32, i32* @h

        adrp     x451, h
        add     x451, x451, #:lo12:h
        ldr     x194, x451
        //  %r195 = load i32, i32* @tail

        adrp     x452, tail
        add     x452, x452, #:lo12:tail
        ldr     x195, x452
        //  %r334 = icmp slt i32 %r194, %r195

        cmp     x194, x195
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
        stp     x29, x30, [sp, #16]!
        str     x7, [sp, #-8]!
        stp     x14, x15, [sp, #16]!
        stp     x12, x13, [sp, #16]!
        stp     x10, x11, [sp, #16]!
        mov     x341, x0
        //  %r342 = add i32 %r341, 0

        mov     x342, x341
        //  %r343 = icmp eq i32 %r342, %r328

        cmp     x342, x328
        //  br i1 %r343, label %bb30, label %bb31


        b.eq     bb30
        b     bb31
        //bb30:

bb30:

        //  %r352 = add i32 1, 0

        mov     x352, #1
        //  br label %bb32


        b     bb32
        mov     x344, x352
        //bb31:

bb31:

        //  br label %bb32


        b     bb32
        mov     x344, x333
        //bb32:

bb32:

        //  %r344 = phi i32 [ %r352, %bb30 ], [ %r333, %bb31 ]

        //  %r202 = getelementptr [1005 x i32 ], [1005 x i32 ]* @head, i32 0, i32 %r342

        mov     x453, #8
        mul     x454, x453, x342
        adrp     x455, head
        add     x455, x455, #:lo12:head
        add     x202, x455, x454
        //  %r203 = load i32, i32* %r202

        ldr     x203, x202
        //  %r345 = add i32 %r203, 0

        mov     x345, x203
        //  br label %bb33


        b     bb33
        mov     x346, x345
        //bb33:

bb33:

        //  %r346 = phi i32 [ %r345, %bb32 ], [ %r351, %bb38 ]

        //  %r347 = sub i32 0, 1

        sub     x347, #0, #1
        //  %r348 = icmp ne i32 %r346, %r347

        cmp     x346, x347
        //  br i1 %r348, label %bb34, label %bb35


        b.ne     bb34
        b     bb35
        //bb34:

bb34:

        //  %r208 = getelementptr [5005 x i32 ], [5005 x i32 ]* @to, i32 0, i32 %r346

        mov     x456, #8
        mul     x457, x456, x346
        adrp     x458, to
        add     x458, x458, #:lo12:to
        add     x208, x458, x457
        //  %r209 = load i32, i32* %r208

        ldr     x209, x208
        //  %r349 = add i32 %r209, 0

        mov     x349, x209
        //  %r211 = getelementptr [1005 x i32 ], [1005 x i32 ]* @inq, i32 0, i32 %r349

        mov     x459, #8
        mul     x460, x459, x349
        adrp     x461, inq
        add     x461, x461, #:lo12:inq
        add     x211, x461, x460
        //  %r212 = load i32, i32* %r211

        ldr     x212, x211
        //  %r350 = icmp eq i32 %r212, 0

        mov     x462, #0
        cmp     x212, x462
        //  br i1 %r350, label %bb36, label %bb37


        b.eq     bb36
        b     bb37
        //bb36:

bb36:

        //  %r215 = getelementptr [5005 x i32 ], [5005 x i32 ]* @to, i32 0, i32 %r346

        mov     x463, #8
        mul     x464, x463, x346
        adrp     x465, to
        add     x465, x465, #:lo12:to
        add     x215, x465, x464
        //  %r216 = load i32, i32* %r215

        ldr     x216, x215
        //  call void @inqueue(i32 %r216)

        mov     x0, x216
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     inqueue
        stp     x29, x30, [sp, #16]!
        str     x7, [sp, #-8]!
        stp     x14, x15, [sp, #16]!
        stp     x12, x13, [sp, #16]!
        stp     x10, x11, [sp, #16]!
        //  br label %bb38


        b     bb38
        //bb37:

bb37:

        //  br label %bb38


        b     bb38
        //bb38:

bb38:

        //  %r218 = getelementptr [5005 x i32 ], [5005 x i32 ]* @next, i32 0, i32 %r346

        mov     x466, #8
        mul     x467, x466, x346
        adrp     x468, next
        add     x468, x468, #:lo12:next
        add     x218, x468, x467
        //  %r219 = load i32, i32* %r218

        ldr     x219, x218
        //  %r351 = add i32 %r219, 0

        mov     x351, x219
        //  br label %bb33


        b     bb33
        mov     x346, x351
        //bb35:

bb35:

        //  br label %bb27


        b     bb27
        mov     x333, x344
        //bb29:

bb29:

        //  %r335 = add i32 0, 0

        mov     x335, #0
        //  br label %bb39


        b     bb39
        mov     x336, x335
        //bb39:

bb39:

        //  %r336 = phi i32 [ %r335, %bb29 ], [ %r340, %bb40 ]

        //  %r221 = load i32, i32* @tail

        adrp     x469, tail
        add     x469, x469, #:lo12:tail
        ldr     x221, x469
        //  %r337 = icmp sle i32 %r336, %r221

        cmp     x336, x221
        //  br i1 %r337, label %bb40, label %bb41


        b.le     bb40
        b     bb41
        //bb40:

bb40:

        //  %r224 = getelementptr [1005 x i32 ], [1005 x i32 ]* @que, i32 0, i32 %r336

        mov     x470, #8
        mul     x471, x470, x336
        adrp     x472, que
        add     x472, x472, #:lo12:que
        add     x224, x472, x471
        //  %r225 = load i32, i32* %r224

        ldr     x225, x224
        //  %r338 = add i32 %r225, 0

        mov     x338, x225
        //  %r227 = getelementptr [1005 x i32 ], [1005 x i32 ]* @inq, i32 0, i32 %r338

        mov     x473, #8
        mul     x474, x473, x338
        adrp     x475, inq
        add     x475, x475, #:lo12:inq
        add     x227, x475, x474
        //  store i32 0, i32* %r227

        mov     x476, #0
        mov     x227, x476
        //  %r339 = add i32 %r336, 1

        add     x339, x336, #1
        //  %r340 = add i32 %r339, 0

        mov     x340, x339
        //  br label %bb39


        b     bb39
        mov     x336, x340
        //bb41:

bb41:

        //  ret i32 %r333

        mov     x0, x333
        mov     sp, x29
        ret
main:

        //bb42:

bb42:

        //  %r356 = call i32 @quickread()

        sub     sp, sp, #0
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     quickread
        stp     x29, x30, [sp, #16]!
        str     x7, [sp, #-8]!
        stp     x14, x15, [sp, #16]!
        stp     x12, x13, [sp, #16]!
        stp     x10, x11, [sp, #16]!
        mov     x356, x0
        //  store i32 %r356, i32* @n

        adrp     x477, n
        add     x477, x477, #:lo12:n
        mov     x477, x356
        //  %r357 = call i32 @quickread()

        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     quickread
        stp     x29, x30, [sp, #16]!
        str     x7, [sp, #-8]!
        stp     x14, x15, [sp, #16]!
        stp     x12, x13, [sp, #16]!
        stp     x10, x11, [sp, #16]!
        mov     x357, x0
        //  store i32 %r357, i32* @m

        adrp     x478, m
        add     x478, x478, #:lo12:m
        mov     x478, x357
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
        //  call void @init()

        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     init
        stp     x29, x30, [sp, #16]!
        str     x7, [sp, #-8]!
        stp     x14, x15, [sp, #16]!
        stp     x12, x13, [sp, #16]!
        stp     x10, x11, [sp, #16]!
        //  %r358 = add i32 0, 0

        mov     x358, #0
        //  %r359 = add i32 0, 0

        mov     x359, #0
        //  %r360 = add i32 0, 0

        mov     x360, #0
        //  %r361 = add i32 0, 0

        mov     x361, #0
        //  %r362 = add i32 0, 0

        mov     x362, #0
        //  %r363 = add i32 0, 0

        mov     x363, #0
        //  br label %bb43


        b     bb43
        //bb43:

bb43:

        //  %r236 = load i32, i32* @m

        adrp     x479, m
        add     x479, x479, #:lo12:m
        ldr     x236, x479
        //  %r364 = icmp ne i32 %r236, 0

        mov     x480, #0
        cmp     x236, x480
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
        stp     x29, x30, [sp, #16]!
        str     x7, [sp, #-8]!
        stp     x14, x15, [sp, #16]!
        stp     x12, x13, [sp, #16]!
        stp     x10, x11, [sp, #16]!
        mov     x365, x0
        //  %r366 = add i32 %r365, 0

        mov     x366, x365
        //  br label %bb46


        b     bb46
        mov     x367, x366
        //bb46:

bb46:

        //  %r367 = phi i32 [ %r366, %bb44 ], [ %r382, %bb47 ]

        //  %r368 = icmp ne i32 %r367, 81

        mov     x481, #81
        cmp     x367, x481
        //  br i1 %r368, label %bb49, label %bb48


        b.ne     bb49
        b     bb48
        //bb49:

bb49:

        //  %r380 = icmp ne i32 %r367, 85

        mov     x482, #85
        cmp     x367, x482
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
        stp     x29, x30, [sp, #16]!
        str     x7, [sp, #-8]!
        stp     x14, x15, [sp, #16]!
        stp     x12, x13, [sp, #16]!
        stp     x10, x11, [sp, #16]!
        mov     x381, x0
        //  %r382 = add i32 %r381, 0

        mov     x382, x381
        //  br label %bb46


        b     bb46
        mov     x367, x382
        //bb48:

bb48:

        //  %r369 = icmp eq i32 %r367, 81

        mov     x483, #81
        cmp     x367, x483
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
        stp     x29, x30, [sp, #16]!
        str     x7, [sp, #-8]!
        stp     x14, x15, [sp, #16]!
        stp     x12, x13, [sp, #16]!
        stp     x10, x11, [sp, #16]!
        mov     x375, x0
        //  %r376 = add i32 %r375, 0

        mov     x376, x375
        //  %r377 = call i32 @quickread()

        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     quickread
        stp     x29, x30, [sp, #16]!
        str     x7, [sp, #-8]!
        stp     x14, x15, [sp, #16]!
        stp     x12, x13, [sp, #16]!
        stp     x10, x11, [sp, #16]!
        mov     x377, x0
        //  %r378 = add i32 %r377, 0

        mov     x378, x377
        //  %r379 = call i32 @same(i32 %r376, i32 %r378)

        mov     x0, x376
        mov     x1, x378
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     same
        stp     x29, x30, [sp, #16]!
        str     x7, [sp, #-8]!
        stp     x14, x15, [sp, #16]!
        stp     x12, x13, [sp, #16]!
        stp     x10, x11, [sp, #16]!
        mov     x379, x0
        //  call void @putint(i32 %r379)

        mov     x0, x379
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     putint
        stp     x29, x30, [sp, #16]!
        str     x7, [sp, #-8]!
        stp     x14, x15, [sp, #16]!
        stp     x12, x13, [sp, #16]!
        stp     x10, x11, [sp, #16]!
        //  call void @putch(i32 10)

        mov     x0, #10
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     putch
        stp     x29, x30, [sp, #16]!
        str     x7, [sp, #-8]!
        stp     x14, x15, [sp, #16]!
        stp     x12, x13, [sp, #16]!
        stp     x10, x11, [sp, #16]!
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
        stp     x29, x30, [sp, #16]!
        str     x7, [sp, #-8]!
        stp     x14, x15, [sp, #16]!
        stp     x12, x13, [sp, #16]!
        stp     x10, x11, [sp, #16]!
        mov     x371, x0
        //  %r372 = add i32 %r371, 0

        mov     x372, x371
        //  %r373 = call i32 @quickread()

        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     quickread
        stp     x29, x30, [sp, #16]!
        str     x7, [sp, #-8]!
        stp     x14, x15, [sp, #16]!
        stp     x12, x13, [sp, #16]!
        stp     x10, x11, [sp, #16]!
        mov     x373, x0
        //  %r374 = add i32 %r373, 0

        mov     x374, x373
        //  call void @addedge(i32 %r372, i32 %r374)

        mov     x0, x372
        mov     x1, x374
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     addedge
        stp     x29, x30, [sp, #16]!
        str     x7, [sp, #-8]!
        stp     x14, x15, [sp, #16]!
        stp     x12, x13, [sp, #16]!
        stp     x10, x11, [sp, #16]!
        //  br label %bb52


        b     bb52
        //bb52:

bb52:

        //  %r258 = load i32, i32* @m

        adrp     x484, m
        add     x484, x484, #:lo12:m
        ldr     x258, x484
        //  %r370 = sub i32 %r258, 1

        sub     x370, x258, #1
        //  store i32 %r370, i32* @m

        adrp     x485, m
        add     x485, x485, #:lo12:m
        mov     x485, x370
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
        stp     x29, x30, [sp, #16]!
        str     x7, [sp, #-8]!
        stp     x14, x15, [sp, #16]!
        stp     x12, x13, [sp, #16]!
        stp     x10, x11, [sp, #16]!
        //  ret i32 0

        mov     x486, #0
        mov     x0, x486
        mov     sp, x29
        ret
