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

        //101:x29,#-16

        //100:x29,#-8

        //bb1:

bb1:

        //  %r100 = alloca i32

        mov     x16, #16
        sub     sp, sp, x16
        //  store i32 0, i32* %r100

        mov     x11, #0
        str     x11, [x10]
        //  %r102 = call i32 @getint()

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
        //  %r101 = alloca i32

        //  store i32 %r102, i32* %r101

        str     x11, [x9]
        //  br label %bb2


        b     bb2
        //bb2:

bb2:

        //  %r103 = load i32, i32* %r100

        ldr     x12, [x10]
        //  %r104 = load i32, i32* %r101

        ldr     x11, [x9]
        //  %r105 = icmp slt i32 %r103, %r104

        cmp     x12, x11
        //  br i1 %r105, label %bb3, label %bb4


        b.lt     bb3
        b     bb4
        //bb3:

bb3:

        //  %r106 = call i32 @getch()

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
        //  %r107 = load i32, i32* %r100

        ldr     x11, [x10]
        //  %r108 = getelementptr [32768 x i32 ], [32768 x i32 ]* @program, i32 0, i32 %r107

        mov     x13, #8
        mul     x11, x13, x11
        adrp     x13, program
        add     x13, x13, #:lo12:program
        add     x11, x13, x11
        //  store i32 %r106, i32* %r108

        str     x12, [x11]
        //  %r109 = load i32, i32* %r100

        ldr     x11, [x10]
        //  %r110 = add i32 %r109, 1

        mov     x12, #1
        add     x11, x11, x12
        //  store i32 %r110, i32* %r100

        str     x11, [x10]
        //  br label %bb2


        b     bb2
        //bb4:

bb4:

        //  %r111 = load i32, i32* %r100

        ldr     x9, [x10]
        //  %r112 = getelementptr [32768 x i32 ], [32768 x i32 ]* @program, i32 0, i32 %r111

        mov     x10, #8
        mul     x10, x10, x9
        adrp     x9, program
        add     x9, x9, #:lo12:program
        add     x9, x9, x10
        //  store i32 0, i32* %r112

        mov     x10, #0
        str     x10, [x9]
        //  ret void

        mov     sp, x29
        ret
        sub     sp, sp, #0
interpret:

        //116:x29,#-24

        //115:x29,#-16

        //114:x29,#-8

        //bb5:

bb5:

        //  %r114 = alloca i32

        mov     x16, #32
        sub     sp, sp, x16
        mov     x12, x0
        //  %r115 = alloca i32

        //  %r116 = alloca i32

        //  store i32 0, i32* %r116

        mov     x13, #0
        str     x13, [x9]
        //  br label %bb6


        b     bb6
        //bb6:

bb6:

        //  %r117 = load i32, i32* %r116

        ldr     x13, [x9]
        //  %r118 = getelementptr i32, i32* %r113, i32 %r117

        mov     x14, #8
        mul     x13, x14, x13
        add     x13, x12, x13
        //  %r119 = load i32, i32* %r118

        ldr     x13, [x13]
        //  %r120 = icmp ne i32 %r119, 0

        mov     x14, #0
        cmp     x13, x14
        //  br i1 %r120, label %bb7, label %bb8


        b.ne     bb7
        b     bb8
        //bb7:

bb7:

        //  %r121 = load i32, i32* %r116

        ldr     x13, [x9]
        //  %r122 = getelementptr i32, i32* %r113, i32 %r121

        mov     x14, #8
        mul     x13, x14, x13
        add     x13, x12, x13
        //  %r123 = load i32, i32* %r122

        ldr     x13, [x13]
        //  store i32 %r123, i32* %r114

        str     x13, [x11]
        //  %r124 = load i32, i32* %r114

        ldr     x13, [x11]
        //  %r125 = icmp eq i32 %r124, 62

        mov     x14, #62
        cmp     x13, x14
        //  br i1 %r125, label %bb9, label %bb10


        b.eq     bb9
        b     bb10
        //bb9:

bb9:

        //  %r126 = load i32, i32* @ptr

        adrp     x13, ptr
        add     x13, x13, #:lo12:ptr
        ldr     x13, [x13]
        //  %r127 = add i32 %r126, 1

        mov     x14, #1
        add     x13, x13, x14
        //  store i32 %r127, i32* @ptr

        adrp     x14, ptr
        add     x14, x14, #:lo12:ptr
        str     x13, [x14]
        //  br label %bb11


        b     bb11
        //bb10:

bb10:

        //  br label %bb11


        b     bb11
        //bb11:

bb11:

        //  %r128 = load i32, i32* %r114

        ldr     x13, [x11]
        //  %r129 = icmp eq i32 %r128, 60

        mov     x14, #60
        cmp     x13, x14
        //  br i1 %r129, label %bb12, label %bb13


        b.eq     bb12
        b     bb13
        //bb12:

