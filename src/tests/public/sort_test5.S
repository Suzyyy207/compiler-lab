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
.global swap
.global heap_ajust
.global heap_sort
.global main
swap:

        //bb2:

bb2:

        //  %r225 = add i32 0, 0

        mov     x16, #0
        sub     sp, sp, x16
        mov     x11, x0
        mov     x9, x1
        mov     x10, x2
        //  %r226 = add i32 0, 0

        //  %r227 = add i32 %r101, 0

        mov     x9, x9
        //  %r228 = add i32 0, 0

        //  %r229 = add i32 %r103, 0

        mov     x10, x10
        //  br label %bb1


        b     bb1
        //bb1:

bb1:

        //  %r107 = getelementptr i32, i32* %r100, i32 %r227

        mov     x12, #8
        mul     x12, x12, x9
        add     x12, x11, x12
        //  %r108 = load i32, i32* %r107

        ldr     x12, [x12]
        //  %r230 = add i32 %r108, 0

        mov     x12, x12
        //  %r110 = getelementptr i32, i32* %r100, i32 %r229

        mov     x13, #8
        mul     x13, x13, x10
        add     x13, x11, x13
        //  %r111 = load i32, i32* %r110

        ldr     x13, [x13]
        //  %r113 = getelementptr i32, i32* %r100, i32 %r227

        mov     x14, #8
        mul     x9, x14, x9
        add     x9, x11, x9
        //  store i32 %r111, i32* %r113

        str     x13, [x9]
        //  %r116 = getelementptr i32, i32* %r100, i32 %r229

        mov     x9, #8
        mul     x9, x9, x10
        add     x9, x11, x9
        //  store i32 %r230, i32* %r116

        str     x12, [x9]
        //  ret i32 0

        mov     x9, #0
        mov     x0, x9
        mov     sp, x29
        ret
heap_ajust:

        //bb4:

bb4:

        //  %r236 = add i32 0, 0

        mov     x16, #0
        sub     sp, sp, x16
        mov     x12, x0
        mov     x10, x1
        mov     x9, x2
        //  %r237 = add i32 0, 0

        //  %r238 = add i32 0, 0

        //  %r239 = add i32 0, 0

        //  %r240 = add i32 %r118, 0

        mov     x10, x10
        //  %r241 = add i32 0, 0

        //  %r242 = add i32 %r120, 0

        mov     x11, x9
        //  br label %bb3


        b     bb3
        //bb3:

bb3:

        //  %r243 = add i32 %r240, 0

        mov     x10, x10
        //  %r244 = mul i32 %r243, 2

        mov     x9, #2
        mul     x9, x10, x9
        //  %r245 = add i32 %r244, 1

        mov     x13, #1
        add     x9, x9, x13
        //  %r246 = add i32 %r245, 0

        mov     x9, x9
        mov     x10, x10
        mov     x9, x9
        //  br label %bb5


        b     bb5
        //bb5:

bb5:

        //  %r247 = phi i32 [ %r243, %bb3 ], [ %r258, %bb14 ]

        //  %r248 = phi i32 [ %r246, %bb3 ], [ %r261, %bb14 ]

        //  %r249 = add i32 %r242, 1

        mov     x13, #1
        add     x13, x11, x13
        //  %r250 = icmp slt i32 %r248, %r249

        cmp     x9, x13
        //  br i1 %r250, label %bb6, label %bb7


        b.lt     bb6
        b     bb7
        //bb6:

bb6:

        //  %r251 = add i32 %r248, 1

        mov     x13, #1
        add     x13, x9, x13
        //  %r252 = add i32 %r251, 0

        mov     x14, x13
        //  %r253 = icmp slt i32 %r248, %r242

        cmp     x9, x11
        //  br i1 %r253, label %bb11, label %bb9


        b.lt     bb11
        b     bb9
        //bb11:

