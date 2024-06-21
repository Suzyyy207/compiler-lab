.section .data
.global    N
N:
        .quad   0
.section .text
.global getch
.global getint
.global putch
.global putint
.global putarray
.global _sysy_starttime
.global _sysy_stoptime
.global insert
.global main
        sub     sp, sp, #24
insert:

        //102:x29,#-32

        //103:x29,#-24

        //104:x29,#-16

        //120:x29,#-8

        //bb2:

bb2:

        sub     sp, sp, #24
        //  %r120 = alloca i32

        mov     x16, #32
        sub     sp, sp, x16
        mov     x10, x0
        mov     x13, x1
        //  %r104 = alloca i32

        //  %r103 = alloca i32

        //  %r102 = alloca i32

        //  store i32 %r101, i32* %r102

        str     x13, [x11]
        //  br label %bb1


        b     bb1
        //bb1:

bb1:

        //  store i32 0, i32* %r103

        mov     x13, #0
        str     x13, [x12]
        //  br label %bb3


        b     bb3
        //bb3:

bb3:

        //  %r106 = load i32, i32* %r102

        ldr     x15, [x11]
        //  %r107 = load i32, i32* %r103

        ldr     x16, [x12]
        add     x16, sp, #0
        str     x16, [x16]
        //  %r108 = getelementptr i32, i32* %r100, i32 %r107

        mov     x13, #8
        add     x17, sp, #0
        ldr     x17, [x17]
        mul     x13, x13, x17
        add     x13, x10, x13
        //  %r109 = load i32, i32* %r108

        ldr     x13, [x13]
        //  %r110 = icmp sgt i32 %r106, %r109

        cmp     x15, x13
        //  br i1 %r110, label %bb6, label %bb5


        b.gt     bb6
        b     bb5
        //bb6:

bb6:

        //  %r111 = load i32, i32* %r103

        ldr     x13, [x12]
        //  %r112 = load i32, i32* @N

        adrp     x15, N
        add     x15, x15, #:lo12:N
        ldr     x15, [x15]
        //  %r113 = icmp slt i32 %r111, %r112

        cmp     x13, x15
        //  br i1 %r113, label %bb4, label %bb5


        b.lt     bb4
        b     bb5
        //bb4:

bb4:

        //  %r114 = load i32, i32* %r103

        ldr     x13, [x12]
        //  %r115 = add i32 %r114, 1

        mov     x15, #1
        add     x13, x13, x15
        //  store i32 %r115, i32* %r103

        str     x13, [x12]
        //  br label %bb3


        b     bb3
        //bb5:

bb5:

        //  %r116 = load i32, i32* @N

        adrp     x13, N
        add     x13, x13, #:lo12:N
        ldr     x13, [x13]
        //  store i32 %r116, i32* %r104

        str     x13, [x14]
        //  br label %bb7


        b     bb7
        //bb7:

bb7:

        //  %r117 = load i32, i32* %r104

        ldr     x15, [x14]
        //  %r118 = load i32, i32* %r103

        ldr     x13, [x12]
        //  %r119 = icmp sgt i32 %r117, %r118

        cmp     x15, x13
        //  br i1 %r119, label %bb8, label %bb9


        b.gt     bb8
        b     bb9
        //bb8:

bb8:

        //  %r121 = load i32, i32* %r104

        ldr     x13, [x14]
        //  %r122 = sub i32 %r121, 1

        mov     x15, #1
        sub     x13, x13, x15
        //  store i32 %r122, i32* %r120

        str     x13, [x9]
        //  %r123 = load i32, i32* %r120

        ldr     x13, [x9]
        //  %r124 = getelementptr i32, i32* %r100, i32 %r123

        mov     x15, #8
        mul     x13, x15, x13
        add     x13, x10, x13
        //  %r125 = load i32, i32* %r124

        ldr     x15, [x13]
        //  %r126 = load i32, i32* %r104

        ldr     x13, [x14]
        //  %r127 = getelementptr i32, i32* %r100, i32 %r126

        mov     x18, #8
        add     x18, sp, #8
        str     x18, [x18]
        mul     x13, x18, x13
        add     x13, x10, x13
        //  store i32 %r125, i32* %r127

        str     x15, [x13]
        //  %r128 = load i32, i32* %r102

        ldr     x13, [x11]
        //  %r129 = load i32, i32* %r103

        ldr     x15, [x12]
        //  %r130 = getelementptr i32, i32* %r100, i32 %r129

        mov     x19, #8
        add     x19, sp, #16
        str     x19, [x19]
        mul     x15, x19, x15
        add     x15, x10, x15
        //  store i32 %r128, i32* %r130

        str     x13, [x15]
        //  %r131 = load i32, i32* %r104

        ldr     x13, [x14]
        //  %r132 = sub i32 %r131, 1

        mov     x15, #1
        sub     x13, x13, x15
        //  store i32 %r132, i32* %r104

        str     x13, [x14]
        //  br label %bb7


        b     bb7
        //bb9:

bb9:

        //  ret i32 0

        mov     x9, #0
        mov     x0, x9
        mov     sp, x29
        ret
        sub     sp, sp, #0
main:

        //145:x29,#-104

        //144:x29,#-96

        //133:x29,#-88

        //bb10:

bb10:

        //  call void @_sysy_starttime(i32 27)

        mov     x16, #112
        sub     sp, sp, x16
        mov     x0, #27
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
        //  store i32 10, i32* @N

        mov     x12, #10
        adrp     x13, N
        add     x13, x13, #:lo12:N
        str     x12, [x13]
        //  %r133 = alloca [ 11 x i32 ]

        //  %r134 = getelementptr [11 x i32 ], [11 x i32 ]* %r133, i32 0, i32 0

        mov     x13, #8
        mov     x12, #0
        mul     x13, x13, x12
        add     x12, x29, #-88
        add     x13, x12, x13
        //  store i32 1, i32* %r134

        mov     x12, #1
        str     x12, [x13]
        //  %r135 = getelementptr [11 x i32 ], [11 x i32 ]* %r133, i32 0, i32 1

        mov     x13, #8
        mov     x12, #1
        mul     x13, x13, x12
        add     x12, x29, #-88
        add     x13, x12, x13
        //  store i32 3, i32* %r135

        mov     x12, #3
        str     x12, [x13]
        //  %r136 = getelementptr [11 x i32 ], [11 x i32 ]* %r133, i32 0, i32 2

        mov     x13, #8
        mov     x12, #2
        mul     x13, x13, x12
        add     x12, x29, #-88
        add     x12, x12, x13
        //  store i32 4, i32* %r136

        mov     x13, #4
        str     x13, [x12]
        //  %r137 = getelementptr [11 x i32 ], [11 x i32 ]* %r133, i32 0, i32 3

        mov     x13, #8
        mov     x12, #3
        mul     x13, x13, x12
        add     x12, x29, #-88
        add     x13, x12, x13
        //  store i32 7, i32* %r137

        mov     x12, #7
        str     x12, [x13]
        //  %r138 = getelementptr [11 x i32 ], [11 x i32 ]* %r133, i32 0, i32 4

        mov     x13, #8
        mov     x12, #4
        mul     x13, x13, x12
        add     x12, x29, #-88
        add     x13, x12, x13
        //  store i32 8, i32* %r138

        mov     x12, #8
        str     x12, [x13]
        //  %r139 = getelementptr [11 x i32 ], [11 x i32 ]* %r133, i32 0, i32 5

        mov     x13, #8
        mov     x12, #5
        mul     x12, x13, x12
        add     x13, x29, #-88
        add     x12, x13, x12
        //  store i32 11, i32* %r139

        mov     x13, #11
        str     x13, [x12]
        //  %r140 = getelementptr [11 x i32 ], [11 x i32 ]* %r133, i32 0, i32 6

        mov     x12, #8
        mov     x13, #6
        mul     x12, x12, x13
        add     x13, x29, #-88
        add     x12, x13, x12
        //  store i32 13, i32* %r140

        mov     x13, #13
        str     x13, [x12]
        //  %r141 = getelementptr [11 x i32 ], [11 x i32 ]* %r133, i32 0, i32 7

        mov     x12, #8
        mov     x13, #7
        mul     x12, x12, x13
        add     x13, x29, #-88
        add     x12, x13, x12
        //  store i32 18, i32* %r141

        mov     x13, #18
        str     x13, [x12]
        //  %r142 = getelementptr [11 x i32 ], [11 x i32 ]* %r133, i32 0, i32 8

        mov     x12, #8
        mov     x13, #8
        mul     x12, x12, x13
        add     x13, x29, #-88
        add     x12, x13, x12
        //  store i32 56, i32* %r142

        mov     x13, #56
        str     x13, [x12]
        //  %r143 = getelementptr [11 x i32 ], [11 x i32 ]* %r133, i32 0, i32 9

        mov     x12, #8
        mov     x13, #9
        mul     x12, x12, x13
        add     x13, x29, #-88
        add     x12, x13, x12
        //  store i32 78, i32* %r143

        mov     x13, #78
        str     x13, [x12]
        //  %r144 = alloca i32

        //  %r145 = alloca i32

        //  store i32 0, i32* %r145

        mov     x12, #0
        str     x12, [x9]
        //  %r146 = call i32 @getint()

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
        mov     x12, x0
        //  store i32 %r146, i32* %r144

        str     x12, [x10]
        //  %r147 = load i32, i32* %r144

        ldr     x12, [x10]
        //  %r148 = call i32 @insert(i32* %r133, i32 %r147)

        mov     x0, x11
        mov     x1, x12
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     insert
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x11, x0
        //  store i32 %r148, i32* %r144

        str     x11, [x10]
        //  br label %bb11


        b     bb11
        //bb11:

bb11:

        //  %r149 = load i32, i32* %r145

        ldr     x11, [x9]
        //  %r150 = load i32, i32* @N

        adrp     x12, N
        add     x12, x12, #:lo12:N
        ldr     x12, [x12]
        //  %r151 = icmp slt i32 %r149, %r150

        cmp     x11, x12
        //  br i1 %r151, label %bb12, label %bb13


        b.lt     bb12
        b     bb13
        //bb12:

bb12:

        //  %r152 = load i32, i32* %r145

        ldr     x11, [x9]
        //  %r153 = getelementptr [11 x i32 ], [11 x i32 ]* %r133, i32 0, i32 %r152

        mov     x12, #8
        mul     x11, x12, x11
        add     x12, x29, #-88
        add     x11, x12, x11
        //  %r154 = load i32, i32* %r153

        ldr     x11, [x11]
        //  store i32 %r154, i32* %r144

        str     x11, [x10]
        //  %r155 = load i32, i32* %r144

        //  %r156 = load i32, i32* %r144

        ldr     x11, [x10]
        //  call void @putint(i32 %r156)

        mov     x0, x11
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
        //  store i32 10, i32* %r144

        mov     x11, #10
        str     x11, [x10]
        //  %r157 = load i32, i32* %r144

        //  %r158 = load i32, i32* %r144

        ldr     x11, [x10]
        //  call void @putch(i32 %r158)

        mov     x0, x11
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
        //  %r159 = load i32, i32* %r145

        ldr     x11, [x9]
        //  %r160 = add i32 %r159, 1

        mov     x12, #1
        add     x11, x11, x12
        //  store i32 %r160, i32* %r145

        str     x11, [x9]
        //  br label %bb11


        b     bb11
        //bb13:

bb13:

        //  call void @_sysy_stoptime(i32 54)

        mov     x0, #54
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
