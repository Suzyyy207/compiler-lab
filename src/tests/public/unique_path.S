.section .data
.section .text
.global getch
.global getint
.global putch
.global putint
.global putarray
.global _sysy_starttime
.global _sysy_stoptime
.global uniquePaths
.global main
        sub     sp, sp, #472
uniquePaths:

        //103:x29,#-128

        //109:x29,#-112

        //110:x29,#-40

        //111:x29,#-32

        //112:x29,#-24

        //113:x29,#-16

        //101:x29,#-120

        //114:x29,#-8

        //bb2:

bb2:

        sub     sp, sp, #472
        //  %r114 = alloca i32

        add     x16, sp, #0
        ldr     x16, [x16]
        mov     x16, #16
        sub     sp, sp, x16
        mov     x17, x0
        add     x17, sp, #8
        str     x17, [x17]
        mov     x12, x1
        //  %r113 = alloca i32

        //  %r112 = alloca i32

        //  %r111 = alloca i32

        //  %r110 = alloca i32

        //  %r109 = alloca [ 9 x i32 ]

        //  %r101 = alloca i32

        //  store i32 %r100, i32* %r101

        add     x18, sp, #8
        ldr     x18, [x18]
        str     x18, [x19]
        add     x19, sp, #16
        str     x19, [x19]
        //  %r103 = alloca i32

        //  store i32 %r102, i32* %r103

        str     x12, [x13]
        //  br label %bb1


        b     bb1
        //bb1:

bb1:

        //  %r105 = load i32, i32* %r101

        add     x16, sp, #16
        ldr     x16, [x16]
        ldr     x12, [x16]
        //  %r106 = icmp eq i32 %r105, 1

        mov     x17, #1
        add     x17, sp, #24
        str     x17, [x17]
        cmp     x12, x17
        //  br i1 %r106, label %bb3, label %bb6


        b.eq     bb3
        b     bb6
        //bb6:

bb6:

        //  %r107 = load i32, i32* %r103

        ldr     x12, [x13]
        //  %r108 = icmp eq i32 %r107, 1

        mov     x18, #1
        add     x18, sp, #32
        str     x18, [x18]
        cmp     x12, x18
        //  br i1 %r108, label %bb3, label %bb4


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

        //  store i32 0, i32* %r110

        mov     x19, #0
        add     x19, sp, #40
        str     x19, [x19]
        str     x19, [x11]
        //  br label %bb7


        b     bb7
        //bb7:

bb7:

        //  %r115 = load i32, i32* %r110

        ldr     x14, [x11]
        //  %r116 = load i32, i32* %r101

        add     x16, sp, #16
        ldr     x16, [x16]
        ldr     x12, [x16]
        //  %r117 = icmp slt i32 %r115, %r116

        cmp     x14, x12
        //  br i1 %r117, label %bb8, label %bb9


        b.lt     bb8
        b     bb9
        //bb8:

