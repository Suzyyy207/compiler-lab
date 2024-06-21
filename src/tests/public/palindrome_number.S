.section .data
.section .text
.global getch
.global getint
.global putch
.global putint
.global putarray
.global _sysy_starttime
.global _sysy_stoptime
.global mod
.global palindrome
.global main
        sub     sp, sp, #0
mod:

        //103:x29,#-16

        //101:x29,#-8

        //bb2:

bb2:

        //  %r101 = alloca i32

        mov     x16, #16
        sub     sp, sp, x16
        mov     x9, x0
        mov     x11, x1
        //  store i32 %r100, i32* %r101

        str     x9, [x10]
        //  %r103 = alloca i32

        //  store i32 %r102, i32* %r103

        str     x11, [x12]
        //  br label %bb1


        b     bb1
        //bb1:

bb1:

        //  %r104 = load i32, i32* %r101

        ldr     x9, [x10]
        //  %r105 = load i32, i32* %r101

        ldr     x10, [x10]
        //  %r106 = load i32, i32* %r103

        ldr     x11, [x12]
        //  %r107 = sdiv i32 %r105, %r106

        sdiv     x10, x10, x11
        //  %r108 = load i32, i32* %r103

        ldr     x11, [x12]
        //  %r109 = mul i32 %r107, %r108

        mul     x10, x10, x11
        //  %r110 = sub i32 %r104, %r109

        sub     x9, x9, x10
        //  ret i32 %r110

        mov     x0, x9
        mov     sp, x29
        ret
        sub     sp, sp, #0
palindrome:

        //112:x29,#-56

        //113:x29,#-48

        //114:x29,#-16

        //115:x29,#-8

        //bb4:

bb4:

        //  %r115 = alloca i32

        mov     x16, #64
        sub     sp, sp, x16
        mov     x12, x0
        //  %r114 = alloca i32

        //  %r113 = alloca [ 4 x i32 ]

        //  %r112 = alloca i32

        //  store i32 %r111, i32* %r112

        str     x12, [x9]
        //  br label %bb3


        b     bb3
        //bb3:

bb3:

        //  store i32 0, i32* %r114

        mov     x12, #0
        str     x12, [x10]
        //  br label %bb5


        b     bb5
        //bb5:

bb5:

        //  %r116 = load i32, i32* %r114

        ldr     x12, [x10]
        //  %r117 = icmp slt i32 %r116, 4

        mov     x13, #4
        cmp     x12, x13
        //  br i1 %r117, label %bb6, label %bb7


        b.lt     bb6
        b     bb7
        //bb6:

bb6:

        //  %r118 = load i32, i32* %r112

        ldr     x12, [x9]
        //  %r119 = call i32 @mod(i32 %r118, i32 10)

        mov     x0, x12
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
        mov     x14, x0
        //  %r120 = load i32, i32* %r114

        ldr     x12, [x10]
        //  %r121 = getelementptr [4 x i32 ], [4 x i32 ]* %r113, i32 0, i32 %r120

        mov     x13, #8
        mul     x12, x13, x12
        add     x13, x29, #-48
        add     x12, x13, x12
        //  store i32 %r119, i32* %r121

        str     x14, [x12]
        //  %r122 = load i32, i32* %r112

        ldr     x13, [x9]
        //  %r123 = sdiv i32 %r122, 10

        mov     x12, #10
        sdiv     x12, x13, x12
        //  store i32 %r123, i32* %r112

        str     x12, [x9]
        //  %r124 = load i32, i32* %r114

        ldr     x13, [x10]
        //  %r125 = add i32 %r124, 1

        mov     x12, #1
        add     x12, x13, x12
        //  store i32 %r125, i32* %r114

        str     x12, [x10]
        //  br label %bb5


        b     bb5
        //bb7:

