.section .data
.global    TAPE_LEN
.global    BUFFER_LEN
.global    tape
.global    program
.global    ptr
TAPE_LEN:
        .quad   65536
BUFFER_LEN:
        .quad   32768
tape:
        .zero   524288
program:
        .zero   262144
ptr:
        .quad   0
.section .text
.global getch
.global getint
.global putch
.global putint
.global putarray
.global _sysy_starttime
.global _sysy_stoptime
.global read_program
.global interpret
.global main
        sub     sp, sp, #0
read_program:

        //bb1:

bb1:

        //  %r185 = add i32 0, 0

        mov     x16, #0
        sub     sp, sp, x16
        //  %r186 = add i32 0, 0

        mov     x10, #0
        //  %r187 = call i32 @getint()

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
        //  %r188 = add i32 0, 0

        //  %r189 = add i32 %r187, 0

        mov     x11, x9
        mov     x12, x10
        //  br label %bb2


        b     bb2
        //bb2:

bb2:

        //  %r190 = phi i32 [ %r186, %bb1 ], [ %r194, %bb3 ]

        //  %r191 = icmp slt i32 %r190, %r189

        cmp     x12, x11
        //  br i1 %r191, label %bb3, label %bb4


        b.lt     bb3
        b     bb4
        //bb3:

bb3:

        //  %r192 = call i32 @getch()

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
        //  %r108 = getelementptr [32768 x i32 ], [32768 x i32 ]* @program, i32 0, i32 %r190

        mov     x9, #8
        mul     x9, x9, x12
        adrp     x13, program
        add     x13, x13, #:lo12:program
        add     x9, x13, x9
        //  store i32 %r192, i32* %r108

        str     x10, [x9]
        //  %r193 = add i32 %r190, 1

        mov     x9, #1
        add     x9, x12, x9
        //  %r194 = add i32 %r193, 0

        mov     x9, x9
        mov     x12, x9
        //  br label %bb2


        b     bb2
        //bb4:

bb4:

        //  %r112 = getelementptr [32768 x i32 ], [32768 x i32 ]* @program, i32 0, i32 %r190

        mov     x9, #8
        mul     x9, x9, x12
        adrp     x10, program
        add     x10, x10, #:lo12:program
        add     x10, x10, x9
        //  store i32 0, i32* %r112

        mov     x9, #0
        str     x9, [x10]
        //  ret void

        mov     sp, x29
        ret
        sub     sp, sp, #0
interpret:

        //bb5:

bb5:

        //  %r198 = add i32 0, 0

        mov     x16, #0
        sub     sp, sp, x16
        mov     x10, x0
        //  %r199 = add i32 0, 0

        //  %r200 = add i32 0, 0

        //  %r201 = add i32 0, 0

        mov     x9, #0
        mov     x11, x9
        //  br label %bb6


        b     bb6
        //bb6:

bb6:

        //  %r202 = phi i32 [ %r201, %bb5 ], [ %r214, %bb29 ]

        //  %r118 = getelementptr i32, i32* %r113, i32 %r202

        mov     x9, #8
        mul     x9, x9, x11
        add     x9, x10, x9
        //  %r119 = load i32, i32* %r118

        ldr     x12, [x9]
        //  %r203 = icmp ne i32 %r119, 0

        mov     x9, #0
        cmp     x12, x9
        //  br i1 %r203, label %bb7, label %bb8


        b.ne     bb7
        b     bb8
        //bb7:

bb7:

        //  %r122 = getelementptr i32, i32* %r113, i32 %r202

        mov     x9, #8
        mul     x9, x9, x11
        add     x9, x10, x9
        //  %r123 = load i32, i32* %r122

        ldr     x9, [x9]
        //  %r204 = add i32 %r123, 0

        mov     x9, x9
        //  %r205 = icmp eq i32 %r204, 62

        mov     x12, #62
        cmp     x9, x12
        //  br i1 %r205, label %bb9, label %bb10


        b.eq     bb9
        b     bb10
        //bb9:

bb9:

        //  %r126 = load i32, i32* @ptr

        adrp     x12, ptr
        add     x12, x12, #:lo12:ptr
        ldr     x12, [x12]
        //  %r235 = add i32 %r126, 1

        mov     x13, #1
        add     x12, x12, x13
        //  store i32 %r235, i32* @ptr

        adrp     x13, ptr
        add     x13, x13, #:lo12:ptr
        str     x12, [x13]
        //  br label %bb11


        b     bb11
        //bb10:

bb10:

        //  br label %bb11


        b     bb11
        //bb11:

bb11:

        //  %r206 = icmp eq i32 %r204, 60

        mov     x12, #60
        cmp     x9, x12
        //  br i1 %r206, label %bb12, label %bb13


        b.eq     bb12
        b     bb13
        //bb12:

bb12:

        //  %r130 = load i32, i32* @ptr

        adrp     x12, ptr
        add     x12, x12, #:lo12:ptr
        ldr     x12, [x12]
        //  %r234 = sub i32 %r130, 1

        mov     x13, #1
        sub     x12, x12, x13
        //  store i32 %r234, i32* @ptr

        adrp     x13, ptr
        add     x13, x13, #:lo12:ptr
        str     x12, [x13]
        //  br label %bb14


        b     bb14
        //bb13:

bb13:

        //  br label %bb14


        b     bb14
        //bb14:

bb14:

        //  %r207 = icmp eq i32 %r204, 43

        mov     x12, #43
        cmp     x9, x12
        //  br i1 %r207, label %bb15, label %bb16


        b.eq     bb15
        b     bb16
        //bb15:

bb15:

        //  %r134 = load i32, i32* @ptr

        adrp     x12, ptr
        add     x12, x12, #:lo12:ptr
        ldr     x12, [x12]
        //  %r135 = getelementptr [65536 x i32 ], [65536 x i32 ]* @tape, i32 0, i32 %r134

        mov     x13, #8
        mul     x13, x13, x12
        adrp     x12, tape
        add     x12, x12, #:lo12:tape
        add     x12, x12, x13
        //  %r136 = load i32, i32* %r135

        ldr     x12, [x12]
        //  %r233 = add i32 %r136, 1

        mov     x13, #1
        add     x12, x12, x13
        //  %r138 = load i32, i32* @ptr

        adrp     x13, ptr
        add     x13, x13, #:lo12:ptr
        ldr     x13, [x13]
        //  %r139 = getelementptr [65536 x i32 ], [65536 x i32 ]* @tape, i32 0, i32 %r138

        mov     x14, #8
        mul     x13, x14, x13
        adrp     x14, tape
        add     x14, x14, #:lo12:tape
        add     x13, x14, x13
        //  store i32 %r233, i32* %r139

        str     x12, [x13]
        //  br label %bb17


        b     bb17
        //bb16:

bb16:

        //  br label %bb17


        b     bb17
        //bb17:

bb17:

        //  %r208 = icmp eq i32 %r204, 45

        mov     x12, #45
        cmp     x9, x12
        //  br i1 %r208, label %bb18, label %bb19


        b.eq     bb18
        b     bb19
        //bb18:

bb18:

        //  %r142 = load i32, i32* @ptr

        adrp     x12, ptr
        add     x12, x12, #:lo12:ptr
        ldr     x12, [x12]
        //  %r143 = getelementptr [65536 x i32 ], [65536 x i32 ]* @tape, i32 0, i32 %r142

        mov     x13, #8
        mul     x12, x13, x12
        adrp     x13, tape
        add     x13, x13, #:lo12:tape
        add     x12, x13, x12
        //  %r144 = load i32, i32* %r143

        ldr     x12, [x12]
        //  %r232 = sub i32 %r144, 1

        mov     x13, #1
        sub     x12, x12, x13
        //  %r146 = load i32, i32* @ptr

        adrp     x13, ptr
        add     x13, x13, #:lo12:ptr
        ldr     x14, [x13]
        //  %r147 = getelementptr [65536 x i32 ], [65536 x i32 ]* @tape, i32 0, i32 %r146

        mov     x13, #8
        mul     x13, x13, x14
        adrp     x14, tape
        add     x14, x14, #:lo12:tape
        add     x13, x14, x13
        //  store i32 %r232, i32* %r147

        str     x12, [x13]
        //  br label %bb20


        b     bb20
        //bb19:

bb19:

        //  br label %bb20


        b     bb20
        //bb20:

bb20:

        //  %r209 = icmp eq i32 %r204, 46

        mov     x12, #46
        cmp     x9, x12
        //  br i1 %r209, label %bb21, label %bb22


        b.eq     bb21
        b     bb22
        //bb21:

bb21:

        //  %r150 = load i32, i32* @ptr

        adrp     x12, ptr
        add     x12, x12, #:lo12:ptr
        ldr     x13, [x12]
        //  %r151 = getelementptr [65536 x i32 ], [65536 x i32 ]* @tape, i32 0, i32 %r150

        mov     x12, #8
        mul     x12, x12, x13
        adrp     x13, tape
        add     x13, x13, #:lo12:tape
        add     x12, x13, x12
        //  %r152 = load i32, i32* %r151

        ldr     x12, [x12]
        //  call void @putch(i32 %r152)

        mov     x0, x12
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
        //bb22:

bb22:

        //  br label %bb23


        b     bb23
        //bb23:

bb23:

        //  %r210 = icmp eq i32 %r204, 44

        mov     x12, #44
        cmp     x9, x12
        //  br i1 %r210, label %bb24, label %bb25


        b.eq     bb24
        b     bb25
        //bb24:

bb24:

        //  %r231 = call i32 @getch()

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
        //  %r156 = load i32, i32* @ptr

        adrp     x13, ptr
        add     x13, x13, #:lo12:ptr
        ldr     x13, [x13]
        //  %r157 = getelementptr [65536 x i32 ], [65536 x i32 ]* @tape, i32 0, i32 %r156

        mov     x14, #8
        mul     x13, x14, x13
        adrp     x14, tape
        add     x14, x14, #:lo12:tape
        add     x13, x14, x13
        //  store i32 %r231, i32* %r157

        str     x12, [x13]
        //  br label %bb26


        b     bb26
        //bb25:

bb25:

        //  br label %bb26


        b     bb26
        //bb26:

bb26:

        //  %r211 = icmp eq i32 %r204, 93

        mov     x12, #93
        cmp     x9, x12
        //  br i1 %r211, label %bb30, label %bb28


        b.eq     bb30
        b     bb28
        //bb30:

bb30:

        //  %r161 = load i32, i32* @ptr

        adrp     x9, ptr
        add     x9, x9, #:lo12:ptr
        ldr     x9, [x9]
        //  %r162 = getelementptr [65536 x i32 ], [65536 x i32 ]* @tape, i32 0, i32 %r161

        mov     x12, #8
        mul     x9, x12, x9
        adrp     x12, tape
        add     x12, x12, #:lo12:tape
        add     x9, x12, x9
        //  %r163 = load i32, i32* %r162

        ldr     x9, [x9]
        //  %r215 = icmp ne i32 %r163, 0

        mov     x12, #0
        cmp     x9, x12
        //  br i1 %r215, label %bb27, label %bb28


        b.ne     bb27
        b     bb28
        //bb27:

bb27:

        //  %r216 = add i32 1, 0

        mov     x9, #1
        mov     x12, x9
        mov     x9, x11
        //  br label %bb31


        b     bb31
        //bb31:

bb31:

        //  %r217 = phi i32 [ %r216, %bb27 ], [ %r226, %bb39 ]

        //  %r218 = phi i32 [ %r202, %bb27 ], [ %r221, %bb39 ]

        //  %r219 = icmp sgt i32 %r217, 0

        mov     x11, #0
        cmp     x12, x11
        //  br i1 %r219, label %bb32, label %bb33


        b.gt     bb32
        b     bb33
        //bb32:

bb32:

        //  %r220 = sub i32 %r218, 1

        mov     x11, #1
        sub     x9, x9, x11
        //  %r221 = add i32 %r220, 0

        mov     x9, x9
        //  %r170 = getelementptr i32, i32* %r113, i32 %r221

        mov     x11, #8
        mul     x11, x11, x9
        add     x11, x10, x11
        //  %r171 = load i32, i32* %r170

        ldr     x11, [x11]
        //  %r222 = add i32 %r171, 0

        mov     x13, x11
        //  %r223 = icmp eq i32 %r222, 91

        mov     x11, #91
        cmp     x13, x11
        //  br i1 %r223, label %bb34, label %bb35


        b.eq     bb34
        b     bb35
        //bb34:

bb34:

        //  %r229 = sub i32 %r217, 1

        mov     x11, #1
        sub     x11, x12, x11
        //  %r230 = add i32 %r229, 0

        mov     x11, x11
        mov     x11, x11
        //  br label %bb36


        b     bb36
        //bb35:

bb35:

        mov     x11, x12
        //  br label %bb36


        b     bb36
        //bb36:

bb36:

        //  %r224 = phi i32 [ %r230, %bb34 ], [ %r217, %bb35 ]

        //  %r225 = icmp eq i32 %r222, 93

        mov     x12, #93
        cmp     x13, x12
        //  br i1 %r225, label %bb37, label %bb38


        b.eq     bb37
        b     bb38
        //bb37:

bb37:

        //  %r227 = add i32 %r224, 1

        mov     x12, #1
        add     x11, x11, x12
        //  %r228 = add i32 %r227, 0

        mov     x11, x11
        mov     x11, x11
        //  br label %bb39


        b     bb39
        //bb38:

bb38:

        mov     x11, x11
        //  br label %bb39


        b     bb39
        //bb39:

bb39:

        //  %r226 = phi i32 [ %r228, %bb37 ], [ %r224, %bb38 ]

        mov     x12, x11
        mov     x9, x9
        //  br label %bb31


        b     bb31
        //bb33:

bb33:

        mov     x9, x9
        //  br label %bb29


        b     bb29
        //bb28:

bb28:

        mov     x9, x11
        //  br label %bb29


        b     bb29
        //bb29:

bb29:

        //  %r212 = phi i32 [ %r218, %bb33 ], [ %r202, %bb28 ]

        //  %r213 = add i32 %r212, 1

        mov     x11, #1
        add     x9, x9, x11
        //  %r214 = add i32 %r213, 0

        mov     x9, x9
        mov     x11, x9
        //  br label %bb6


        b     bb6
        //bb8:

bb8:

        //  ret void

        mov     sp, x29
        ret
        sub     sp, sp, #0
main:

        //bb40:

bb40:

        //  call void @_sysy_starttime(i32 76)

        mov     x16, #0
        sub     sp, sp, x16
        mov     x0, #76
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
        //  call void @read_program()

        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     read_program
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        //  %r182 = getelementptr [32768 x i32 ], [32768 x i32 ]* @program, i32 0, i32 0

        mov     x9, #8
        mov     x10, #0
        mul     x9, x9, x10
        adrp     x10, program
        add     x10, x10, #:lo12:program
        add     x9, x10, x9
        //  call void @interpret(i32* %r182)

        mov     x0, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     interpret
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
        //  call void @_sysy_stoptime(i32 80)

        mov     x0, #80
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
