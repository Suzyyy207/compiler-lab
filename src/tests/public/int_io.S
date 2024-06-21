.section .data
.global    ascii_0
ascii_0:
        .quad   48
.section .text
.global getch
.global getint
.global putch
.global putint
.global putarray
.global _sysy_starttime
.global _sysy_stoptime
.global my_getint
.global mod
.global my_putint
.global main
        sub     sp, sp, #0
my_getint:

        //101:x29,#-16

        //100:x29,#-8

        //bb1:

bb1:

        //  %r100 = alloca i32

        mov     x16, #16
        sub     sp, sp, x16
        //  store i32 0, i32* %r100

        mov     x11, #0
        str     x11, [x9]
        //  %r101 = alloca i32

        //  br label %bb2


        b     bb2
        //bb2:

bb2:

        //  %r102 = icmp sgt i32 1, 0

        mov     x11, #1
        mov     x12, #0
        cmp     x11, x12
        //  br i1 %r102, label %bb3, label %bb4


        b.gt     bb3
        b     bb4
        //bb3:

bb3:

        //  %r103 = call i32 @getch()

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
        mov     x12, x0
        //  %r104 = load i32, i32* @ascii_0

        adrp     x11, ascii_0
        add     x11, x11, #:lo12:ascii_0
        ldr     x11, [x11]
        //  %r105 = sub i32 %r103, %r104

        sub     x11, x12, x11
        //  store i32 %r105, i32* %r101

        str     x11, [x10]
        //  %r107 = load i32, i32* %r101

        ldr     x12, [x10]
        //  %r108 = icmp slt i32 %r107, 0

        mov     x11, #0
        cmp     x12, x11
        //  br i1 %r108, label %bb5, label %bb8


        b.lt     bb5
        b     bb8
        //bb8:

bb8:

        //  %r109 = load i32, i32* %r101

        ldr     x12, [x10]
        //  %r110 = icmp sgt i32 %r109, 9

        mov     x11, #9
        cmp     x12, x11
        //  br i1 %r110, label %bb5, label %bb6


        b.gt     bb5
        b     bb6
        //bb5:

bb5:

        //  br label %bb2


        b     bb2
        //bb6:

bb6:

        //  br label %bb4


        b     bb4
        //bb7:

bb7:

        //  br label %bb2


        b     bb2
        //bb4:

bb4:

        //  %r111 = load i32, i32* %r101

        ldr     x11, [x10]
        //  store i32 %r111, i32* %r100

        str     x11, [x9]
        //  br label %bb9


        b     bb9
        //bb9:

bb9:

        //  %r112 = icmp sgt i32 1, 0

        mov     x11, #1
        mov     x12, #0
        cmp     x11, x12
        //  br i1 %r112, label %bb10, label %bb11


        b.gt     bb10
        b     bb11
        //bb10:

bb10:

        //  %r113 = call i32 @getch()

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
        mov     x12, x0
        //  %r114 = load i32, i32* @ascii_0

        adrp     x11, ascii_0
        add     x11, x11, #:lo12:ascii_0
        ldr     x11, [x11]
        //  %r115 = sub i32 %r113, %r114

        sub     x11, x12, x11
        //  store i32 %r115, i32* %r101

        str     x11, [x10]
        //  %r117 = load i32, i32* %r101

        ldr     x11, [x10]
        //  %r118 = icmp sge i32 %r117, 0

        mov     x12, #0
        cmp     x11, x12
        //  br i1 %r118, label %bb15, label %bb13


        b.ge     bb15
        b     bb13
        //bb15:

bb15:

        //  %r119 = load i32, i32* %r101

        ldr     x11, [x10]
        //  %r120 = icmp sle i32 %r119, 9

        mov     x12, #9
        cmp     x11, x12
        //  br i1 %r120, label %bb12, label %bb13


        b.le     bb12
        b     bb13
        //bb12:

bb12:

        //  %r121 = load i32, i32* %r100

        ldr     x11, [x9]
        //  %r122 = mul i32 %r121, 10

        mov     x12, #10
        mul     x12, x11, x12
        //  %r123 = load i32, i32* %r101

        ldr     x11, [x10]
        //  %r124 = add i32 %r122, %r123

        add     x11, x12, x11
        //  store i32 %r124, i32* %r100

        str     x11, [x9]
        //  br label %bb14


        b     bb14
        //bb13:

bb13:

        //  br label %bb11


        b     bb11
        //bb14:

bb14:

        //  br label %bb9


        b     bb9
        //bb11:

bb11:

        //  %r125 = load i32, i32* %r100

        ldr     x9, [x9]
        //  ret i32 %r125

        mov     x0, x9
        mov     sp, x29
        ret
        sub     sp, sp, #0
mod:

        //129:x29,#-16

        //127:x29,#-8

        //bb17:

bb17:

        //  %r127 = alloca i32

        mov     x16, #16
        sub     sp, sp, x16
        mov     x9, x0
        mov     x11, x1
        //  store i32 %r126, i32* %r127

        str     x9, [x10]
        //  %r129 = alloca i32

        //  store i32 %r128, i32* %r129

        str     x11, [x12]
        //  br label %bb16


        b     bb16
        //bb16:

bb16:

        //  %r130 = load i32, i32* %r127

        ldr     x9, [x10]
        //  %r131 = load i32, i32* %r127

        ldr     x10, [x10]
        //  %r132 = load i32, i32* %r129

        ldr     x11, [x12]
        //  %r133 = sdiv i32 %r131, %r132

        sdiv     x10, x10, x11
        //  %r134 = load i32, i32* %r129

        ldr     x11, [x12]
        //  %r135 = mul i32 %r133, %r134

        mul     x10, x10, x11
        //  %r136 = sub i32 %r130, %r135

        sub     x9, x9, x10
        //  ret i32 %r136

        mov     x0, x9
        mov     sp, x29
        ret
        sub     sp, sp, #0