bb7:

        //  %r127 = getelementptr [4 x i32 ], [4 x i32 ]* %r113, i32 0, i32 0

        mov     x9, #8
        mov     x10, #0
        mul     x9, x9, x10
        add     x10, x29, #-48
        add     x9, x10, x9
        //  %r128 = load i32, i32* %r127

        ldr     x10, [x9]
        //  %r129 = getelementptr [4 x i32 ], [4 x i32 ]* %r113, i32 0, i32 3

        mov     x9, #8
        mov     x12, #3
        mul     x9, x9, x12
        add     x12, x29, #-48
        add     x9, x12, x9
        //  %r130 = load i32, i32* %r129

        ldr     x9, [x9]
        //  %r131 = icmp eq i32 %r128, %r130

        cmp     x10, x9
        //  br i1 %r131, label %bb11, label %bb9


        b.eq     bb11
        b     bb9
        //bb11:

bb11:

        //  %r132 = getelementptr [4 x i32 ], [4 x i32 ]* %r113, i32 0, i32 1

        mov     x9, #8
        mov     x10, #1
        mul     x9, x9, x10
        add     x10, x29, #-48
        add     x9, x10, x9
        //  %r133 = load i32, i32* %r132

        ldr     x10, [x9]
        //  %r134 = getelementptr [4 x i32 ], [4 x i32 ]* %r113, i32 0, i32 2

        mov     x12, #8
        mov     x9, #2
        mul     x9, x12, x9
        add     x12, x29, #-48
        add     x9, x12, x9
        //  %r135 = load i32, i32* %r134

        ldr     x9, [x9]
        //  %r136 = icmp eq i32 %r133, %r135

        cmp     x10, x9
        //  br i1 %r136, label %bb8, label %bb9


        b.eq     bb8
        b     bb9
        //bb8:

bb8:

        //  store i32 1, i32* %r115

        mov     x9, #1
        str     x9, [x11]
        //  br label %bb10


        b     bb10
        //bb9:

bb9:

        //  store i32 0, i32* %r115

        mov     x9, #0
        str     x9, [x11]
        //  br label %bb10


        b     bb10
        //bb10:

bb10:

        //  %r137 = load i32, i32* %r115

        ldr     x9, [x11]
        //  ret i32 %r137

        mov     x0, x9
        mov     sp, x29
        ret
        sub     sp, sp, #0
main:

        //139:x29,#-16

        //138:x29,#-8

        //bb12:

bb12:

        //  call void @_sysy_starttime(i32 30)

        mov     x16, #16
        sub     sp, sp, x16
        mov     x0, #30
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
        //  %r138 = alloca i32

        //  store i32 1221, i32* %r138

        mov     x10, #1221
        str     x10, [x12]
        //  %r139 = alloca i32

        //  %r140 = load i32, i32* %r138

        ldr     x10, [x12]
        //  %r141 = call i32 @palindrome(i32 %r140)

        mov     x0, x10
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     palindrome
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x10, x0
        //  store i32 %r141, i32* %r139

        str     x10, [x9]
        //  %r142 = load i32, i32* %r139

        ldr     x11, [x9]
        //  %r143 = icmp eq i32 %r142, 1

        mov     x10, #1
        cmp     x11, x10
        //  br i1 %r143, label %bb13, label %bb14


        b.eq     bb13
        b     bb14
        //bb13:

bb13:

        //  %r144 = load i32, i32* %r138

        //  %r145 = load i32, i32* %r138

        ldr     x10, [x12]
        //  call void @putint(i32 %r145)

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
        //  br label %bb15


        b     bb15
        //bb14:

bb14:

        //  store i32 0, i32* %r139

        mov     x10, #0
        str     x10, [x9]
        //  %r146 = load i32, i32* %r139

        //  %r147 = load i32, i32* %r139

        ldr     x10, [x9]
        //  call void @putint(i32 %r147)

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
        //  br label %bb15


        b     bb15
        //bb15:

bb15:

        //  store i32 10, i32* %r139

        mov     x10, #10
        str     x10, [x9]
        //  %r148 = load i32, i32* %r139

        //  %r149 = load i32, i32* %r139

        ldr     x9, [x9]
        //  call void @putch(i32 %r149)

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
        //  call void @_sysy_stoptime(i32 47)

        mov     x0, #47
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