bb12:

        //  %r130 = load i32, i32* @ptr

        adrp     x13, ptr
        add     x13, x13, #:lo12:ptr
        ldr     x13, [x13]
        //  %r131 = sub i32 %r130, 1

        mov     x14, #1
        sub     x13, x13, x14
        //  store i32 %r131, i32* @ptr

        adrp     x14, ptr
        add     x14, x14, #:lo12:ptr
        str     x13, [x14]
        //  br label %bb14


        b     bb14
        //bb13:

bb13:

        //  br label %bb14


        b     bb14
        //bb14:

bb14:

        //  %r132 = load i32, i32* %r114

        ldr     x13, [x11]
        //  %r133 = icmp eq i32 %r132, 43

        mov     x14, #43
        cmp     x13, x14
        //  br i1 %r133, label %bb15, label %bb16


        b.eq     bb15
        b     bb16
        //bb15:

bb15:

        //  %r134 = load i32, i32* @ptr

        adrp     x13, ptr
        add     x13, x13, #:lo12:ptr
        ldr     x13, [x13]
        //  %r135 = getelementptr [65536 x i32 ], [65536 x i32 ]* @tape, i32 0, i32 %r134

        mov     x14, #8
        mul     x13, x14, x13
        adrp     x14, tape
        add     x14, x14, #:lo12:tape
        add     x13, x14, x13
        //  %r136 = load i32, i32* %r135

        ldr     x13, [x13]
        //  %r137 = add i32 %r136, 1

        mov     x14, #1
        add     x13, x13, x14
        //  %r138 = load i32, i32* @ptr

        adrp     x14, ptr
        add     x14, x14, #:lo12:ptr
        ldr     x14, [x14]
        //  %r139 = getelementptr [65536 x i32 ], [65536 x i32 ]* @tape, i32 0, i32 %r138

        mov     x15, #8
        mul     x14, x15, x14
        adrp     x15, tape
        add     x15, x15, #:lo12:tape
        add     x14, x15, x14
        //  store i32 %r137, i32* %r139

        str     x13, [x14]
        //  br label %bb17


        b     bb17
        //bb16:

bb16:

        //  br label %bb17


        b     bb17
        //bb17:

bb17:

        //  %r140 = load i32, i32* %r114

        ldr     x13, [x11]
        //  %r141 = icmp eq i32 %r140, 45

        mov     x14, #45
        cmp     x13, x14
        //  br i1 %r141, label %bb18, label %bb19


        b.eq     bb18
        b     bb19
        //bb18:

bb18:

        //  %r142 = load i32, i32* @ptr

        adrp     x13, ptr
        add     x13, x13, #:lo12:ptr
        ldr     x13, [x13]
        //  %r143 = getelementptr [65536 x i32 ], [65536 x i32 ]* @tape, i32 0, i32 %r142

        mov     x14, #8
        mul     x13, x14, x13
        adrp     x14, tape
        add     x14, x14, #:lo12:tape
        add     x13, x14, x13
        //  %r144 = load i32, i32* %r143

        ldr     x13, [x13]
        //  %r145 = sub i32 %r144, 1

        mov     x14, #1
        sub     x14, x13, x14
        //  %r146 = load i32, i32* @ptr

        adrp     x13, ptr
        add     x13, x13, #:lo12:ptr
        ldr     x13, [x13]
        //  %r147 = getelementptr [65536 x i32 ], [65536 x i32 ]* @tape, i32 0, i32 %r146

        mov     x15, #8
        mul     x13, x15, x13
        adrp     x15, tape
        add     x15, x15, #:lo12:tape
        add     x13, x15, x13
        //  store i32 %r145, i32* %r147

        str     x14, [x13]
        //  br label %bb20


        b     bb20
        //bb19:

bb19:

        //  br label %bb20


        b     bb20
        //bb20:

bb20:

        //  %r148 = load i32, i32* %r114

        ldr     x13, [x11]
        //  %r149 = icmp eq i32 %r148, 46

        mov     x14, #46
        cmp     x13, x14
        //  br i1 %r149, label %bb21, label %bb22


        b.eq     bb21
        b     bb22
        //bb21:

bb21:

        //  %r150 = load i32, i32* @ptr

        adrp     x13, ptr
        add     x13, x13, #:lo12:ptr
        ldr     x13, [x13]
        //  %r151 = getelementptr [65536 x i32 ], [65536 x i32 ]* @tape, i32 0, i32 %r150

        mov     x14, #8
        mul     x13, x14, x13
        adrp     x14, tape
        add     x14, x14, #:lo12:tape
        add     x13, x14, x13
        //  %r152 = load i32, i32* %r151

        ldr     x13, [x13]
        //  call void @putch(i32 %r152)

        mov     x0, x13
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

        //  %r153 = load i32, i32* %r114

        ldr     x13, [x11]
        //  %r154 = icmp eq i32 %r153, 44

        mov     x14, #44
        cmp     x13, x14
        //  br i1 %r154, label %bb24, label %bb25


        b.eq     bb24
        b     bb25
        //bb24:

bb24:

        //  %r155 = call i32 @getch()

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
        mov     x14, x0
        //  %r156 = load i32, i32* @ptr

        adrp     x13, ptr
        add     x13, x13, #:lo12:ptr
        ldr     x13, [x13]
        //  %r157 = getelementptr [65536 x i32 ], [65536 x i32 ]* @tape, i32 0, i32 %r156

        mov     x15, #8
        mul     x13, x15, x13
        adrp     x15, tape
        add     x15, x15, #:lo12:tape
        add     x13, x15, x13
        //  store i32 %r155, i32* %r157

        str     x14, [x13]
        //  br label %bb26


        b     bb26
        //bb25:

bb25:

        //  br label %bb26


        b     bb26
        //bb26:

bb26:

        //  %r159 = load i32, i32* %r114

        ldr     x13, [x11]
        //  %r160 = icmp eq i32 %r159, 93

        mov     x14, #93
        cmp     x13, x14
        //  br i1 %r160, label %bb30, label %bb28


        b.eq     bb30
        b     bb28
        //bb30:

bb30:

        //  %r161 = load i32, i32* @ptr

        adrp     x13, ptr
        add     x13, x13, #:lo12:ptr
        ldr     x13, [x13]
        //  %r162 = getelementptr [65536 x i32 ], [65536 x i32 ]* @tape, i32 0, i32 %r161

        mov     x14, #8
        mul     x14, x14, x13
        adrp     x13, tape
        add     x13, x13, #:lo12:tape
        add     x13, x13, x14
        //  %r163 = load i32, i32* %r162

        ldr     x13, [x13]
        //  %r164 = icmp ne i32 %r163, 0

        mov     x14, #0
        cmp     x13, x14
        //  br i1 %r164, label %bb27, label %bb28


        b.ne     bb27
        b     bb28
        //bb27:

bb27:

        //  store i32 1, i32* %r115

        mov     x13, #1
        str     x13, [x10]
        //  br label %bb31


        b     bb31
        //bb31:

bb31:

        //  %r165 = load i32, i32* %r115

        ldr     x13, [x10]
        //  %r166 = icmp sgt i32 %r165, 0

        mov     x14, #0
        cmp     x13, x14
        //  br i1 %r166, label %bb32, label %bb33


        b.gt     bb32
        b     bb33
        //bb32:

bb32:

        //  %r167 = load i32, i32* %r116

        ldr     x13, [x9]
        //  %r168 = sub i32 %r167, 1

        mov     x14, #1
        sub     x13, x13, x14
        //  store i32 %r168, i32* %r116

        str     x13, [x9]
        //  %r169 = load i32, i32* %r116

        ldr     x13, [x9]
        //  %r170 = getelementptr i32, i32* %r113, i32 %r169

        mov     x14, #8
        mul     x13, x14, x13
        add     x13, x12, x13
        //  %r171 = load i32, i32* %r170

        ldr     x13, [x13]
        //  store i32 %r171, i32* %r114

        str     x13, [x11]
        //  %r172 = load i32, i32* %r114

        ldr     x13, [x11]
        //  %r173 = icmp eq i32 %r172, 91

        mov     x14, #91
        cmp     x13, x14
        //  br i1 %r173, label %bb34, label %bb35


        b.eq     bb34
        b     bb35
        //bb34:

bb34:

        //  %r174 = load i32, i32* %r115

        ldr     x14, [x10]
        //  %r175 = sub i32 %r174, 1

        mov     x13, #1
        sub     x13, x14, x13
        //  store i32 %r175, i32* %r115

        str     x13, [x10]
        //  br label %bb36


        b     bb36
        //bb35:

bb35:

        //  br label %bb36


        b     bb36
        //bb36:

bb36:

        //  %r176 = load i32, i32* %r114

        ldr     x14, [x11]
        //  %r177 = icmp eq i32 %r176, 93

        mov     x13, #93
        cmp     x14, x13
        //  br i1 %r177, label %bb37, label %bb38


        b.eq     bb37
        b     bb38
        //bb37:

bb37:

        //  %r178 = load i32, i32* %r115

        ldr     x14, [x10]
        //  %r179 = add i32 %r178, 1

        mov     x13, #1
        add     x13, x14, x13
        //  store i32 %r179, i32* %r115

        str     x13, [x10]
        //  br label %bb39


        b     bb39
        //bb38:

bb38:

        //  br label %bb39


        b     bb39
        //bb39:

bb39:

        //  br label %bb31


        b     bb31
        //bb33:

bb33:

        //  br label %bb29


        b     bb29
        //bb28:

bb28:

        //  br label %bb29


        b     bb29
        //bb29:

bb29:

        //  %r180 = load i32, i32* %r116

        ldr     x14, [x9]
        //  %r181 = add i32 %r180, 1

        mov     x13, #1
        add     x13, x14, x13
        //  store i32 %r181, i32* %r116

        str     x13, [x9]
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
