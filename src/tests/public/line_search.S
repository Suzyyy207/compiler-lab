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
        sub     sp, sp, #32
main:

        //112:x29,#-48

        //100:x29,#-64

        //113:x29,#-40

        //101:x29,#-72

        //114:x29,#-32

        //102:x29,#-152

        //115:x29,#-24

        //123:x29,#-16

        //111:x29,#-56

        //124:x29,#-8

        //bb1:

bb1:

        sub     sp, sp, #32
        //  %r124 = alloca i32

        mov     x16, #9
        sub     sp, sp, x16
        //  %r123 = alloca i32

        //  %r115 = alloca i32

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
        ldr     x14, [x18]
        //  %r106 = add i32 %r105, 1

        mov     x11, #1
        add     x11, x14, x11
        //  %r107 = load i32, i32* %r100

        add     x19, sp, #0
        ldr     x19, [x19]
        ldr     x15, [x19]
        //  %r108 = getelementptr [10 x i32 ], [10 x i32 ]* %r102, i32 0, i32 %r107

        mov     x14, #8
        mul     x15, x14, x15
        add     x14, x29, #-152
        add     x14, x14, x15
        //  store i32 %r106, i32* %r108

        str     x11, [x14]
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

        str     x11, [x10]
        //  %r117 = load i32, i32* %r115

        add     x19, sp, #8
        ldr     x19, [x19]
        ldr     x14, [x19]
        //  %r118 = sub i32 %r117, 1

        mov     x11, #1
        sub     x11, x14, x11
        //  store i32 %r118, i32* %r112

        str     x11, [x9]
        //  store i32 0, i32* %r113

        mov     x11, #0
        str     x11, [x13]
        //  %r119 = load i32, i32* %r112

        ldr     x9, [x9]
        //  %r120 = load i32, i32* %r113

        ldr     x11, [x13]
        //  %r121 = add i32 %r119, %r120

        add     x11, x9, x11
        //  %r122 = sdiv i32 %r121, 2

        mov     x9, #2
        sdiv     x9, x11, x9
        //  store i32 %r122, i32* %r114

        str     x9, [x12]
        //  store i32 0, i32* %r123

        mov     x9, #0
        str     x9, [x16]
        add     x16, sp, #16
        str     x16, [x16]
        //  store i32 0, i32* %r100

        mov     x9, #0
        str     x9, [x17]
        add     x17, sp, #0
        str     x17, [x17]
        //  store i32 0, i32* %r124

        mov     x9, #0
        str     x9, [x18]
        add     x18, sp, #24
        str     x18, [x18]
        //  br label %bb5


        b     bb5
        //bb5:

bb5:

        //  %r126 = load i32, i32* %r100

        add     x19, sp, #0
        ldr     x19, [x19]
        ldr     x11, [x19]
        //  %r127 = icmp slt i32 %r126, 10

        mov     x9, #10
        cmp     x11, x9
        //  br i1 %r127, label %bb8, label %bb7


        b.lt     bb8
        b     bb7
        //bb8:

bb8:

        //  %r128 = load i32, i32* %r123

        add     x16, sp, #16
        ldr     x16, [x16]
        ldr     x11, [x16]
        //  %r129 = icmp eq i32 %r128, 0

        mov     x9, #0
        cmp     x11, x9
        //  br i1 %r129, label %bb6, label %bb7


        b.eq     bb6
        b     bb7
        //bb6:

bb6:

        //  %r130 = load i32, i32* %r100

        add     x17, sp, #0
        ldr     x17, [x17]
        ldr     x11, [x17]
        //  %r131 = getelementptr [10 x i32 ], [10 x i32 ]* %r102, i32 0, i32 %r130

        mov     x9, #8
        mul     x11, x9, x11
        add     x9, x29, #-152
        add     x9, x9, x11
        //  %r132 = load i32, i32* %r131

        ldr     x9, [x9]
        //  %r133 = load i32, i32* %r111

        ldr     x11, [x10]
        //  %r134 = icmp eq i32 %r132, %r133

        cmp     x9, x11
        //  br i1 %r134, label %bb9, label %bb10


        b.eq     bb9
        b     bb10
        //bb9:

bb9:

        //  store i32 1, i32* %r123

        mov     x9, #1
        str     x9, [x18]
        add     x18, sp, #16
        str     x18, [x18]
        //  %r135 = load i32, i32* %r100

        add     x19, sp, #0
        ldr     x19, [x19]
        ldr     x9, [x19]
        //  store i32 %r135, i32* %r124

        str     x9, [x16]
        add     x16, sp, #24
        str     x16, [x16]
        //  br label %bb11


        b     bb11
        //bb10:

bb10:

        //  br label %bb11


        b     bb11
        //bb11:

bb11:

        //  %r136 = load i32, i32* %r100

        add     x17, sp, #0
        ldr     x17, [x17]
        ldr     x9, [x17]
        //  %r137 = add i32 %r136, 1

        mov     x11, #1
        add     x9, x9, x11
        //  store i32 %r137, i32* %r100

        str     x9, [x18]
        add     x18, sp, #0
        str     x18, [x18]
        //  br label %bb5


        b     bb5
        //bb7:

bb7:

        //  %r138 = load i32, i32* %r123

        add     x19, sp, #16
        ldr     x19, [x19]
        ldr     x9, [x19]
        //  %r139 = icmp eq i32 %r138, 1

        mov     x11, #1
        cmp     x9, x11
        //  br i1 %r139, label %bb12, label %bb13


        b.eq     bb12
        b     bb13
        //bb12:

bb12:

        //  %r140 = load i32, i32* %r124

        //  %r141 = load i32, i32* %r124

        add     x16, sp, #24
        ldr     x16, [x16]
        ldr     x9, [x16]
        //  call void @putint(i32 %r141)

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
        str     x9, [x10]
        //  %r142 = load i32, i32* %r111

        //  %r143 = load i32, i32* %r111

        ldr     x9, [x10]
        //  call void @putint(i32 %r143)

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
        str     x9, [x10]
        //  %r144 = load i32, i32* %r111

        //  %r145 = load i32, i32* %r111

        ldr     x9, [x10]
        //  call void @putch(i32 %r145)

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
        //  call void @_sysy_stoptime(i32 53)

        mov     x0, #53
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