bb8:

        //  %r118 = load i32, i32* %r110

        ldr     x17, [x11]
        add     x17, sp, #48
        str     x17, [x17]
        //  %r119 = mul i32 %r118, 3

        mov     x18, #3
        add     x18, sp, #56
        str     x18, [x18]
        add     x19, sp, #48
        ldr     x19, [x19]
        mul     x16, x19, x18
        add     x16, sp, #64
        str     x16, [x16]
        //  %r120 = load i32, i32* %r103

        ldr     x17, [x13]
        add     x17, sp, #72
        str     x17, [x17]
        //  %r121 = add i32 %r119, %r120

        add     x18, sp, #64
        ldr     x18, [x18]
        add     x19, sp, #72
        ldr     x19, [x19]
        add     x16, x18, x19
        add     x16, sp, #80
        str     x16, [x16]
        //  %r122 = sub i32 %r121, 1

        mov     x17, #1
        add     x17, sp, #88
        str     x17, [x17]
        add     x18, sp, #80
        ldr     x18, [x18]
        sub     x19, x18, x17
        add     x19, sp, #96
        str     x19, [x19]
        //  store i32 %r122, i32* %r112

        add     x16, sp, #96
        ldr     x16, [x16]
        str     x16, [x9]
        //  %r123 = load i32, i32* %r112

        ldr     x17, [x9]
        add     x17, sp, #104
        str     x17, [x17]
        //  %r124 = getelementptr [9 x i32 ], [9 x i32 ]* %r109, i32 0, i32 %r123

        mov     x18, #8
        add     x18, sp, #9
        str     x18, [x18]
        add     x19, sp, #104
        ldr     x19, [x19]
        mul     x16, x18, x19
        add     x17, sp, #72
        ldr     x17, [x17]
        add     x16, sp, #17
        str     x16, [x16]
        add     x18, x29, #-112
        add     x19, sp, #0
        ldr     x19, [x19]
        add     x18, sp, #19
        str     x18, [x18]
        add     x16, x18, x16
        add     x16, sp, #12
        str     x16, [x16]
        //  store i32 1, i32* %r124

        mov     x17, #1
        add     x17, sp, #12
        str     x17, [x17]
        str     x17, [x18]
        add     x18, sp, #12
        str     x18, [x18]
        //  %r125 = load i32, i32* %r110

        ldr     x19, [x11]
        add     x19, sp, #12
        str     x19, [x19]
        //  %r126 = add i32 %r125, 1

        mov     x16, #1
        add     x16, sp, #12
        str     x16, [x16]
        add     x17, sp, #152
        ldr     x17, [x17]
        add     x18, x17, x16
        add     x19, sp, #176
        ldr     x19, [x19]
        add     x18, sp, #19
        str     x18, [x18]
        //  store i32 %r126, i32* %r110

        add     x16, sp, #168
        ldr     x16, [x16]
        str     x16, [x11]
        //  br label %bb7


        b     bb7
        //bb9:

bb9:

        //  store i32 0, i32* %r110

        mov     x17, #0
        add     x18, sp, #24
        ldr     x18, [x18]
        add     x17, sp, #18
        str     x17, [x17]
        str     x17, [x11]
        //  br label %bb10


        b     bb10
        //bb10:

bb10:

        //  %r127 = load i32, i32* %r110

        ldr     x19, [x11]
        add     x16, sp, #128
        ldr     x16, [x16]
        add     x19, sp, #16
        str     x19, [x19]
        //  %r128 = load i32, i32* %r103

        ldr     x17, [x13]
        add     x17, sp, #0
        str     x17, [x17]
        //  %r129 = icmp slt i32 %r127, %r128

        add     x18, sp, #192
        ldr     x18, [x18]
        add     x19, sp, #0
        ldr     x19, [x19]
        cmp     x18, x19
        //  br i1 %r129, label %bb11, label %bb12


        b.lt     bb11
        b     bb12
        //bb11:

bb11:

        //  %r130 = load i32, i32* %r101

        add     x16, sp, #16
        ldr     x16, [x16]
        ldr     x12, [x16]
        //  %r131 = sub i32 %r130, 1

        mov     x17, #1
        add     x18, sp, #208
        ldr     x18, [x18]
        add     x17, sp, #18
        str     x17, [x17]
        sub     x12, x12, x17
        //  %r132 = mul i32 %r131, 3

        mov     x19, #3
        add     x16, sp, #224
        ldr     x16, [x16]
        add     x19, sp, #16
        str     x19, [x19]
        mul     x12, x12, x19
        //  %r133 = load i32, i32* %r110

        ldr     x17, [x11]
        add     x17, sp, #232
        str     x17, [x17]
        //  %r134 = add i32 %r132, %r133

        add     x18, sp, #232
        ldr     x18, [x18]
        add     x12, x12, x18
        //  store i32 %r134, i32* %r112

        str     x12, [x9]
        //  %r135 = load i32, i32* %r112

        ldr     x12, [x9]
        //  %r136 = getelementptr [9 x i32 ], [9 x i32 ]* %r109, i32 0, i32 %r135

        mov     x19, #8
        add     x19, sp, #240
        str     x19, [x19]
        mul     x16, x19, x12
        add     x16, sp, #248
        str     x16, [x16]
        add     x17, x29, #-112
        add     x18, sp, #256
        ldr     x18, [x18]
        add     x17, sp, #18
        str     x17, [x17]
        add     x12, x17, x16
        //  store i32 1, i32* %r136

        mov     x19, #1
        add     x19, sp, #264
        str     x19, [x19]
        str     x19, [x12]
        //  %r137 = load i32, i32* %r110

        ldr     x12, [x11]
        //  %r138 = add i32 %r137, 1

        mov     x16, #1
        add     x16, sp, #272
        str     x16, [x16]
        add     x12, x12, x16
        //  store i32 %r138, i32* %r110

        str     x12, [x11]
        //  br label %bb10


        b     bb10
        //bb12:

bb12:

        //  %r139 = load i32, i32* %r101

        add     x17, sp, #16
        ldr     x17, [x17]
        ldr     x12, [x17]
        //  %r140 = sub i32 %r139, 2

        mov     x18, #2
        add     x18, sp, #280
        str     x18, [x18]
        sub     x12, x12, x18
        //  store i32 %r140, i32* %r110

        str     x12, [x11]
        //  br label %bb13


        b     bb13
        //bb13:

bb13:

        //  %r141 = load i32, i32* %r110

        ldr     x14, [x11]
        //  %r142 = sub i32 0, 1

        mov     x19, #0
        add     x19, sp, #288
        str     x19, [x19]
        mov     x16, #1
        add     x16, sp, #296
        str     x16, [x16]
        sub     x12, x19, x16
        //  %r143 = icmp sgt i32 %r141, %r142

        cmp     x14, x12
        //  br i1 %r143, label %bb14, label %bb15


        b.gt     bb14
        b     bb15
        //bb14:

bb14:

        //  %r144 = load i32, i32* %r103

        ldr     x12, [x13]
        //  %r145 = sub i32 %r144, 2

        mov     x17, #2
        add     x17, sp, #304
        str     x17, [x17]
        sub     x12, x12, x17
        //  store i32 %r145, i32* %r111

        str     x12, [x10]
        //  br label %bb16


        b     bb16
        //bb16:

bb16:

        //  %r146 = load i32, i32* %r111

        ldr     x14, [x10]
        //  %r147 = sub i32 0, 1

        mov     x18, #0
        add     x18, sp, #312
        str     x18, [x18]
        mov     x19, #1
        add     x19, sp, #256
        str     x19, [x19]
        sub     x12, x18, x19
        //  %r148 = icmp sgt i32 %r146, %r147

        cmp     x14, x12
        //  br i1 %r148, label %bb17, label %bb18


        b.gt     bb17
        b     bb18
        //bb17:

bb17:

        //  %r149 = load i32, i32* %r110

        ldr     x12, [x11]
        //  %r150 = mul i32 %r149, 3

        mov     x16, #3
        add     x16, sp, #320
        str     x16, [x16]
        mul     x14, x12, x16
        //  %r151 = load i32, i32* %r111

        ldr     x12, [x10]
        //  %r152 = add i32 %r150, %r151

        add     x12, x14, x12
        //  store i32 %r152, i32* %r112

        str     x12, [x9]
        //  %r153 = load i32, i32* %r110

        ldr     x12, [x11]
        //  %r154 = add i32 %r153, 1

        mov     x17, #1
        add     x17, sp, #328
        str     x17, [x17]
        add     x12, x12, x17
        //  %r155 = mul i32 %r154, 3

        mov     x18, #3
        add     x18, sp, #336
        str     x18, [x18]
        mul     x14, x12, x18
        //  %r156 = load i32, i32* %r111

        ldr     x12, [x10]
        //  %r157 = add i32 %r155, %r156

        add     x12, x14, x12
        //  store i32 %r157, i32* %r113

        str     x12, [x19]
        add     x19, sp, #344
        str     x19, [x19]
        //  %r158 = load i32, i32* %r110

        ldr     x12, [x11]
        //  %r159 = mul i32 %r158, 3

        mov     x16, #3
        add     x16, sp, #352
        str     x16, [x16]
        mul     x17, x12, x16
        add     x17, sp, #360
        str     x17, [x17]
        //  %r160 = load i32, i32* %r111

        ldr     x12, [x10]
        //  %r161 = add i32 %r159, %r160

        add     x18, sp, #360
        ldr     x18, [x18]
        add     x12, x18, x12
        //  %r162 = add i32 %r161, 1

        mov     x19, #1
        add     x19, sp, #368
        str     x19, [x19]
        add     x12, x12, x19
        //  store i32 %r162, i32* %r114

        str     x12, [x15]
        //  %r163 = load i32, i32* %r113

        add     x16, sp, #344
        ldr     x16, [x16]
        ldr     x12, [x16]
        //  %r164 = getelementptr [9 x i32 ], [9 x i32 ]* %r109, i32 0, i32 %r163

        mov     x17, #8
        add     x17, sp, #376
        str     x17, [x17]
        mul     x12, x17, x12
        add     x18, x29, #-112
        add     x19, sp, #384
        ldr     x19, [x19]
        add     x18, sp, #19
        str     x18, [x18]
        add     x12, x18, x12
        //  %r165 = load i32, i32* %r164

        ldr     x12, [x12]
        //  %r166 = load i32, i32* %r114

        ldr     x14, [x15]
        //  %r167 = getelementptr [9 x i32 ], [9 x i32 ]* %r109, i32 0, i32 %r166

        mov     x16, #8
        add     x16, sp, #392
        str     x16, [x16]
        mul     x17, x16, x14
        add     x17, sp, #400
        str     x17, [x17]
        add     x18, x29, #-112
        add     x18, sp, #408
        str     x18, [x18]
        add     x19, x18, x17
        add     x19, sp, #416
        str     x19, [x19]
        //  %r168 = load i32, i32* %r167

        add     x17, sp, #416
        ldr     x17, [x17]
        ldr     x16, [x17]
        add     x16, sp, #9
        str     x16, [x16]
        //  %r169 = add i32 %r165, %r168

        add     x18, sp, #176
        ldr     x18, [x18]
        add     x12, x12, x18
        //  %r170 = load i32, i32* %r112

        ldr     x19, [x9]
        add     x19, sp, #424
        str     x19, [x19]
        //  %r171 = getelementptr [9 x i32 ], [9 x i32 ]* %r109, i32 0, i32 %r170

        mov     x16, #8
        add     x16, sp, #432
        str     x16, [x16]
        add     x17, sp, #424
        ldr     x17, [x17]
        mul     x18, x16, x17
        add     x18, sp, #440
        str     x18, [x18]
        add     x19, x29, #-112
        add     x19, sp, #448
        str     x19, [x19]
        add     x16, x19, x18
        add     x16, sp, #456
        str     x16, [x16]
        //  store i32 %r169, i32* %r171

        str     x12, [x17]
        add     x17, sp, #456
        str     x17, [x17]
        //  %r172 = load i32, i32* %r111

        ldr     x12, [x10]
        //  %r173 = sub i32 %r172, 1

        mov     x18, #1
        add     x18, sp, #464
        str     x18, [x18]
        sub     x12, x12, x18
        //  store i32 %r173, i32* %r111

        str     x12, [x10]
        //  br label %bb16


        b     bb16
        //bb18:

bb18:

        //  %r174 = load i32, i32* %r110

        ldr     x12, [x11]
        //  %r175 = sub i32 %r174, 1

        mov     x19, #1
        add     x19, sp, #384
        str     x19, [x19]
        sub     x12, x12, x19
        //  store i32 %r175, i32* %r110

        str     x12, [x11]
        //  br label %bb13


        b     bb13
        //bb15:

bb15:

        //  %r176 = getelementptr [9 x i32 ], [9 x i32 ]* %r109, i32 0, i32 0

        mov     x9, #8
        mov     x10, #0
        mul     x10, x9, x10
        add     x9, x29, #-112
        add     x9, x9, x10
        //  %r177 = load i32, i32* %r176

        ldr     x9, [x9]
        //  ret i32 %r177

        mov     x0, x9
        mov     sp, x29
        ret
        sub     sp, sp, #0
main:

        //179:x29,#-16

        //178:x29,#-8

        //bb19:

bb19:

        //  call void @_sysy_starttime(i32 40)

        mov     x16, #16
        sub     sp, sp, x16
        mov     x0, #40
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
        //  %r178 = alloca i32

        //  %r179 = alloca i32

        //  store i32 3, i32* %r179

        mov     x11, #3
        str     x11, [x10]
        //  %r180 = load i32, i32* %r179

        ldr     x11, [x10]
        //  %r181 = load i32, i32* %r179

        ldr     x10, [x10]
        //  %r182 = call i32 @uniquePaths(i32 %r180, i32 %r181)

        mov     x0, x11
        mov     x1, x10
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     uniquePaths
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x10, x0
        //  store i32 %r182, i32* %r178

        str     x10, [x9]
        //  call void @_sysy_stoptime(i32 45)

        mov     x0, #45
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
        //  %r183 = load i32, i32* %r178

        ldr     x9, [x9]
        //  ret i32 %r183

        mov     x0, x9
        mov     sp, x29
        ret
