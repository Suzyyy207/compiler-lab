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
.global Merge
.global MergeSort
.global main
        sub     sp, sp, #480
Merge:

        //102:x29,#-216

        //112:x29,#-200

        //116:x29,#-192

        //104:x29,#-224

        //117:x29,#-112

        //118:x29,#-32

        //106:x29,#-232

        //119:x29,#-24

        //107:x29,#-208

        //120:x29,#-16

        //148:x29,#-8

        //bb2:

bb2:

        sub     sp, sp, #480
        //  %r148 = alloca i32

        mov     x16, #240
        sub     sp, sp, x16
        mov     x12, x0
        mov     x14, x1
        mov     x15, x2
        mov     x16, x3
        add     x16, sp, #0
        str     x16, [x16]
        //  %r120 = alloca i32

        //  %r119 = alloca i32

        //  %r118 = alloca i32

        //  %r117 = alloca [ 10 x i32 ]

        //  %r116 = alloca [ 10 x i32 ]

        //  %r112 = alloca i32

        //  %r107 = alloca i32

        //  %r102 = alloca i32

        //  store i32 %r101, i32* %r102

        str     x14, [x13]
        //  %r104 = alloca i32

        //  store i32 %r103, i32* %r104

        str     x15, [x17]
        add     x17, sp, #8
        str     x17, [x17]
        //  %r106 = alloca i32

        //  store i32 %r105, i32* %r106

        add     x18, sp, #0
        ldr     x18, [x18]
        str     x18, [x19]
        add     x19, sp, #16
        str     x19, [x19]
        //  br label %bb1


        b     bb1
        //bb1:

bb1:

        //  %r108 = load i32, i32* %r104

        add     x17, sp, #8
        ldr     x17, [x17]
        ldr     x16, [x17]
        add     x16, sp, #24
        str     x16, [x16]
        //  %r109 = load i32, i32* %r102

        ldr     x18, [x13]
        add     x18, sp, #32
        str     x18, [x18]
        //  %r110 = sub i32 %r108, %r109

        add     x19, sp, #24
        ldr     x19, [x19]
        add     x16, sp, #32
        ldr     x16, [x16]
        sub     x17, x19, x16
        add     x17, sp, #40
        str     x17, [x17]
        //  %r111 = add i32 %r110, 1

        mov     x14, #1
        add     x18, sp, #40
        ldr     x18, [x18]
        add     x19, x18, x14
        add     x19, sp, #48
        str     x19, [x19]
        //  store i32 %r111, i32* %r107

        add     x16, sp, #48
        ldr     x16, [x16]
        str     x16, [x17]
        add     x17, sp, #56
        str     x17, [x17]
        //  %r113 = load i32, i32* %r106

        add     x18, sp, #16
        ldr     x18, [x18]
        ldr     x15, [x18]
        //  %r114 = load i32, i32* %r104

        add     x19, sp, #8
        ldr     x19, [x19]
        ldr     x14, [x19]
        //  %r115 = sub i32 %r113, %r114

        sub     x14, x15, x14
        //  store i32 %r115, i32* %r112

        str     x14, [x16]
        add     x16, sp, #64
        str     x16, [x16]
        //  store i32 0, i32* %r118

        mov     x17, #0
        add     x17, sp, #72
        str     x17, [x17]
        str     x17, [x11]
        //  store i32 0, i32* %r119

        mov     x18, #0
        add     x18, sp, #80
        str     x18, [x18]
        str     x18, [x10]
        //  br label %bb3


        b     bb3
        //bb3:

bb3:

        //  %r121 = load i32, i32* %r118

        ldr     x15, [x11]
        //  %r122 = load i32, i32* %r107

        add     x19, sp, #56
        ldr     x19, [x19]
        ldr     x14, [x19]
        //  %r123 = icmp slt i32 %r121, %r122

        cmp     x15, x14
        //  br i1 %r123, label %bb4, label %bb5


        b.lt     bb4
        b     bb5
        //bb4:

bb4:

        //  %r124 = load i32, i32* %r118

        ldr     x15, [x11]
        //  %r125 = load i32, i32* %r102

        ldr     x14, [x13]
        //  %r126 = add i32 %r124, %r125

        add     x14, x15, x14
        //  store i32 %r126, i32* %r120

        str     x14, [x9]
        //  %r127 = load i32, i32* %r120

        ldr     x14, [x9]
        //  %r128 = getelementptr i32, i32* %r100, i32 %r127

        mov     x16, #8
        add     x16, sp, #88
        str     x16, [x16]
        mul     x17, x16, x14
        add     x17, sp, #96
        str     x17, [x17]
        add     x14, x12, x17
        //  %r129 = load i32, i32* %r128

        ldr     x14, [x14]
        //  %r130 = load i32, i32* %r118

        ldr     x15, [x11]
        //  %r131 = getelementptr [10 x i32 ], [10 x i32 ]* %r116, i32 0, i32 %r130

        mov     x18, #8
        add     x19, sp, #8
        ldr     x19, [x19]
        add     x18, sp, #19
        str     x18, [x18]
        mul     x16, x18, x15
        add     x17, sp, #64
        ldr     x17, [x17]
        add     x16, sp, #17
        str     x16, [x16]
        add     x18, x29, #-192
        add     x18, sp, #9
        str     x18, [x18]
        add     x15, x18, x16
        //  store i32 %r129, i32* %r131

        str     x14, [x15]
        //  %r132 = load i32, i32* %r118

        ldr     x19, [x11]
        add     x19, sp, #14
        str     x19, [x19]
        //  %r133 = add i32 %r132, 1

        mov     x16, #1
        add     x16, sp, #136
        str     x16, [x16]
        add     x17, sp, #128
        ldr     x17, [x17]
        add     x18, x17, x16
        add     x19, sp, #152
        ldr     x19, [x19]
        add     x18, sp, #19
        str     x18, [x18]
        //  store i32 %r133, i32* %r118

        add     x16, sp, #144
        ldr     x16, [x16]
        str     x16, [x11]
        //  br label %bb3


        b     bb3
        //bb5:

bb5:

        //  br label %bb6


        b     bb6
        //bb6:

bb6:

        //  %r134 = load i32, i32* %r119

        ldr     x17, [x10]
        add     x17, sp, #13
        str     x17, [x17]
        //  %r135 = load i32, i32* %r112

        add     x19, sp, #64
        ldr     x19, [x19]
        ldr     x18, [x19]
        add     x18, sp, #13
        str     x18, [x18]
        //  %r136 = icmp slt i32 %r134, %r135

        add     x16, sp, #160
        ldr     x16, [x16]
        add     x17, sp, #168
        ldr     x17, [x17]
        cmp     x16, x17
        //  br i1 %r136, label %bb7, label %bb8


        b.lt     bb7
        b     bb8
        //bb7:

bb7:

        //  %r137 = load i32, i32* %r119

        ldr     x18, [x10]
        add     x18, sp, #9
        str     x18, [x18]
        //  %r138 = load i32, i32* %r104

        add     x16, sp, #8
        ldr     x16, [x16]
        ldr     x19, [x16]
        add     x19, sp, #9
        str     x19, [x19]
        //  %r139 = add i32 %r137, %r138

        add     x17, sp, #176
        ldr     x17, [x17]
        add     x18, sp, #184
        ldr     x18, [x18]
        add     x19, x17, x18
        add     x19, sp, #9
        str     x19, [x19]
        //  %r140 = add i32 %r139, 1

        mov     x16, #1
        add     x16, sp, #11
        str     x16, [x16]
        add     x17, sp, #192
        ldr     x17, [x17]
        add     x18, x17, x16
        add     x18, sp, #208
        str     x18, [x18]
        //  store i32 %r140, i32* %r120

        add     x19, sp, #208
        ldr     x19, [x19]
        str     x19, [x9]
        //  %r141 = load i32, i32* %r120

        ldr     x16, [x9]
        add     x16, sp, #216
        str     x16, [x16]
        //  %r142 = getelementptr i32, i32* %r100, i32 %r141

        mov     x17, #8
        add     x17, sp, #224
        str     x17, [x17]
        add     x18, sp, #216
        ldr     x18, [x18]
        mul     x19, x17, x18
        add     x19, sp, #232
        str     x19, [x19]
        add     x16, x12, x19
        add     x16, sp, #240
        str     x16, [x16]
        //  %r143 = load i32, i32* %r142

        add     x18, sp, #240
        ldr     x18, [x18]
        ldr     x17, [x18]
        add     x17, sp, #248
        str     x17, [x17]
        //  %r144 = load i32, i32* %r119

        ldr     x19, [x10]
        add     x16, sp, #256
        ldr     x16, [x16]
        add     x19, sp, #16
        str     x19, [x19]
        //  %r145 = getelementptr [10 x i32 ], [10 x i32 ]* %r117, i32 0, i32 %r144

        mov     x17, #8
        add     x18, sp, #72
        ldr     x18, [x18]
        add     x17, sp, #18
        str     x17, [x17]
        add     x19, sp, #152
        ldr     x19, [x19]
        mul     x16, x17, x19
        add     x17, sp, #200
        ldr     x17, [x17]
        add     x16, sp, #17
        str     x16, [x16]
        add     x14, x29, #-112
        add     x18, x14, x16
        add     x18, sp, #9
        str     x18, [x18]
        //  store i32 %r143, i32* %r145

        add     x19, sp, #248
        ldr     x19, [x19]
        str     x19, [x16]
        add     x16, sp, #9
        str     x16, [x16]
        //  %r146 = load i32, i32* %r119

        ldr     x17, [x10]
        add     x17, sp, #9
        str     x17, [x17]
        //  %r147 = add i32 %r146, 1

        mov     x18, #1
        add     x18, sp, #9
        str     x18, [x18]
        add     x19, sp, #288
        ldr     x19, [x19]
        add     x16, x19, x18
        add     x17, sp, #312
        ldr     x17, [x17]
        add     x16, sp, #17
        str     x16, [x16]
        //  store i32 %r147, i32* %r119

        add     x18, sp, #304
        ldr     x18, [x18]
        str     x18, [x10]
        //  br label %bb6


        b     bb6
        //bb8:

bb8:

        //  store i32 0, i32* %r118

        mov     x19, #0
        add     x19, sp, #320
        str     x19, [x19]
        str     x19, [x11]
        //  store i32 0, i32* %r119

        mov     x9, #0
        str     x9, [x10]
        //  %r149 = load i32, i32* %r102

        ldr     x9, [x13]
        //  store i32 %r149, i32* %r148

        str     x9, [x16]
        add     x16, sp, #328
        str     x16, [x16]
        //  br label %bb9


        b     bb9
        //bb9:

bb9:

        //  %r151 = load i32, i32* %r118

        ldr     x9, [x11]
        //  %r152 = load i32, i32* %r107

        add     x18, sp, #56
        ldr     x18, [x18]
        ldr     x17, [x18]
        add     x17, sp, #256
        str     x17, [x17]
        //  %r153 = icmp ne i32 %r151, %r152

        add     x19, sp, #256
        ldr     x19, [x19]
        cmp     x9, x19
        //  br i1 %r153, label %bb12, label %bb11


        b.ne     bb12
        b     bb11
        //bb12:

bb12:

        //  %r154 = load i32, i32* %r119

        ldr     x9, [x10]
        //  %r155 = load i32, i32* %r112

        add     x17, sp, #64
        ldr     x17, [x17]
        ldr     x16, [x17]
        add     x16, sp, #336
        str     x16, [x16]
        //  %r156 = icmp ne i32 %r154, %r155

        add     x18, sp, #336
        ldr     x18, [x18]
        cmp     x9, x18
        //  br i1 %r156, label %bb10, label %bb11


        b.ne     bb10
        b     bb11
        //bb10:

bb10:

        //  %r157 = load i32, i32* %r118

        ldr     x19, [x11]
        add     x19, sp, #344
        str     x19, [x19]
        //  %r158 = getelementptr [10 x i32 ], [10 x i32 ]* %r116, i32 0, i32 %r157

        mov     x9, #8
        add     x16, sp, #344
        ldr     x16, [x16]
        mul     x17, x9, x16
        add     x17, sp, #352
        str     x17, [x17]
        add     x9, x29, #-192
        add     x9, x9, x17
        //  %r159 = load i32, i32* %r158

        ldr     x9, [x9]
        //  %r160 = load i32, i32* %r119

        ldr     x13, [x10]
        //  %r161 = getelementptr [10 x i32 ], [10 x i32 ]* %r117, i32 0, i32 %r160

        mov     x18, #8
        add     x18, sp, #360
        str     x18, [x18]
        mul     x19, x18, x13
        add     x19, sp, #368
        str     x19, [x19]
        add     x13, x29, #-112
        add     x13, x13, x19
        //  %r162 = load i32, i32* %r161

        ldr     x14, [x13]
        //  %r163 = add i32 %r162, 1

        mov     x13, #1
        add     x13, x14, x13
        //  %r164 = icmp slt i32 %r159, %r163

        cmp     x9, x13
        //  br i1 %r164, label %bb13, label %bb14


        b.lt     bb13
        b     bb14
        //bb13:

bb13:

        //  %r165 = load i32, i32* %r118

        ldr     x13, [x11]
        //  %r166 = getelementptr [10 x i32 ], [10 x i32 ]* %r116, i32 0, i32 %r165

        mov     x9, #8
        mul     x9, x9, x13
        add     x13, x29, #-192
        add     x9, x13, x9
        //  %r167 = load i32, i32* %r166

        ldr     x14, [x9]
        //  %r168 = load i32, i32* %r148

        add     x16, sp, #328
        ldr     x16, [x16]
        ldr     x13, [x16]
        //  %r169 = getelementptr i32, i32* %r100, i32 %r168

        mov     x9, #8
        mul     x9, x9, x13
        add     x9, x12, x9
        //  store i32 %r167, i32* %r169

        str     x14, [x9]
        //  %r170 = load i32, i32* %r148

        add     x17, sp, #328
        ldr     x17, [x17]
        ldr     x9, [x17]
        //  %r171 = add i32 %r170, 1

        mov     x18, #1
        add     x18, sp, #376
        str     x18, [x18]
        add     x9, x9, x18
        //  store i32 %r171, i32* %r148

        str     x9, [x19]
        add     x19, sp, #328
        str     x19, [x19]
        //  %r172 = load i32, i32* %r118

        ldr     x9, [x11]
        //  %r173 = add i32 %r172, 1

        mov     x16, #1
        add     x16, sp, #384
        str     x16, [x16]
        add     x9, x9, x16
        //  store i32 %r173, i32* %r118

        str     x9, [x11]
        //  br label %bb15


        b     bb15
        //bb14:

bb14:

        //  %r174 = load i32, i32* %r119

        ldr     x9, [x10]
        //  %r175 = getelementptr [10 x i32 ], [10 x i32 ]* %r117, i32 0, i32 %r174

        mov     x17, #8
        add     x17, sp, #392
        str     x17, [x17]
        mul     x9, x17, x9
        add     x18, x29, #-112
        add     x18, sp, #400
        str     x18, [x18]
        add     x9, x18, x9
        //  %r176 = load i32, i32* %r175

        ldr     x9, [x9]
        //  %r177 = load i32, i32* %r148

        add     x19, sp, #328
        ldr     x19, [x19]
        ldr     x13, [x19]
        //  %r178 = getelementptr i32, i32* %r100, i32 %r177

        mov     x16, #8
        add     x16, sp, #408
        str     x16, [x16]
        mul     x17, x16, x13
        add     x17, sp, #416
        str     x17, [x17]
        add     x13, x12, x17
        //  store i32 %r176, i32* %r178

        str     x9, [x13]
        //  %r179 = load i32, i32* %r148

        add     x18, sp, #328
        ldr     x18, [x18]
        ldr     x9, [x18]
        //  %r180 = add i32 %r179, 1

        mov     x19, #1
        add     x19, sp, #424
        str     x19, [x19]
        add     x9, x9, x19
        //  store i32 %r180, i32* %r148

        str     x9, [x16]
        add     x16, sp, #328
        str     x16, [x16]
        //  %r181 = load i32, i32* %r119

        ldr     x9, [x10]
        //  %r182 = add i32 %r181, 1

        mov     x17, #1
        add     x17, sp, #432
        str     x17, [x17]
        add     x9, x9, x17
        //  store i32 %r182, i32* %r119

        str     x9, [x10]
        //  br label %bb15


        b     bb15
        //bb15:

bb15:

        //  br label %bb9


        b     bb9
        //bb11:

bb11:

        //  br label %bb16


        b     bb16
        //bb16:

bb16:

        //  %r183 = load i32, i32* %r118

        ldr     x13, [x11]
        //  %r184 = load i32, i32* %r107

        add     x18, sp, #56
        ldr     x18, [x18]
        ldr     x9, [x18]
        //  %r185 = icmp slt i32 %r183, %r184

        cmp     x13, x9
        //  br i1 %r185, label %bb17, label %bb18


        b.lt     bb17
        b     bb18
        //bb17:

bb17:

        //  %r186 = load i32, i32* %r118

        ldr     x9, [x11]
        //  %r187 = getelementptr [10 x i32 ], [10 x i32 ]* %r116, i32 0, i32 %r186

        mov     x19, #8
        add     x19, sp, #440
        str     x19, [x19]
        mul     x9, x19, x9
        add     x16, x29, #-192
        add     x16, sp, #13
        str     x16, [x16]
        add     x9, x16, x9
        //  %r188 = load i32, i32* %r187

        ldr     x9, [x9]
        //  %r189 = load i32, i32* %r148

        add     x17, sp, #328
        ldr     x17, [x17]
        ldr     x13, [x17]
        //  %r190 = getelementptr i32, i32* %r100, i32 %r189

        mov     x18, #8
        add     x18, sp, #448
        str     x18, [x18]
        mul     x19, x18, x13
        add     x19, sp, #456
        str     x19, [x19]
        add     x13, x12, x19
        //  store i32 %r188, i32* %r190

        str     x9, [x13]
        //  %r191 = load i32, i32* %r148

        add     x16, sp, #328
        ldr     x16, [x16]
        ldr     x9, [x16]
        //  %r192 = add i32 %r191, 1

        mov     x17, #1
        add     x17, sp, #464
        str     x17, [x17]
        add     x9, x9, x17
        //  store i32 %r192, i32* %r148

        str     x9, [x18]
        add     x18, sp, #328
        str     x18, [x18]
        //  %r193 = load i32, i32* %r118

        ldr     x9, [x11]
        //  %r194 = add i32 %r193, 1

        mov     x19, #1
        add     x19, sp, #472
        str     x19, [x19]
        add     x9, x9, x19
        //  store i32 %r194, i32* %r118

        str     x9, [x11]
        //  br label %bb16


        b     bb16
        //bb18:

bb18:

        //  br label %bb19


        b     bb19
        //bb19:

bb19:

        //  %r195 = load i32, i32* %r119

        ldr     x11, [x10]
        //  %r196 = load i32, i32* %r112

        add     x16, sp, #64
        ldr     x16, [x16]
        ldr     x9, [x16]
        //  %r197 = icmp slt i32 %r195, %r196

        cmp     x11, x9
        //  br i1 %r197, label %bb20, label %bb21


        b.lt     bb20
        b     bb21
        //bb20:

bb20:

        //  %r198 = load i32, i32* %r119

        ldr     x9, [x10]
        //  %r199 = getelementptr [10 x i32 ], [10 x i32 ]* %r117, i32 0, i32 %r198

        mov     x11, #8
        mul     x9, x11, x9
        add     x11, x29, #-112
        add     x9, x11, x9
        //  %r200 = load i32, i32* %r199

        ldr     x11, [x9]
        //  %r201 = load i32, i32* %r148

        add     x17, sp, #328
        ldr     x17, [x17]
        ldr     x9, [x17]
        //  %r202 = getelementptr i32, i32* %r100, i32 %r201

        mov     x13, #8
        mul     x9, x13, x9
        add     x9, x12, x9
        //  store i32 %r200, i32* %r202

        str     x11, [x9]
        //  %r203 = load i32, i32* %r148

        add     x18, sp, #328
        ldr     x18, [x18]
        ldr     x9, [x18]
        //  %r204 = add i32 %r203, 1

        mov     x11, #1
        add     x9, x9, x11
        //  store i32 %r204, i32* %r148

        str     x9, [x19]
        add     x19, sp, #328
        str     x19, [x19]
        //  %r205 = load i32, i32* %r119

        ldr     x9, [x10]
        //  %r206 = add i32 %r205, 1

        mov     x11, #1
        add     x9, x9, x11
        //  store i32 %r206, i32* %r119

        str     x9, [x10]
        //  br label %bb19


        b     bb19
        //bb21:

bb21:

        //  ret i32 0

        mov     x9, #0
        mov     x0, x9
        mov     sp, x29
        ret
        sub     sp, sp, #0
MergeSort:

        //211:x29,#-32

        //209:x29,#-24

        //215:x29,#-16

        //220:x29,#-8

        //bb23:

bb23:

        //  %r220 = alloca i32

        mov     x16, #32
        sub     sp, sp, x16
        mov     x13, x0
        mov     x15, x1
        mov     x14, x2
        //  %r215 = alloca i32

        //  %r209 = alloca i32

        //  store i32 %r208, i32* %r209

        str     x15, [x11]
        //  %r211 = alloca i32

        //  store i32 %r210, i32* %r211

        str     x14, [x10]
        //  br label %bb22


        b     bb22
        //bb22:

bb22:

        //  %r212 = load i32, i32* %r209

        ldr     x15, [x11]
        //  %r213 = load i32, i32* %r211

        ldr     x14, [x10]
        //  %r214 = icmp slt i32 %r212, %r213

        cmp     x15, x14
        //  br i1 %r214, label %bb24, label %bb25


        b.lt     bb24
        b     bb25
        //bb24:

bb24:

        //  %r216 = load i32, i32* %r209

        ldr     x15, [x11]
        //  %r217 = load i32, i32* %r211

        ldr     x14, [x10]
        //  %r218 = add i32 %r216, %r217

        add     x14, x15, x14
        //  %r219 = sdiv i32 %r218, 2

        mov     x15, #2
        sdiv     x14, x14, x15
        //  store i32 %r219, i32* %r215

        str     x14, [x9]
        //  %r221 = load i32, i32* %r209

        ldr     x14, [x11]
        //  %r222 = load i32, i32* %r215

        ldr     x15, [x9]
        //  %r223 = call i32 @MergeSort(i32* %r207, i32 %r221, i32 %r222)

        mov     x0, x13
        mov     x1, x14
        mov     x2, x15
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     MergeSort
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x14, x0
        //  store i32 %r223, i32* %r220

        str     x14, [x12]
        //  %r224 = load i32, i32* %r215

        ldr     x14, [x9]
        //  %r225 = add i32 %r224, 1

        mov     x15, #1
        add     x14, x14, x15
        //  store i32 %r225, i32* %r220

        str     x14, [x12]
        //  %r226 = load i32, i32* %r220

        ldr     x14, [x12]
        //  %r227 = load i32, i32* %r211

        ldr     x15, [x10]
        //  %r228 = call i32 @MergeSort(i32* %r207, i32 %r226, i32 %r227)

        mov     x0, x13
        mov     x1, x14
        mov     x2, x15
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     MergeSort
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x14, x0
        //  store i32 %r228, i32* %r220

        str     x14, [x12]
        //  %r229 = load i32, i32* %r209

        ldr     x11, [x11]
        //  %r230 = load i32, i32* %r215

        ldr     x9, [x9]
        //  %r231 = load i32, i32* %r211

        ldr     x10, [x10]
        //  %r232 = call i32 @Merge(i32* %r207, i32 %r229, i32 %r230, i32 %r231)

        mov     x0, x13
        mov     x1, x11
        mov     x2, x9
        mov     x3, x10
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     Merge
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        //  store i32 %r232, i32* %r220

        str     x9, [x12]
        //  br label %bb26


        b     bb26
        //bb25:

bb25:

        //  br label %bb26


        b     bb26
        //bb26:

bb26:

        //  ret i32 0

        mov     x9, #0
        mov     x0, x9
        mov     sp, x29
        ret
        sub     sp, sp, #0
main:

        //245:x29,#-96

        //244:x29,#-88

        //233:x29,#-80

        //bb27:

bb27:

        //  call void @_sysy_starttime(i32 71)

        mov     x16, #96
        sub     sp, sp, x16
        mov     x0, #71
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

        mov     x13, #10
        adrp     x12, n
        add     x12, x12, #:lo12:n
        str     x13, [x12]
        //  %r233 = alloca [ 10 x i32 ]

        //  %r234 = getelementptr [10 x i32 ], [10 x i32 ]* %r233, i32 0, i32 0

        mov     x13, #8
        mov     x12, #0
        mul     x13, x13, x12
        add     x12, x29, #-80
        add     x13, x12, x13
        //  store i32 4, i32* %r234

        mov     x12, #4
        str     x12, [x13]
        //  %r235 = getelementptr [10 x i32 ], [10 x i32 ]* %r233, i32 0, i32 1

        mov     x13, #8
        mov     x12, #1
        mul     x13, x13, x12
        add     x12, x29, #-80
        add     x13, x12, x13
        //  store i32 3, i32* %r235

        mov     x12, #3
        str     x12, [x13]
        //  %r236 = getelementptr [10 x i32 ], [10 x i32 ]* %r233, i32 0, i32 2

        mov     x13, #8
        mov     x12, #2
        mul     x13, x13, x12
        add     x12, x29, #-80
        add     x13, x12, x13
        //  store i32 9, i32* %r236

        mov     x12, #9
        str     x12, [x13]
        //  %r237 = getelementptr [10 x i32 ], [10 x i32 ]* %r233, i32 0, i32 3

        mov     x13, #8
        mov     x12, #3
        mul     x13, x13, x12
        add     x12, x29, #-80
        add     x13, x12, x13
        //  store i32 2, i32* %r237

        mov     x12, #2
        str     x12, [x13]
        //  %r238 = getelementptr [10 x i32 ], [10 x i32 ]* %r233, i32 0, i32 4

        mov     x13, #8
        mov     x12, #4
        mul     x13, x13, x12
        add     x12, x29, #-80
        add     x13, x12, x13
        //  store i32 0, i32* %r238

        mov     x12, #0
        str     x12, [x13]
        //  %r239 = getelementptr [10 x i32 ], [10 x i32 ]* %r233, i32 0, i32 5

        mov     x13, #8
        mov     x12, #5
        mul     x12, x13, x12
        add     x13, x29, #-80
        add     x12, x13, x12
        //  store i32 1, i32* %r239

        mov     x13, #1
        str     x13, [x12]
        //  %r240 = getelementptr [10 x i32 ], [10 x i32 ]* %r233, i32 0, i32 6

        mov     x12, #8
        mov     x13, #6
        mul     x12, x12, x13
        add     x13, x29, #-80
        add     x12, x13, x12
        //  store i32 6, i32* %r240

        mov     x13, #6
        str     x13, [x12]
        //  %r241 = getelementptr [10 x i32 ], [10 x i32 ]* %r233, i32 0, i32 7

        mov     x12, #8
        mov     x13, #7
        mul     x13, x12, x13
        add     x12, x29, #-80
        add     x12, x12, x13
        //  store i32 5, i32* %r241

        mov     x13, #5
        str     x13, [x12]
        //  %r242 = getelementptr [10 x i32 ], [10 x i32 ]* %r233, i32 0, i32 8

        mov     x13, #8
        mov     x12, #8
        mul     x13, x13, x12
        add     x12, x29, #-80
        add     x12, x12, x13
        //  store i32 7, i32* %r242

        mov     x13, #7
        str     x13, [x12]
        //  %r243 = getelementptr [10 x i32 ], [10 x i32 ]* %r233, i32 0, i32 9

        mov     x13, #8
        mov     x12, #9
        mul     x13, x13, x12
        add     x12, x29, #-80
        add     x13, x12, x13
        //  store i32 8, i32* %r243

        mov     x12, #8
        str     x12, [x13]
        //  %r244 = alloca i32

        //  store i32 0, i32* %r244

        mov     x12, #0
        str     x12, [x10]
        //  %r245 = alloca i32

        //  %r246 = load i32, i32* @n

        adrp     x12, n
        add     x12, x12, #:lo12:n
        ldr     x12, [x12]
        //  %r247 = sub i32 %r246, 1

        mov     x13, #1
        sub     x12, x12, x13
        //  store i32 %r247, i32* %r245

        str     x12, [x9]
        //  %r248 = load i32, i32* %r244

        ldr     x12, [x10]
        //  %r249 = load i32, i32* %r245

        ldr     x13, [x9]
        //  %r250 = call i32 @MergeSort(i32* %r233, i32 %r248, i32 %r249)

        mov     x0, x11
        mov     x1, x12
        mov     x2, x13
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     MergeSort
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x11, x0
        //  store i32 %r250, i32* %r244

        str     x11, [x10]
        //  br label %bb28


        b     bb28
        //bb28:

bb28:

        //  %r251 = load i32, i32* %r244

        ldr     x12, [x10]
        //  %r252 = load i32, i32* @n

        adrp     x11, n
        add     x11, x11, #:lo12:n
        ldr     x11, [x11]
        //  %r253 = icmp slt i32 %r251, %r252

        cmp     x12, x11
        //  br i1 %r253, label %bb29, label %bb30


        b.lt     bb29
        b     bb30
        //bb29:

bb29:

        //  %r254 = load i32, i32* %r244

        ldr     x12, [x10]
        //  %r255 = getelementptr [10 x i32 ], [10 x i32 ]* %r233, i32 0, i32 %r254

        mov     x11, #8
        mul     x11, x11, x12
        add     x12, x29, #-80
        add     x11, x12, x11
        //  %r256 = load i32, i32* %r255

        ldr     x11, [x11]
        //  store i32 %r256, i32* %r245

        str     x11, [x9]
        //  %r257 = load i32, i32* %r245

        //  %r258 = load i32, i32* %r245

        ldr     x11, [x9]
        //  call void @putint(i32 %r258)

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
        //  store i32 10, i32* %r245

        mov     x11, #10
        str     x11, [x9]
        //  %r259 = load i32, i32* %r245

        //  %r260 = load i32, i32* %r245

        ldr     x11, [x9]
        //  call void @putch(i32 %r260)

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
        //  %r261 = load i32, i32* %r244

        ldr     x11, [x10]
        //  %r262 = add i32 %r261, 1

        mov     x12, #1
        add     x11, x11, x12
        //  store i32 %r262, i32* %r244

        str     x11, [x10]
        //  br label %bb28


        b     bb28
        //bb30:

bb30:

        //  call void @_sysy_stoptime(i32 97)

        mov     x0, #97
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
