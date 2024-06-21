.section .data
.section .text
.global getch
.global getint
.global putch
.global putint
.global putarray
.global _sysy_starttime
.global _sysy_stoptime
.global canJump
.global main
        sub     sp, sp, #48
canJump:

        //102:x29,#-112

        //110:x29,#-104

        //111:x29,#-24

        //120:x29,#-16

        //130:x29,#-8

        //bb2:

bb2:

        sub     sp, sp, #48
        //  %r130 = alloca i32

        mov     x16, #9
        sub     sp, sp, x16
        mov     x14, x0
        mov     x9, x1
        //  %r120 = alloca i32

        //  %r111 = alloca i32

        //  %r110 = alloca [ 10 x i32 ]

        //  %r102 = alloca i32

        //  store i32 %r101, i32* %r102

        str     x9, [x12]
        //  br label %bb1


        b     bb1
        //bb1:

bb1:

        //  %r103 = load i32, i32* %r102

        ldr     x9, [x12]
        //  %r104 = icmp eq i32 %r103, 1

        mov     x10, #1
        cmp     x9, x10
        //  br i1 %r104, label %bb3, label %bb4


        b.eq     bb3
        b     bb4
        //bb3:

bb3:

        //  ret i32 1

        mov     x9, #1
        mov     x0, x9
        mov     sp, x29
        ret
        //bb4:

bb4:

        //  br label %bb5


        b     bb5
        //bb5:

bb5:

        //  %r105 = getelementptr i32, i32* %r100, i32 0

        mov     x9, #8
        mov     x10, #0
        mul     x9, x9, x10
        add     x9, x14, x9
        //  %r106 = load i32, i32* %r105

        ldr     x10, [x9]
        //  %r107 = load i32, i32* %r102

        ldr     x9, [x12]
        //  %r108 = sub i32 %r107, 2

        mov     x16, #2
        add     x16, sp, #0
        str     x16, [x16]
        sub     x9, x9, x16
        //  %r109 = icmp sgt i32 %r106, %r108

        cmp     x10, x9
        //  br i1 %r109, label %bb6, label %bb7


        b.gt     bb6
        b     bb7
        //bb6:

bb6:

        //  ret i32 1

        mov     x9, #1
        mov     x0, x9
        mov     sp, x29
        ret
        //bb7:

bb7:

        //  br label %bb8


        b     bb8
        //bb8:

bb8:

        //  store i32 0, i32* %r111

        mov     x9, #0
        str     x9, [x11]
        //  br label %bb9


        b     bb9
        //bb9:

bb9:

        //  %r112 = load i32, i32* %r111

        ldr     x9, [x11]
        //  %r113 = load i32, i32* %r102

        ldr     x10, [x12]
        //  %r114 = sub i32 %r113, 1

        mov     x17, #1
        add     x17, sp, #8
        str     x17, [x17]
        sub     x10, x10, x17
        //  %r115 = icmp slt i32 %r112, %r114

        cmp     x9, x10
        //  br i1 %r115, label %bb10, label %bb11


        b.lt     bb10
        b     bb11
        //bb10:

bb10:

        //  %r116 = load i32, i32* %r111

        ldr     x9, [x11]
        //  %r117 = getelementptr [10 x i32 ], [10 x i32 ]* %r110, i32 0, i32 %r116

        mov     x10, #8
        mul     x9, x10, x9
        add     x10, x29, #-104
        add     x9, x10, x9
        //  store i32 0, i32* %r117

        mov     x10, #0
        str     x10, [x9]
        //  %r118 = load i32, i32* %r111

        ldr     x9, [x11]
        //  %r119 = add i32 %r118, 1

        mov     x10, #1
        add     x9, x9, x10
        //  store i32 %r119, i32* %r111

        str     x9, [x11]
        //  br label %bb9


        b     bb9
        //bb11:

bb11:

        //  %r121 = load i32, i32* %r102

        ldr     x9, [x12]
        //  %r122 = sub i32 %r121, 1

        mov     x10, #1
        sub     x9, x9, x10
        //  store i32 %r122, i32* %r120

        str     x9, [x15]
        //  %r123 = load i32, i32* %r120

        ldr     x9, [x15]
        //  %r124 = getelementptr [10 x i32 ], [10 x i32 ]* %r110, i32 0, i32 %r123

        mov     x10, #8
        mul     x9, x10, x9
        add     x10, x29, #-104
        add     x9, x10, x9
        //  store i32 1, i32* %r124

        mov     x10, #1
        str     x10, [x9]
        //  %r125 = load i32, i32* %r102

        ldr     x9, [x12]
        //  %r126 = sub i32 %r125, 2

        mov     x10, #2
        sub     x9, x9, x10
        //  store i32 %r126, i32* %r111

        str     x9, [x11]
        //  br label %bb12


        b     bb12
        //bb12:

bb12:

        //  %r127 = load i32, i32* %r111

        ldr     x9, [x11]
        //  %r128 = sub i32 0, 1

        mov     x10, #0
        mov     x18, #1
        add     x18, sp, #16
        str     x18, [x18]
        sub     x10, x10, x18
        //  %r129 = icmp sgt i32 %r127, %r128

        cmp     x9, x10
        //  br i1 %r129, label %bb13, label %bb14


        b.gt     bb13
        b     bb14
        //bb13:

bb13:

        //  %r131 = load i32, i32* %r111

        ldr     x9, [x11]
        //  %r132 = getelementptr i32, i32* %r100, i32 %r131

        mov     x10, #8
        mul     x9, x10, x9
        add     x9, x14, x9
        //  %r133 = load i32, i32* %r132

        ldr     x19, [x9]
        add     x19, sp, #24
        str     x19, [x19]
        //  %r134 = load i32, i32* %r102

        ldr     x9, [x12]
        //  %r135 = sub i32 %r134, 1

        mov     x16, #1
        add     x16, sp, #32
        str     x16, [x16]
        sub     x10, x9, x16
        //  %r136 = load i32, i32* %r111

        ldr     x9, [x11]
        //  %r137 = sub i32 %r135, %r136

        sub     x9, x10, x9
        //  %r138 = icmp slt i32 %r133, %r137

        add     x17, sp, #24
        ldr     x17, [x17]
        cmp     x17, x9
        //  br i1 %r138, label %bb15, label %bb16


        b.lt     bb15
        b     bb16
        //bb15:

bb15:

        //  %r139 = load i32, i32* %r111

        ldr     x9, [x11]
        //  %r140 = getelementptr i32, i32* %r100, i32 %r139

        mov     x10, #8
        mul     x9, x10, x9
        add     x9, x14, x9
        //  %r141 = load i32, i32* %r140

        ldr     x9, [x9]
        //  store i32 %r141, i32* %r130

        str     x9, [x13]
        //  br label %bb17


        b     bb17
        //bb16:

bb16:

        //  %r142 = load i32, i32* %r102

        ldr     x9, [x12]
        //  %r143 = sub i32 %r142, 1

        mov     x10, #1
        sub     x10, x9, x10
        //  %r144 = load i32, i32* %r111

        ldr     x9, [x11]
        //  %r145 = sub i32 %r143, %r144

        sub     x9, x10, x9
        //  store i32 %r145, i32* %r130

        str     x9, [x13]
        //  br label %bb17


        b     bb17
        //bb17:

bb17:

        //  br label %bb18


        b     bb18
        //bb18:

bb18:

        //  %r146 = load i32, i32* %r130

        ldr     x9, [x13]
        //  %r147 = sub i32 0, 1

        mov     x10, #0
        mov     x18, #1
        add     x18, sp, #40
        str     x18, [x18]
        sub     x10, x10, x18
        //  %r148 = icmp sgt i32 %r146, %r147

        cmp     x9, x10
        //  br i1 %r148, label %bb19, label %bb20


        b.gt     bb19
        b     bb20
        //bb19:

bb19:

        //  %r149 = load i32, i32* %r111

        ldr     x10, [x11]
        //  %r150 = load i32, i32* %r130

        ldr     x9, [x13]
        //  %r151 = add i32 %r149, %r150

        add     x9, x10, x9
        //  store i32 %r151, i32* %r120

        str     x9, [x15]
        //  %r152 = load i32, i32* %r120

        ldr     x9, [x15]
        //  %r153 = getelementptr [10 x i32 ], [10 x i32 ]* %r110, i32 0, i32 %r152

        mov     x10, #8
        mul     x9, x10, x9
        add     x10, x29, #-104
        add     x9, x10, x9
        //  %r154 = load i32, i32* %r153

        ldr     x9, [x9]
        //  %r155 = icmp ne i32 %r154, 0

        mov     x10, #0
        cmp     x9, x10
        //  br i1 %r155, label %bb21, label %bb22


        b.ne     bb21
        b     bb22
        //bb21:

bb21:

        //  %r156 = load i32, i32* %r111

        ldr     x9, [x11]
        //  %r157 = getelementptr [10 x i32 ], [10 x i32 ]* %r110, i32 0, i32 %r156

        mov     x10, #8
        mul     x9, x10, x9
        add     x10, x29, #-104
        add     x9, x10, x9
        //  store i32 1, i32* %r157

        mov     x10, #1
        str     x10, [x9]
        //  br label %bb23


        b     bb23
        //bb22:

bb22:

        //  br label %bb23


        b     bb23
        //bb23:

bb23:

        //  %r158 = load i32, i32* %r130

        ldr     x9, [x13]
        //  %r159 = sub i32 %r158, 1

        mov     x10, #1
        sub     x9, x9, x10
        //  store i32 %r159, i32* %r130

        str     x9, [x13]
        //  br label %bb18


        b     bb18
        //bb20:

bb20:

        //  %r160 = load i32, i32* %r111

        ldr     x9, [x11]
        //  %r161 = sub i32 %r160, 1

        mov     x10, #1
        sub     x9, x9, x10
        //  store i32 %r161, i32* %r111

        str     x9, [x11]
        //  br label %bb12


        b     bb12
        //bb14:

bb14:

        //  %r162 = getelementptr [10 x i32 ], [10 x i32 ]* %r110, i32 0, i32 0

        mov     x9, #8
        mov     x10, #0
        mul     x9, x9, x10
        add     x10, x29, #-104
        add     x9, x10, x9
        //  %r163 = load i32, i32* %r162

        ldr     x9, [x9]
        //  ret i32 %r163

        mov     x0, x9
        mov     sp, x29
        ret
        sub     sp, sp, #0
main:

        //165:x29,#-88

        //164:x29,#-8

        //bb24:

bb24:

        //  call void @_sysy_starttime(i32 42)

        mov     x16, #96
        sub     sp, sp, x16
        mov     x0, #42
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
        //  %r164 = alloca i32

        //  %r165 = alloca [ 10 x i32 ]

        //  %r166 = getelementptr [10 x i32 ], [10 x i32 ]* %r165, i32 0, i32 0

        mov     x12, #8
        mov     x11, #0
        mul     x12, x12, x11
        add     x11, x29, #-88
        add     x12, x11, x12
        //  store i32 3, i32* %r166

        mov     x11, #3
        str     x11, [x12]
        //  %r167 = getelementptr [10 x i32 ], [10 x i32 ]* %r165, i32 0, i32 1

        mov     x12, #8
        mov     x11, #1
        mul     x12, x12, x11
        add     x11, x29, #-88
        add     x12, x11, x12
        //  store i32 3, i32* %r167

        mov     x11, #3
        str     x11, [x12]
        //  %r168 = getelementptr [10 x i32 ], [10 x i32 ]* %r165, i32 0, i32 2

        mov     x12, #8
        mov     x11, #2
        mul     x11, x12, x11
        add     x12, x29, #-88
        add     x11, x12, x11
        //  store i32 9, i32* %r168

        mov     x12, #9
        str     x12, [x11]
        //  %r169 = getelementptr [10 x i32 ], [10 x i32 ]* %r165, i32 0, i32 3

        mov     x12, #8
        mov     x11, #3
        mul     x12, x12, x11
        add     x11, x29, #-88
        add     x12, x11, x12
        //  store i32 0, i32* %r169

        mov     x11, #0
        str     x11, [x12]
        //  %r170 = getelementptr [10 x i32 ], [10 x i32 ]* %r165, i32 0, i32 4

        mov     x12, #8
        mov     x11, #4
        mul     x12, x12, x11
        add     x11, x29, #-88
        add     x12, x11, x12
        //  store i32 0, i32* %r170

        mov     x11, #0
        str     x11, [x12]
        //  %r171 = getelementptr [10 x i32 ], [10 x i32 ]* %r165, i32 0, i32 5

        mov     x12, #8
        mov     x11, #5
        mul     x12, x12, x11
        add     x11, x29, #-88
        add     x12, x11, x12
        //  store i32 1, i32* %r171

        mov     x11, #1
        str     x11, [x12]
        //  %r172 = getelementptr [10 x i32 ], [10 x i32 ]* %r165, i32 0, i32 6

        mov     x12, #8
        mov     x11, #6
        mul     x12, x12, x11
        add     x11, x29, #-88
        add     x12, x11, x12
        //  store i32 1, i32* %r172

        mov     x11, #1
        str     x11, [x12]
        //  %r173 = getelementptr [10 x i32 ], [10 x i32 ]* %r165, i32 0, i32 7

        mov     x12, #8
        mov     x11, #7
        mul     x12, x12, x11
        add     x11, x29, #-88
        add     x12, x11, x12
        //  store i32 5, i32* %r173

        mov     x11, #5
        str     x11, [x12]
        //  %r174 = getelementptr [10 x i32 ], [10 x i32 ]* %r165, i32 0, i32 8

        mov     x12, #8
        mov     x11, #8
        mul     x12, x12, x11
        add     x11, x29, #-88
        add     x11, x11, x12
        //  store i32 7, i32* %r174

        mov     x12, #7
        str     x12, [x11]
        //  %r175 = getelementptr [10 x i32 ], [10 x i32 ]* %r165, i32 0, i32 9

        mov     x11, #8
        mov     x12, #9
        mul     x11, x11, x12
        add     x12, x29, #-88
        add     x11, x12, x11
        //  store i32 8, i32* %r175

        mov     x12, #8
        str     x12, [x11]
        //  store i32 10, i32* %r164

        mov     x11, #10
        str     x11, [x10]
        //  %r176 = load i32, i32* %r164

        ldr     x11, [x10]
        //  %r177 = call i32 @canJump(i32* %r165, i32 %r176)

        mov     x0, x9
        mov     x1, x11
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     canJump
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        //  store i32 %r177, i32* %r164

        str     x9, [x10]
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
        //  %r178 = load i32, i32* %r164

        ldr     x9, [x10]
        //  ret i32 %r178

        mov     x0, x9
        mov     sp, x29
        ret
