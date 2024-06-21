.section .data
.section .text
.global getch
.global getint
.global putch
.global putint
.global putarray
.global _sysy_starttime
.global _sysy_stoptime
.global main
        sub     sp, sp, #16
main:

        //111:x29,#-40

        //112:x29,#-32

        //100:x29,#-48

        //113:x29,#-24

        //101:x29,#-56

        //114:x29,#-16

        //102:x29,#-136

        //115:x29,#-8

        //bb1:

bb1:

        sub     sp, sp, #16
        //  %r115 = alloca i32

        mov     x16, #11
        sub     sp, sp, x16
        //  %r114 = alloca i32

        //  %r113 = alloca i32

        //  %r112 = alloca i32

        //  %r111 = alloca i32

        //  call void @_sysy_starttime(i32 3)

        mov     x0, #3
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
        //  %r100 = alloca i32

        //  %r101 = alloca i32

        //  %r102 = alloca [ 10 x i32 ]

        //  store i32 0, i32* %r101

        mov     x11, #0
        str     x11, [x14]
        //  store i32 0, i32* %r100

        mov     x11, #0
        str     x11, [x16]
        add     x16, sp, #0
        str     x16, [x16]
        //  br label %bb2


        b     bb2
        //bb2:

bb2:

        //  %r103 = load i32, i32* %r100

        add     x17, sp, #0
        ldr     x17, [x17]
        ldr     x14, [x17]
        //  %r104 = icmp slt i32 %r103, 10

        mov     x11, #10
        cmp     x14, x11
        //  br i1 %r104, label %bb3, label %bb4


        b.lt     bb3
        b     bb4
        //bb3:

bb3:

        //  %r105 = load i32, i32* %r100

        add     x18, sp, #0
        ldr     x18, [x18]
        ldr     x11, [x18]
        //  %r106 = add i32 %r105, 1

        mov     x14, #1
        add     x14, x11, x14
        //  %r107 = load i32, i32* %r100

        add     x19, sp, #0
        ldr     x19, [x19]
        ldr     x11, [x19]
        //  %r108 = getelementptr [10 x i32 ], [10 x i32 ]* %r102, i32 0, i32 %r107

        mov     x15, #8
        mul     x11, x15, x11
        add     x15, x29, #-136
        add     x11, x15, x11
        //  store i32 %r106, i32* %r108

        str     x14, [x11]
        //  %r109 = load i32, i32* %r100

        add     x16, sp, #0
        ldr     x16, [x16]
        ldr     x14, [x16]
        //  %r110 = add i32 %r109, 1

        mov     x11, #1
        add     x11, x14, x11
        //  store i32 %r110, i32* %r100

        str     x11, [x17]
        add     x17, sp, #0
        str     x17, [x17]
        //  br label %bb2


        b     bb2
        //bb4:

bb4:

        //  store i32 10, i32* %r115

        mov     x11, #10
        str     x11, [x18]
        add     x18, sp, #8
        str     x18, [x18]
        //  %r116 = call i32 @getint()

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
        //  store i32 %r116, i32* %r111

        str     x11, [x13]
        //  %r117 = load i32, i32* %r115

        add     x19, sp, #8
        ldr     x19, [x19]
        ldr     x14, [x19]
        //  %r118 = sub i32 %r117, 1

        mov     x11, #1
        sub     x11, x14, x11
        //  store i32 %r118, i32* %r112

        str     x11, [x12]
        //  store i32 0, i32* %r113

        mov     x11, #0
        str     x11, [x10]
        //  %r119 = load i32, i32* %r112

        ldr     x11, [x12]
        //  %r120 = load i32, i32* %r113

        ldr     x14, [x10]
        //  %r121 = add i32 %r119, %r120

        add     x11, x11, x14
        //  %r122 = sdiv i32 %r121, 2

        mov     x14, #2
        sdiv     x11, x11, x14
        //  store i32 %r122, i32* %r114

        str     x11, [x9]
        //  br label %bb5


        b     bb5
        //bb5:

bb5:

        //  %r124 = load i32, i32* %r114

        ldr     x11, [x9]
        //  %r125 = getelementptr [10 x i32 ], [10 x i32 ]* %r102, i32 0, i32 %r124

        mov     x14, #8
        mul     x11, x14, x11
        add     x14, x29, #-136
        add     x11, x14, x11
        //  %r126 = load i32, i32* %r125

        ldr     x11, [x11]
        //  %r127 = load i32, i32* %r111

        ldr     x14, [x13]
        //  %r128 = icmp ne i32 %r126, %r127

        cmp     x11, x14
        //  br i1 %r128, label %bb8, label %bb7


        b.ne     bb8
        b     bb7
        //bb8:

bb8:

        //  %r129 = load i32, i32* %r113

        ldr     x14, [x10]
        //  %r130 = load i32, i32* %r112

        ldr     x11, [x12]
        //  %r131 = icmp slt i32 %r129, %r130

        cmp     x14, x11
        //  br i1 %r131, label %bb6, label %bb7


        b.lt     bb6
        b     bb7
        //bb6:

bb6:

        //  %r132 = load i32, i32* %r112

        ldr     x11, [x12]
        //  %r133 = load i32, i32* %r113

        ldr     x14, [x10]
        //  %r134 = add i32 %r132, %r133

        add     x11, x11, x14
        //  %r135 = sdiv i32 %r134, 2

        mov     x14, #2
        sdiv     x11, x11, x14
        //  store i32 %r135, i32* %r114

        str     x11, [x9]
        //  %r136 = load i32, i32* %r111

        ldr     x11, [x13]
        //  %r137 = load i32, i32* %r114

        ldr     x14, [x9]
        //  %r138 = getelementptr [10 x i32 ], [10 x i32 ]* %r102, i32 0, i32 %r137

        mov     x15, #8
        mul     x14, x15, x14
        add     x15, x29, #-136
        add     x14, x15, x14
        //  %r139 = load i32, i32* %r138

        ldr     x14, [x14]
        //  %r140 = icmp slt i32 %r136, %r139

        cmp     x11, x14
        //  br i1 %r140, label %bb9, label %bb10


        b.lt     bb9
        b     bb10
        //bb9:

bb9:

        //  %r141 = load i32, i32* %r114

        ldr     x11, [x9]
        //  %r142 = sub i32 %r141, 1

        mov     x14, #1
        sub     x11, x11, x14
        //  store i32 %r142, i32* %r112

        str     x11, [x12]
        //  br label %bb11


        b     bb11
        //bb10:

bb10:

        //  %r143 = load i32, i32* %r114

        ldr     x11, [x9]
        //  %r144 = add i32 %r143, 1

        mov     x14, #1
        add     x11, x11, x14
        //  store i32 %r144, i32* %r113

        str     x11, [x10]
        //  br label %bb11


        b     bb11
        //bb11:

bb11:

        //  br label %bb5


        b     bb5
        //bb7:

bb7:

        //  %r145 = load i32, i32* %r111

        ldr     x10, [x13]
        //  %r146 = load i32, i32* %r114

        ldr     x9, [x9]
        //  %r147 = getelementptr [10 x i32 ], [10 x i32 ]* %r102, i32 0, i32 %r146

        mov     x11, #8
        mul     x9, x11, x9
        add     x11, x29, #-136
        add     x9, x11, x9
        //  %r148 = load i32, i32* %r147

        ldr     x9, [x9]
        //  %r149 = icmp eq i32 %r145, %r148

        cmp     x10, x9
        //  br i1 %r149, label %bb12, label %bb13


        b.eq     bb12
        b     bb13
        //bb12:

bb12:

        //  %r150 = load i32, i32* %r111

        //  %r151 = load i32, i32* %r111

        ldr     x9, [x13]
        //  call void @putint(i32 %r151)

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
        //  br label %bb14


        b     bb14
        //bb13:

bb13:

        //  store i32 0, i32* %r111

        mov     x9, #0
        str     x9, [x13]
        //  %r152 = load i32, i32* %r111

        //  %r153 = load i32, i32* %r111

        ldr     x9, [x13]
        //  call void @putint(i32 %r153)

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
        //  br label %bb14


        b     bb14
        //bb14:

bb14:

        //  store i32 10, i32* %r111

        mov     x9, #10
        str     x9, [x13]
        //  %r154 = load i32, i32* %r111

        //  %r155 = load i32, i32* %r111

        ldr     x9, [x13]
        //  call void @putch(i32 %r155)

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
        //  call void @_sysy_stoptime(i32 49)

        mov     x0, #49
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