bb11:

        //  %r140 = getelementptr i32, i32* %r117, i32 %r248

        mov     x13, #8
        mul     x13, x13, x9
        add     x13, x12, x13
        //  %r141 = load i32, i32* %r140

        ldr     x13, [x13]
        //  %r143 = getelementptr i32, i32* %r117, i32 %r252

        mov     x15, #8
        mul     x14, x15, x14
        add     x14, x12, x14
        //  %r144 = load i32, i32* %r143

        ldr     x14, [x14]
        //  %r262 = icmp slt i32 %r141, %r144

        cmp     x13, x14
        //  br i1 %r262, label %bb8, label %bb9


        b.lt     bb8
        b     bb9
        //bb8:

bb8:

        //  %r263 = add i32 %r248, 1

        mov     x13, #1
        add     x9, x9, x13
        //  %r264 = add i32 %r263, 0

        mov     x9, x9
        mov     x9, x9
        //  br label %bb10


        b     bb10
        //bb9:

bb9:

        mov     x9, x9
        //  br label %bb10


        b     bb10
        //bb10:

bb10:

        //  %r254 = phi i32 [ %r264, %bb8 ], [ %r248, %bb9 ]

        //  %r149 = getelementptr i32, i32* %r117, i32 %r247

        mov     x13, #8
        mul     x13, x13, x10
        add     x13, x12, x13
        //  %r150 = load i32, i32* %r149

        ldr     x14, [x13]
        //  %r152 = getelementptr i32, i32* %r117, i32 %r254

        mov     x13, #8
        mul     x13, x13, x9
        add     x13, x12, x13
        //  %r153 = load i32, i32* %r152

        ldr     x13, [x13]
        //  %r255 = icmp sgt i32 %r150, %r153

        cmp     x14, x13
        //  br i1 %r255, label %bb12, label %bb13


        b.gt     bb12
        b     bb13
        //bb12:

bb12:

        //  ret i32 0

        mov     x9, #0
        mov     x0, x9
        mov     sp, x29
        ret
        //bb13:

bb13:

        //  %r256 = call i32 @swap(i32* %r117, i32 %r247, i32 %r254)

        mov     x0, x12
        mov     x1, x10
        mov     x2, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     swap
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x10, x0
        //  %r257 = add i32 %r256, 0

        //  %r258 = add i32 %r254, 0

        mov     x10, x9
        //  %r259 = mul i32 %r258, 2

        mov     x9, #2
        mul     x9, x10, x9
        //  %r260 = add i32 %r259, 1

        mov     x13, #1
        add     x9, x9, x13
        //  %r261 = add i32 %r260, 0

        mov     x9, x9
        //  br label %bb14


        b     bb14
        //bb14:

bb14:

        mov     x10, x10
        mov     x9, x9
        //  br label %bb5


        b     bb5
        //bb7:

bb7:

        //  ret i32 0

        mov     x9, #0
        mov     x0, x9
        mov     sp, x29
        ret
heap_sort:

        //bb16:

bb16:

        //  %r269 = add i32 0, 0

        mov     x16, #0
        sub     sp, sp, x16
        mov     x10, x0
        mov     x9, x1
        //  %r270 = add i32 0, 0

        //  %r271 = add i32 0, 0

        //  %r272 = add i32 0, 0

        //  %r273 = add i32 %r163, 0

        mov     x9, x9
        //  br label %bb15


        b     bb15
        //bb15:

bb15:

        //  %r274 = sdiv i32 %r273, 2

        mov     x11, #2
        sdiv     x12, x9, x11
        //  %r275 = sub i32 %r274, 1

        mov     x11, #1
        sub     x11, x12, x11
        //  %r276 = add i32 %r275, 0

        mov     x11, x11
        mov     x11, x11
        //  br label %bb17


        b     bb17
        //bb17:

bb17:

        //  %r277 = phi i32 [ %r276, %bb15 ], [ %r298, %bb18 ]

        //  %r278 = sub i32 0, 1

        mov     x13, #0
        mov     x12, #1
        sub     x12, x13, x12
        //  %r279 = icmp sgt i32 %r277, %r278

        cmp     x11, x12
        //  br i1 %r279, label %bb18, label %bb19


        b.gt     bb18
        b     bb19
        //bb18:

bb18:

        //  %r293 = sub i32 %r273, 1

        mov     x12, #1
        sub     x12, x9, x12
        //  %r294 = add i32 %r293, 0

        mov     x12, x12
        //  %r295 = call i32 @heap_ajust(i32* %r162, i32 %r277, i32 %r294)

        mov     x0, x10
        mov     x1, x11
        mov     x2, x12
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     heap_ajust
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x12, x0
        //  %r296 = add i32 %r295, 0

        //  %r297 = sub i32 %r277, 1

        mov     x12, #1
        sub     x11, x11, x12
        //  %r298 = add i32 %r297, 0

        mov     x11, x11
        mov     x11, x11
        //  br label %bb17


        b     bb17
        //bb19:

bb19:

        //  %r280 = sub i32 %r273, 1

        mov     x11, #1
        sub     x9, x9, x11
        //  %r281 = add i32 %r280, 0

        mov     x9, x9
        mov     x9, x9
        //  br label %bb20


        b     bb20
        //bb20:

bb20:

        //  %r282 = phi i32 [ %r281, %bb19 ], [ %r292, %bb21 ]

        //  %r283 = icmp sgt i32 %r282, 0

        mov     x11, #0
        cmp     x9, x11
        //  br i1 %r283, label %bb21, label %bb22


        b.gt     bb21
        b     bb22
        //bb21:

bb21:

        //  %r284 = add i32 0, 0

        mov     x12, #0
        //  %r285 = call i32 @swap(i32* %r162, i32 %r284, i32 %r282)

        mov     x0, x10
        mov     x1, x12
        mov     x2, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     swap
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x11, x0
        //  %r286 = add i32 %r285, 0

        //  %r287 = sub i32 %r282, 1

        mov     x11, #1
        sub     x11, x9, x11
        //  %r288 = add i32 %r287, 0

        mov     x11, x11
        //  %r289 = call i32 @heap_ajust(i32* %r162, i32 %r284, i32 %r288)

        mov     x0, x10
        mov     x1, x12
        mov     x2, x11
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     heap_ajust
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x11, x0
        //  %r290 = add i32 %r289, 0

        //  %r291 = sub i32 %r282, 1

        mov     x11, #1
        sub     x9, x9, x11
        //  %r292 = add i32 %r291, 0

        mov     x9, x9
        mov     x9, x9
        //  br label %bb20


        b     bb20
        //bb22:

bb22:

        //  ret i32 0

        mov     x9, #0
        mov     x0, x9
        mov     sp, x29
        ret
main:

        //195:x29,#-80

        //bb23:

bb23:

        //  %r301 = add i32 0, 0

        mov     x16, #80
        sub     sp, sp, x16
        //  call void @_sysy_starttime(i32 50)

        mov     x0, #50
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
        //  %r195 = alloca [ 10 x i32 ]

        //  %r196 = getelementptr [10 x i32 ], [10 x i32 ]* %r195, i32 0, i32 0

        mov     x11, #8
        mov     x10, #0
        mul     x11, x11, x10
        add     x10, x29, #-80
        add     x11, x10, x11
        //  store i32 4, i32* %r196

        mov     x10, #4
        str     x10, [x11]
        //  %r197 = getelementptr [10 x i32 ], [10 x i32 ]* %r195, i32 0, i32 1

        mov     x11, #8
        mov     x10, #1
        mul     x11, x11, x10
        add     x10, x29, #-80
        add     x10, x10, x11
        //  store i32 3, i32* %r197

        mov     x11, #3
        str     x11, [x10]
        //  %r198 = getelementptr [10 x i32 ], [10 x i32 ]* %r195, i32 0, i32 2

        mov     x10, #8
        mov     x11, #2
        mul     x10, x10, x11
        add     x11, x29, #-80
        add     x10, x11, x10
        //  store i32 9, i32* %r198

        mov     x11, #9
        str     x11, [x10]
        //  %r199 = getelementptr [10 x i32 ], [10 x i32 ]* %r195, i32 0, i32 3

        mov     x10, #8
        mov     x11, #3
        mul     x10, x10, x11
        add     x11, x29, #-80
        add     x10, x11, x10
        //  store i32 2, i32* %r199

        mov     x11, #2
        str     x11, [x10]
        //  %r200 = getelementptr [10 x i32 ], [10 x i32 ]* %r195, i32 0, i32 4

        mov     x10, #8
        mov     x11, #4
        mul     x11, x10, x11
        add     x10, x29, #-80
        add     x10, x10, x11
        //  store i32 0, i32* %r200

        mov     x11, #0
        str     x11, [x10]
        //  %r201 = getelementptr [10 x i32 ], [10 x i32 ]* %r195, i32 0, i32 5

        mov     x11, #8
        mov     x10, #5
        mul     x11, x11, x10
        add     x10, x29, #-80
        add     x11, x10, x11
        //  store i32 1, i32* %r201

        mov     x10, #1
        str     x10, [x11]
        //  %r202 = getelementptr [10 x i32 ], [10 x i32 ]* %r195, i32 0, i32 6

        mov     x11, #8
        mov     x10, #6
        mul     x10, x11, x10
        add     x11, x29, #-80
        add     x10, x11, x10
        //  store i32 6, i32* %r202

        mov     x11, #6
        str     x11, [x10]
        //  %r203 = getelementptr [10 x i32 ], [10 x i32 ]* %r195, i32 0, i32 7

        mov     x10, #8
        mov     x11, #7
        mul     x10, x10, x11
        add     x11, x29, #-80
        add     x10, x11, x10
        //  store i32 5, i32* %r203

        mov     x11, #5
        str     x11, [x10]
        //  %r204 = getelementptr [10 x i32 ], [10 x i32 ]* %r195, i32 0, i32 8

        mov     x10, #8
        mov     x11, #8
        mul     x10, x10, x11
        add     x11, x29, #-80
        add     x10, x11, x10
        //  store i32 7, i32* %r204

        mov     x11, #7
        str     x11, [x10]
        //  %r205 = getelementptr [10 x i32 ], [10 x i32 ]* %r195, i32 0, i32 9

        mov     x10, #8
        mov     x11, #9
        mul     x10, x10, x11
        add     x11, x29, #-80
        add     x10, x11, x10
        //  store i32 8, i32* %r205

        mov     x11, #8
        str     x11, [x10]
        //  %r302 = add i32 0, 0

        //  %r303 = add i32 0, 0

        //  %r207 = load i32, i32* @n

        adrp     x10, n
        add     x10, x10, #:lo12:n
        ldr     x10, [x10]
        //  %r304 = call i32 @heap_sort(i32* %r195, i32 %r207)

        mov     x0, x9
        mov     x1, x10
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     heap_sort
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        //  %r305 = add i32 %r304, 0

        mov     x9, x9
        mov     x10, x9
        //  br label %bb24


        b     bb24
        //bb24:

bb24:

        //  %r306 = phi i32 [ %r305, %bb23 ], [ %r311, %bb25 ]

        //  %r210 = load i32, i32* @n

        adrp     x9, n
        add     x9, x9, #:lo12:n
        ldr     x9, [x9]
        //  %r307 = icmp slt i32 %r306, %r210

        cmp     x10, x9
        //  br i1 %r307, label %bb25, label %bb26


        b.lt     bb25
        b     bb26
        //bb25:

bb25:

        //  %r214 = getelementptr [10 x i32 ], [10 x i32 ]* %r195, i32 0, i32 %r306

        mov     x9, #8
        mul     x9, x9, x10
        add     x11, x29, #-80
        add     x9, x11, x9
        //  %r215 = load i32, i32* %r214

        ldr     x9, [x9]
        //  %r308 = add i32 %r215, 0

        mov     x9, x9
        //  call void @putint(i32 %r308)

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
        //  %r309 = add i32 10, 0

        mov     x9, #10
        //  call void @putch(i32 %r309)

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
        //  %r310 = add i32 %r306, 1

        mov     x9, #1
        add     x9, x10, x9
        //  %r311 = add i32 %r310, 0

        mov     x9, x9
        mov     x10, x9
        //  br label %bb24


        b     bb24
        //bb26:

bb26:

        //  call void @_sysy_stoptime(i32 66)

        mov     x0, #66
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