my_putint:

        //138:x29,#-144

        //139:x29,#-136

        //140:x29,#-8

        //bb19:

bb19:

        //  %r140 = alloca i32

        mov     x16, #12
        sub     sp, sp, x16
        mov     x11, x0
        //  %r139 = alloca [ 16 x i32 ]

        //  %r138 = alloca i32

        //  store i32 %r137, i32* %r138

        str     x11, [x9]
        //  br label %bb18


        b     bb18
        //bb18:

bb18:

        //  store i32 0, i32* %r140

        mov     x11, #0
        str     x11, [x10]
        //  br label %bb20


        b     bb20
        //bb20:

bb20:

        //  %r141 = load i32, i32* %r138

        ldr     x12, [x9]
        //  %r142 = icmp sgt i32 %r141, 0

        mov     x11, #0
        cmp     x12, x11
        //  br i1 %r142, label %bb21, label %bb22


        b.gt     bb21
        b     bb22
        //bb21:

bb21:

        //  %r143 = load i32, i32* %r138

        ldr     x11, [x9]
        //  %r144 = call i32 @mod(i32 %r143, i32 10)

        mov     x0, x11
        mov     x1, #10
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     mod
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x12, x0
        //  %r145 = load i32, i32* @ascii_0

        adrp     x11, ascii_0
        add     x11, x11, #:lo12:ascii_0
        ldr     x11, [x11]
        //  %r146 = add i32 %r144, %r145

        add     x13, x12, x11
        //  %r147 = load i32, i32* %r140

        ldr     x12, [x10]
        //  %r148 = getelementptr [16 x i32 ], [16 x i32 ]* %r139, i32 0, i32 %r147

        mov     x11, #8
        mul     x12, x11, x12
        add     x11, x29, #-136
        add     x11, x11, x12
        //  store i32 %r146, i32* %r148

        str     x13, [x11]
        //  %r149 = load i32, i32* %r138

        ldr     x12, [x9]
        //  %r150 = sdiv i32 %r149, 10

        mov     x11, #10
        sdiv     x11, x12, x11
        //  store i32 %r150, i32* %r138

        str     x11, [x9]
        //  %r151 = load i32, i32* %r140

        ldr     x12, [x10]
        //  %r152 = add i32 %r151, 1

        mov     x11, #1
        add     x11, x12, x11
        //  store i32 %r152, i32* %r140

        str     x11, [x10]
        //  br label %bb20


        b     bb20
        //bb22:

bb22:

        //  br label %bb23


        b     bb23
        //bb23:

bb23:

        //  %r153 = load i32, i32* %r140

        ldr     x11, [x10]
        //  %r154 = icmp sgt i32 %r153, 0

        mov     x9, #0
        cmp     x11, x9
        //  br i1 %r154, label %bb24, label %bb25


        b.gt     bb24
        b     bb25
        //bb24:

bb24:

        //  %r155 = load i32, i32* %r140

        ldr     x9, [x10]
        //  %r156 = sub i32 %r155, 1

        mov     x11, #1
        sub     x9, x9, x11
        //  store i32 %r156, i32* %r140

        str     x9, [x10]
        //  %r157 = load i32, i32* %r140

        ldr     x9, [x10]
        //  %r158 = getelementptr [16 x i32 ], [16 x i32 ]* %r139, i32 0, i32 %r157

        mov     x11, #8
        mul     x9, x11, x9
        add     x11, x29, #-136
        add     x9, x11, x9
        //  %r159 = load i32, i32* %r158

        ldr     x9, [x9]
        //  call void @putch(i32 %r159)

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
        //  br label %bb23


        b     bb23
        //bb25:

bb25:

        //  ret void

        mov     sp, x29
        ret
        sub     sp, sp, #0
main:

        //160:x29,#-16

        //164:x29,#-8

        //bb26:

bb26:

        //  %r164 = alloca i32

        mov     x16, #16
        sub     sp, sp, x16
        //  call void @_sysy_starttime(i32 51)

        mov     x0, #51
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
        //  %r161 = call i32 @my_getint()

        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     my_getint
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x10, x0
        //  %r160 = alloca i32

        //  store i32 %r161, i32* %r160

        str     x10, [x9]
        //  br label %bb27


        b     bb27
        //bb27:

bb27:

        //  %r162 = load i32, i32* %r160

        ldr     x10, [x9]
        //  %r163 = icmp sgt i32 %r162, 0

        mov     x12, #0
        cmp     x10, x12
        //  br i1 %r163, label %bb28, label %bb29


        b.gt     bb28
        b     bb29
        //bb28:

bb28:

        //  %r165 = call i32 @my_getint()

        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     my_getint
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x10, x0
        //  store i32 %r165, i32* %r164

        str     x10, [x11]
        //  %r166 = load i32, i32* %r164

        //  %r167 = load i32, i32* %r164

        ldr     x10, [x11]
        //  call void @my_putint(i32 %r167)

        mov     x0, x10
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     my_putint
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
        //  %r168 = load i32, i32* %r160

        ldr     x10, [x9]
        //  %r169 = sub i32 %r168, 1

        mov     x12, #1
        sub     x10, x10, x12
        //  store i32 %r169, i32* %r160

        str     x10, [x9]
        //  br label %bb27


        b     bb27
        //bb29:

bb29:

        //  call void @_sysy_stoptime(i32 58)

        mov     x0, #58
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
