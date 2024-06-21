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
.global bubblesort
.global insertsort
.global QuickSort
.global getMid
.global getMost
.global revert
.global arrCopy
.global calSum
.global avgPooling
.global main
        sub     sp, sp, #48
bubblesort:

        //102:x29,#-40

        //101:x29,#-32

        //113:x29,#-24

        //123:x29,#-16

        //124:x29,#-8

        //bb1:

bb1:

        sub     sp, sp, #48
        //  %r124 = alloca i32

        mov     x16, #48
        sub     sp, sp, x16
        mov     x13, x0
        //  %r123 = alloca i32

        //  %r113 = alloca i32

        //  %r101 = alloca i32

        //  %r102 = alloca i32

        //  store i32 0, i32* %r101

        mov     x9, #0
        str     x9, [x11]
        //  br label %bb2


        b     bb2
        //bb2:

bb2:

        //  %r103 = load i32, i32* %r101

        ldr     x15, [x11]
        //  %r104 = load i32, i32* @n

        adrp     x9, n
        add     x9, x9, #:lo12:n
        ldr     x14, [x9]
        //  %r105 = sub i32 %r104, 1

        mov     x9, #1
        sub     x9, x14, x9
        //  %r106 = icmp slt i32 %r103, %r105

        cmp     x15, x9
        //  br i1 %r106, label %bb3, label %bb4


        b.lt     bb3
        b     bb4
        //bb3:

bb3:

        //  store i32 0, i32* %r102

        mov     x9, #0
        str     x9, [x10]
        //  br label %bb5


        b     bb5
        //bb5:

bb5:

        //  %r107 = load i32, i32* %r102

        ldr     x9, [x10]
        //  %r108 = load i32, i32* @n

        adrp     x14, n
        add     x14, x14, #:lo12:n
        ldr     x15, [x14]
        //  %r109 = load i32, i32* %r101

        ldr     x14, [x11]
        //  %r110 = sub i32 %r108, %r109

        sub     x15, x15, x14
        //  %r111 = sub i32 %r110, 1

        mov     x14, #1
        sub     x14, x15, x14
        //  %r112 = icmp slt i32 %r107, %r111

        cmp     x9, x14
        //  br i1 %r112, label %bb6, label %bb7


        b.lt     bb6
        b     bb7
        //bb6:

bb6:

        //  %r114 = load i32, i32* %r102

        ldr     x14, [x10]
        //  %r115 = add i32 %r114, 1

        mov     x9, #1
        add     x9, x14, x9
        //  store i32 %r115, i32* %r113

        str     x9, [x12]
        //  %r116 = load i32, i32* %r102

        ldr     x14, [x10]
        //  %r117 = getelementptr i32, i32* %r100, i32 %r116

        mov     x9, #8
        mul     x9, x9, x14
        add     x9, x13, x9
        //  %r118 = load i32, i32* %r117

        ldr     x14, [x9]
        //  %r119 = load i32, i32* %r113

        ldr     x15, [x12]
        //  %r120 = getelementptr i32, i32* %r100, i32 %r119

        mov     x9, #8
        mul     x9, x9, x15
        add     x9, x13, x9
        //  %r121 = load i32, i32* %r120

        ldr     x9, [x9]
        //  %r122 = icmp sgt i32 %r118, %r121

        cmp     x14, x9
        //  br i1 %r122, label %bb8, label %bb9


        b.gt     bb8
        b     bb9
        //bb8:

bb8:

        //  %r125 = load i32, i32* %r102

        ldr     x16, [x10]
        add     x16, sp, #0
        str     x16, [x16]
        //  %r126 = add i32 %r125, 1

        mov     x9, #1
        add     x17, sp, #0
        ldr     x17, [x17]
        add     x9, x17, x9
        //  store i32 %r126, i32* %r124

        str     x9, [x18]
        add     x18, sp, #8
        str     x18, [x18]
        //  %r127 = load i32, i32* %r124

        add     x16, sp, #8
        ldr     x16, [x16]
        ldr     x19, [x16]
        add     x19, sp, #16
        str     x19, [x19]
        //  %r128 = getelementptr i32, i32* %r100, i32 %r127

        mov     x9, #8
        add     x17, sp, #16
        ldr     x17, [x17]
        mul     x9, x9, x17
        add     x9, x13, x9
        //  %r129 = load i32, i32* %r128

        ldr     x9, [x9]
        //  store i32 %r129, i32* %r123

        str     x9, [x18]
        add     x18, sp, #24
        str     x18, [x18]
        //  %r130 = load i32, i32* %r102

        ldr     x14, [x10]
        //  %r131 = getelementptr i32, i32* %r100, i32 %r130

        mov     x9, #8
        mul     x9, x9, x14
        add     x9, x13, x9
        //  %r132 = load i32, i32* %r131

        ldr     x14, [x9]
        //  %r133 = load i32, i32* %r124

        add     x19, sp, #8
        ldr     x19, [x19]
        ldr     x9, [x19]
        //  %r134 = getelementptr i32, i32* %r100, i32 %r133

        mov     x15, #8
        mul     x9, x15, x9
        add     x9, x13, x9
        //  store i32 %r132, i32* %r134

        str     x14, [x9]
        //  %r135 = load i32, i32* %r123

        add     x16, sp, #24
        ldr     x16, [x16]
        ldr     x14, [x16]
        //  %r136 = load i32, i32* %r102

        ldr     x9, [x10]
        //  %r137 = getelementptr i32, i32* %r100, i32 %r136

        mov     x15, #8
        mul     x9, x15, x9
        add     x9, x13, x9
        //  store i32 %r135, i32* %r137

        str     x14, [x9]
        //  br label %bb10


        b     bb10
        //bb9:

bb9:

        //  br label %bb10


        b     bb10
        //bb10:

bb10:

        //  %r138 = load i32, i32* %r102

        ldr     x9, [x10]
        //  %r139 = add i32 %r138, 1

        mov     x17, #1
        add     x17, sp, #32
        str     x17, [x17]
        add     x9, x9, x17
        //  store i32 %r139, i32* %r102

        str     x9, [x10]
        //  br label %bb5


        b     bb5
        //bb7:

bb7:

        //  %r140 = load i32, i32* %r101

        ldr     x9, [x11]
        //  %r141 = add i32 %r140, 1

        mov     x18, #1
        add     x18, sp, #40
        str     x18, [x18]
        add     x9, x9, x18
        //  store i32 %r141, i32* %r101

        str     x9, [x11]
        //  br label %bb2


        b     bb2
        //bb4:

bb4:

        //  ret i32 0

        mov     x9, #0
        mov     x0, x9
        mov     sp, x29
        ret
        sub     sp, sp, #9
insertsort:

        //143:x29,#-40

        //151:x29,#-24

        //163:x29,#-16

        //147:x29,#-32

        //173:x29,#-8

        //bb11:

bb11:

        sub     sp, sp, #9
        //  %r173 = alloca i32

        mov     x16, #48
        sub     sp, sp, x16
        mov     x11, x0
        //  %r163 = alloca i32

        //  %r151 = alloca i32

        //  %r147 = alloca i32

        //  %r143 = alloca i32

        //  store i32 1, i32* %r143

        mov     x9, #1
        str     x9, [x12]
        //  br label %bb12


        b     bb12
        //bb12:

bb12:

        //  %r144 = load i32, i32* %r143

        ldr     x9, [x12]
        //  %r145 = load i32, i32* @n

        add     x19, sp, #0
        ldr     x19, [x19]
        adrp     x19, n
        add     x19, x19, #:lo12:n
        add     x16, sp, #0
        ldr     x16, [x16]
        ldr     x15, [x16]
        //  %r146 = icmp slt i32 %r144, %r145

        cmp     x9, x15
        //  br i1 %r146, label %bb13, label %bb14


        b.lt     bb13
        b     bb14
        //bb13:

bb13:

        //  %r148 = load i32, i32* %r143

        ldr     x9, [x12]
        //  %r149 = getelementptr i32, i32* %r142, i32 %r148

        mov     x17, #8
        add     x17, sp, #8
        str     x17, [x17]
        mul     x9, x17, x9
        add     x9, x11, x9
        //  %r150 = load i32, i32* %r149

        ldr     x9, [x9]
        //  store i32 %r150, i32* %r147

        str     x9, [x14]
        //  %r152 = load i32, i32* %r143

        ldr     x9, [x12]
        //  %r153 = sub i32 %r152, 1

        mov     x18, #1
        add     x18, sp, #16
        str     x18, [x18]
        sub     x9, x9, x18
        //  store i32 %r153, i32* %r151

        str     x9, [x19]
        add     x19, sp, #24
        str     x19, [x19]
        //  br label %bb15


        b     bb15
        //bb15:

bb15:

        //  %r155 = load i32, i32* %r151

        add     x16, sp, #24
        ldr     x16, [x16]
        ldr     x9, [x16]
        //  %r156 = sub i32 0, 1

        mov     x17, #0
        add     x17, sp, #32
        str     x17, [x17]
        mov     x18, #1
        add     x18, sp, #40
        str     x18, [x18]
        sub     x15, x17, x18
        //  %r157 = icmp sgt i32 %r155, %r156

        cmp     x9, x15
        //  br i1 %r157, label %bb18, label %bb17


        b.gt     bb18
        b     bb17
        //bb18:

bb18:

        //  %r158 = load i32, i32* %r147

        ldr     x9, [x14]
        //  %r159 = load i32, i32* %r151

        add     x19, sp, #24
        ldr     x19, [x19]
        ldr     x15, [x19]
        //  %r160 = getelementptr i32, i32* %r142, i32 %r159

        mov     x16, #8
        add     x16, sp, #48
        str     x16, [x16]
        mul     x17, x16, x15
        add     x17, sp, #56
        str     x17, [x17]
        add     x15, x11, x17
        //  %r161 = load i32, i32* %r160

        ldr     x15, [x15]
        //  %r162 = icmp slt i32 %r158, %r161

        cmp     x9, x15
        //  br i1 %r162, label %bb16, label %bb17


        b.lt     bb16
        b     bb17
        //bb16:

bb16:

        //  %r164 = load i32, i32* %r151

        add     x18, sp, #24
        ldr     x18, [x18]
        ldr     x9, [x18]
        //  %r165 = add i32 %r164, 1

        mov     x19, #1
        add     x19, sp, #64
        str     x19, [x19]
        add     x9, x9, x19
        //  store i32 %r165, i32* %r163

        str     x9, [x10]
        //  %r166 = load i32, i32* %r151

        add     x16, sp, #24
        ldr     x16, [x16]
        ldr     x9, [x16]
        //  %r167 = getelementptr i32, i32* %r142, i32 %r166

        mov     x17, #8
        add     x17, sp, #72
        str     x17, [x17]
        mul     x9, x17, x9
        add     x9, x11, x9
        //  %r168 = load i32, i32* %r167

        ldr     x9, [x9]
        //  %r169 = load i32, i32* %r163

        ldr     x15, [x10]
        //  %r170 = getelementptr i32, i32* %r142, i32 %r169

        mov     x18, #8
        add     x18, sp, #80
        str     x18, [x18]
        mul     x19, x18, x15
        add     x19, sp, #88
        str     x19, [x19]
        add     x15, x11, x19
        //  store i32 %r168, i32* %r170

        str     x9, [x15]
        //  %r171 = load i32, i32* %r151

        add     x16, sp, #24
        ldr     x16, [x16]
        ldr     x9, [x16]
        //  %r172 = sub i32 %r171, 1

        mov     x17, #1
        add     x17, sp, #96
        str     x17, [x17]
        sub     x9, x9, x17
        //  store i32 %r172, i32* %r151

        str     x9, [x18]
        add     x18, sp, #24
        str     x18, [x18]
        //  br label %bb15


        b     bb15
        //bb17:

bb17:

        //  %r174 = load i32, i32* %r151

        add     x19, sp, #24
        ldr     x19, [x19]
        ldr     x9, [x19]
        //  %r175 = add i32 %r174, 1

        mov     x16, #1
        add     x16, sp, #104
        str     x16, [x16]
        add     x9, x9, x16
        //  store i32 %r175, i32* %r173

        str     x9, [x13]
        //  %r176 = load i32, i32* %r147

        ldr     x9, [x14]
        //  %r177 = load i32, i32* %r173

        ldr     x17, [x13]
        add     x17, sp, #112
        str     x17, [x17]
        //  %r178 = getelementptr i32, i32* %r142, i32 %r177

        mov     x18, #8
        add     x18, sp, #120
        str     x18, [x18]
        add     x19, sp, #112
        ldr     x19, [x19]
        mul     x16, x18, x19
        add     x16, sp, #128
        str     x16, [x16]
        add     x17, x11, x16
        add     x17, sp, #136
        str     x17, [x17]
        //  store i32 %r176, i32* %r178

        str     x9, [x18]
        add     x18, sp, #136
        str     x18, [x18]
        //  %r179 = load i32, i32* %r143

        ldr     x9, [x12]
        //  %r180 = add i32 %r179, 1

        mov     x19, #1
        add     x19, sp, #9
        str     x19, [x19]
        add     x9, x9, x19
        //  store i32 %r180, i32* %r143

        str     x9, [x12]
        //  br label %bb12


        b     bb12
        //bb14:

bb14:

        //  ret i32 0

        mov     x9, #0
        mov     x0, x9
        mov     sp, x29
        ret
        sub     sp, sp, #9
QuickSort:

        //185:x29,#-48

        //183:x29,#-40

        //189:x29,#-32

        //191:x29,#-24

        //193:x29,#-16

        //246:x29,#-8

        //bb20:

bb20:

        sub     sp, sp, #9
        //  %r246 = alloca i32

        mov     x16, #48
        sub     sp, sp, x16
        mov     x16, x0
        add     x16, sp, #0
        str     x16, [x16]
        mov     x17, x1
        add     x17, sp, #8
        str     x17, [x17]
        mov     x9, x2
        //  %r193 = alloca i32

        //  %r191 = alloca i32

        //  %r189 = alloca i32

        //  %r183 = alloca i32

        //  store i32 %r182, i32* %r183

        add     x18, sp, #8
        ldr     x18, [x18]
        str     x18, [x19]
        add     x19, sp, #16
        str     x19, [x19]
        //  %r185 = alloca i32

        //  store i32 %r184, i32* %r185

        str     x9, [x16]
        add     x16, sp, #24
        str     x16, [x16]
        //  br label %bb19


        b     bb19
        //bb19:

bb19:

        //  %r186 = load i32, i32* %r183

        add     x17, sp, #16
        ldr     x17, [x17]
        ldr     x10, [x17]
        //  %r187 = load i32, i32* %r185

        add     x18, sp, #24
        ldr     x18, [x18]
        ldr     x9, [x18]
        //  %r188 = icmp slt i32 %r186, %r187

        cmp     x10, x9
        //  br i1 %r188, label %bb21, label %bb22


        b.lt     bb21
        b     bb22
        //bb21:

bb21:

        //  %r190 = load i32, i32* %r183

        add     x19, sp, #16
        ldr     x19, [x19]
        ldr     x9, [x19]
        //  store i32 %r190, i32* %r189

        str     x9, [x14]
        //  %r192 = load i32, i32* %r185

        add     x16, sp, #24
        ldr     x16, [x16]
        ldr     x9, [x16]
        //  store i32 %r192, i32* %r191

        str     x9, [x13]
        //  %r194 = load i32, i32* %r183

        add     x18, sp, #16
        ldr     x18, [x18]
        ldr     x17, [x18]
        add     x17, sp, #32
        str     x17, [x17]
        //  %r195 = getelementptr i32, i32* %r181, i32 %r194

        mov     x9, #8
        add     x19, sp, #32
        ldr     x19, [x19]
        mul     x9, x9, x19
        add     x16, sp, #0
        ldr     x16, [x16]
        add     x17, x16, x9
        add     x17, sp, #40
        str     x17, [x17]
        //  %r196 = load i32, i32* %r195

        add     x19, sp, #40
        ldr     x19, [x19]
        ldr     x18, [x19]
        add     x18, sp, #48
        str     x18, [x18]
        //  store i32 %r196, i32* %r193

        add     x16, sp, #48
        ldr     x16, [x16]
        str     x16, [x12]
        //  br label %bb24


        b     bb24
        //bb24:

bb24:

        //  %r197 = load i32, i32* %r189

        ldr     x17, [x14]
        add     x17, sp, #56
        str     x17, [x17]
        //  %r198 = load i32, i32* %r191

        ldr     x18, [x13]
        add     x18, sp, #64
        str     x18, [x18]
        //  %r199 = icmp slt i32 %r197, %r198

        add     x19, sp, #56
        ldr     x19, [x19]
        add     x16, sp, #64
        ldr     x16, [x16]
        cmp     x19, x16
        //  br i1 %r199, label %bb25, label %bb26


        b.lt     bb25
        b     bb26
        //bb25:

bb25:

        //  br label %bb27


        b     bb27
        //bb27:

bb27:

        //  %r201 = load i32, i32* %r189

        ldr     x17, [x14]
        add     x17, sp, #72
        str     x17, [x17]
        //  %r202 = load i32, i32* %r191

        ldr     x18, [x13]
        add     x18, sp, #80
        str     x18, [x18]
        //  %r203 = icmp slt i32 %r201, %r202

        add     x19, sp, #72
        ldr     x19, [x19]
        add     x16, sp, #80
        ldr     x16, [x16]
        cmp     x19, x16
        //  br i1 %r203, label %bb30, label %bb29


        b.lt     bb30
        b     bb29
        //bb30:

bb30:

        //  %r204 = load i32, i32* %r191

        ldr     x17, [x13]
        add     x17, sp, #88
        str     x17, [x17]
        //  %r205 = getelementptr i32, i32* %r181, i32 %r204

        mov     x9, #8
        add     x18, sp, #88
        ldr     x18, [x18]
        mul     x9, x9, x18
        add     x19, sp, #0
        ldr     x19, [x19]
        add     x16, x19, x9
        add     x16, sp, #96
        str     x16, [x16]
        //  %r206 = load i32, i32* %r205

        add     x18, sp, #96
        ldr     x18, [x18]
        ldr     x17, [x18]
        add     x17, sp, #104
        str     x17, [x17]
        //  %r207 = load i32, i32* %r193

        ldr     x19, [x12]
        add     x19, sp, #112
        str     x19, [x19]
        //  %r208 = sub i32 %r207, 1

        mov     x16, #1
        add     x16, sp, #120
        str     x16, [x16]
        add     x17, sp, #112
        ldr     x17, [x17]
        sub     x18, x17, x16
        add     x18, sp, #128
        str     x18, [x18]
        //  %r209 = icmp sgt i32 %r206, %r208

        add     x19, sp, #104
        ldr     x19, [x19]
        add     x16, sp, #128
        ldr     x16, [x16]
        cmp     x19, x16
        //  br i1 %r209, label %bb28, label %bb29


        b.gt     bb28
        b     bb29
        //bb28:

bb28:

        //  %r210 = load i32, i32* %r191

        ldr     x17, [x13]
        add     x17, sp, #136
        str     x17, [x17]
        //  %r211 = sub i32 %r210, 1

        mov     x9, #1
        add     x18, sp, #136
        ldr     x18, [x18]
        sub     x9, x18, x9
        //  store i32 %r211, i32* %r191

        str     x9, [x13]
        //  br label %bb27


        b     bb27
        //bb29:

bb29:

        //  %r212 = load i32, i32* %r189

        ldr     x19, [x14]
        add     x19, sp, #144
        str     x19, [x19]
        //  %r213 = load i32, i32* %r191

        ldr     x9, [x13]
        //  %r214 = icmp slt i32 %r212, %r213

        add     x16, sp, #144
        ldr     x16, [x16]
        cmp     x16, x9
        //  br i1 %r214, label %bb31, label %bb32


        b.lt     bb31
        b     bb32
        //bb31:

bb31:

        //  %r215 = load i32, i32* %r191

        ldr     x10, [x13]
        //  %r216 = getelementptr i32, i32* %r181, i32 %r215

        mov     x9, #8
        mul     x9, x9, x10
        add     x17, sp, #0
        ldr     x17, [x17]
        add     x9, x17, x9
        //  %r217 = load i32, i32* %r216

        ldr     x11, [x9]
        //  %r218 = load i32, i32* %r189

        ldr     x10, [x14]
        //  %r219 = getelementptr i32, i32* %r181, i32 %r218

        mov     x9, #8
        mul     x18, x9, x10
        add     x18, sp, #152
        str     x18, [x18]
        add     x19, sp, #0
        ldr     x19, [x19]
        add     x9, x19, x18
        //  store i32 %r217, i32* %r219

        str     x11, [x9]
        //  %r220 = load i32, i32* %r189

        ldr     x10, [x14]
        //  %r221 = add i32 %r220, 1

        mov     x9, #1
        add     x9, x10, x9
        //  store i32 %r221, i32* %r189

        str     x9, [x14]
        //  br label %bb33


        b     bb33
        //bb32:

bb32:

        //  br label %bb33


        b     bb33
        //bb33:

bb33:

        //  br label %bb34


        b     bb34
        //bb34:

bb34:

        //  %r223 = load i32, i32* %r189

        ldr     x10, [x14]
        //  %r224 = load i32, i32* %r191

        ldr     x9, [x13]
        //  %r225 = icmp slt i32 %r223, %r224

        cmp     x10, x9
        //  br i1 %r225, label %bb37, label %bb36


        b.lt     bb37
        b     bb36
        //bb37:

bb37:

        //  %r226 = load i32, i32* %r189

        ldr     x10, [x14]
        //  %r227 = getelementptr i32, i32* %r181, i32 %r226

        mov     x9, #8
        mul     x9, x9, x10
        add     x16, sp, #0
        ldr     x16, [x16]
        add     x9, x16, x9
        //  %r228 = load i32, i32* %r227

        ldr     x10, [x9]
        //  %r229 = load i32, i32* %r193

        ldr     x9, [x12]
        //  %r230 = icmp slt i32 %r228, %r229

        cmp     x10, x9
        //  br i1 %r230, label %bb35, label %bb36


        b.lt     bb35
        b     bb36
        //bb35:

bb35:

        //  %r231 = load i32, i32* %r189

        ldr     x10, [x14]
        //  %r232 = add i32 %r231, 1

        mov     x9, #1
        add     x9, x10, x9
        //  store i32 %r232, i32* %r189

        str     x9, [x14]
        //  br label %bb34


        b     bb34
        //bb36:

bb36:

        //  %r233 = load i32, i32* %r189

        ldr     x10, [x14]
        //  %r234 = load i32, i32* %r191

        ldr     x9, [x13]
        //  %r235 = icmp slt i32 %r233, %r234

        cmp     x10, x9
        //  br i1 %r235, label %bb38, label %bb39


        b.lt     bb38
        b     bb39
        //bb38:

bb38:

        //  %r236 = load i32, i32* %r189

        ldr     x9, [x14]
        //  %r237 = getelementptr i32, i32* %r181, i32 %r236

        mov     x17, #8
        add     x17, sp, #160
        str     x17, [x17]
        mul     x9, x17, x9
        add     x18, sp, #0
        ldr     x18, [x18]
        add     x9, x18, x9
        //  %r238 = load i32, i32* %r237

        ldr     x10, [x9]
        //  %r239 = load i32, i32* %r191

        ldr     x9, [x13]
        //  %r240 = getelementptr i32, i32* %r181, i32 %r239

        mov     x19, #8
        add     x19, sp, #168
        str     x19, [x19]
        mul     x9, x19, x9
        add     x16, sp, #0
        ldr     x16, [x16]
        add     x17, x16, x9
        add     x17, sp, #176
        str     x17, [x17]
        //  store i32 %r238, i32* %r240

        str     x10, [x18]
        add     x18, sp, #176
        str     x18, [x18]
        //  %r241 = load i32, i32* %r191

        ldr     x19, [x13]
        add     x19, sp, #9
        str     x19, [x19]
        //  %r242 = sub i32 %r241, 1

        mov     x9, #1
        add     x16, sp, #184
        ldr     x16, [x16]
        sub     x9, x16, x9
        //  store i32 %r242, i32* %r191

        str     x9, [x13]
        //  br label %bb40


        b     bb40
        //bb39:

bb39:

        //  br label %bb40


        b     bb40
        //bb40:

bb40:

        //  br label %bb24


        b     bb24
        //bb26:

bb26:

        //  %r243 = load i32, i32* %r193

        ldr     x11, [x12]
        //  %r244 = load i32, i32* %r189

        ldr     x10, [x14]
        //  %r245 = getelementptr i32, i32* %r181, i32 %r244

        mov     x9, #8
        mul     x9, x9, x10
        add     x17, sp, #0
        ldr     x17, [x17]
        add     x9, x17, x9
        //  store i32 %r243, i32* %r245

        str     x11, [x9]
        //  %r247 = load i32, i32* %r189

        ldr     x9, [x14]
        //  %r248 = sub i32 %r247, 1

        mov     x10, #1
        sub     x9, x9, x10
        //  store i32 %r248, i32* %r246

        str     x9, [x15]
        //  %r249 = load i32, i32* %r183

        add     x18, sp, #16
        ldr     x18, [x18]
        ldr     x9, [x18]
        //  %r250 = load i32, i32* %r246

        ldr     x10, [x15]
        //  %r251 = call i32 @QuickSort(i32* %r181, i32 %r249, i32 %r250)

        add     x19, sp, #0
        ldr     x19, [x19]
        mov     x0, x19
        mov     x1, x9
        mov     x2, x10
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     QuickSort
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        //  store i32 %r251, i32* %r246

        str     x9, [x15]
        //  %r252 = load i32, i32* %r189

        ldr     x10, [x14]
        //  %r253 = add i32 %r252, 1

        mov     x9, #1
        add     x9, x10, x9
        //  store i32 %r253, i32* %r246

        str     x9, [x15]
        //  %r254 = load i32, i32* %r246

        ldr     x9, [x15]
        //  %r255 = load i32, i32* %r185

        add     x16, sp, #24
        ldr     x16, [x16]
        ldr     x10, [x16]
        //  %r256 = call i32 @QuickSort(i32* %r181, i32 %r254, i32 %r255)

        add     x17, sp, #0
        ldr     x17, [x17]
        mov     x0, x17
        mov     x1, x9
        mov     x2, x10
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     QuickSort
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        //  store i32 %r256, i32* %r246

        str     x9, [x15]
        //  br label %bb23


        b     bb23
        //bb22:

bb22:

        //  br label %bb23


        b     bb23
        //bb23:

bb23:

        //  ret i32 0

        mov     x9, #0
        mov     x0, x9
        mov     sp, x29
        ret
        sub     sp, sp, #0
getMid:

        //258:x29,#-16

        //266:x29,#-8

        //bb41:

bb41:

        //  %r266 = alloca i32

        mov     x16, #16
        sub     sp, sp, x16
        mov     x9, x0
        //  %r258 = alloca i32

        //  %r259 = load i32, i32* @n

        adrp     x12, n
        add     x12, x12, #:lo12:n
        ldr     x13, [x12]
        //  %r260 = sdiv i32 %r259, 2

        mov     x12, #2
        sdiv     x13, x13, x12
        //  %r261 = mul i32 %r260, 2

        mov     x12, #2
        mul     x13, x13, x12
        //  %r262 = load i32, i32* @n

        adrp     x12, n
        add     x12, x12, #:lo12:n
        ldr     x12, [x12]
        //  %r263 = icmp eq i32 %r261, %r262

        cmp     x13, x12
        //  br i1 %r263, label %bb42, label %bb43


        b.eq     bb42
        b     bb43
        //bb42:

bb42:

        //  %r264 = load i32, i32* @n

        adrp     x12, n
        add     x12, x12, #:lo12:n
        ldr     x12, [x12]
        //  %r265 = sdiv i32 %r264, 2

        mov     x13, #2
        sdiv     x12, x12, x13
        //  store i32 %r265, i32* %r258

        str     x12, [x10]
        //  %r267 = load i32, i32* %r258

        ldr     x12, [x10]
        //  %r268 = sub i32 %r267, 1

        mov     x13, #1
        sub     x12, x12, x13
        //  store i32 %r268, i32* %r266

        str     x12, [x11]
        //  %r269 = load i32, i32* %r258

        ldr     x10, [x10]
        //  %r270 = getelementptr i32, i32* %r257, i32 %r269

        mov     x12, #8
        mul     x10, x12, x10
        add     x10, x9, x10
        //  %r271 = load i32, i32* %r270

        ldr     x12, [x10]
        //  %r272 = load i32, i32* %r266

        ldr     x10, [x11]
        //  %r273 = getelementptr i32, i32* %r257, i32 %r272

        mov     x11, #8
        mul     x10, x11, x10
        add     x9, x9, x10
        //  %r274 = load i32, i32* %r273

        ldr     x9, [x9]
        //  %r275 = add i32 %r271, %r274

        add     x9, x12, x9
        //  %r276 = sdiv i32 %r275, 2

        mov     x10, #2
        sdiv     x9, x9, x10
        //  ret i32 %r276

        mov     x0, x9
        mov     sp, x29
        ret
        //bb43:

bb43:

        //  %r277 = load i32, i32* @n

        adrp     x11, n
        add     x11, x11, #:lo12:n
        ldr     x11, [x11]
        //  %r278 = sdiv i32 %r277, 2

        mov     x12, #2
        sdiv     x11, x11, x12
        //  store i32 %r278, i32* %r258

        str     x11, [x10]
        //  %r279 = load i32, i32* %r258

        ldr     x10, [x10]
        //  %r280 = getelementptr i32, i32* %r257, i32 %r279

        mov     x11, #8
        mul     x10, x11, x10
        add     x9, x9, x10
        //  %r281 = load i32, i32* %r280

        ldr     x9, [x9]
        //  ret i32 %r281

        mov     x0, x9
        mov     sp, x29
        ret
        //bb44:

bb44:

        //  ret i32 0

        mov     x9, #0
        mov     x0, x9
        mov     sp, x29
        ret
        sub     sp, sp, #16
getMost:

        //284:x29,#-8032

        //291:x29,#-24

        //292:x29,#-16

        //283:x29,#-8024

        //296:x29,#-8

        //bb45:

bb45:

        sub     sp, sp, #16
        //  %r296 = alloca i32

        mov     x16, #8032
        sub     sp, sp, x16
        mov     x12, x0
        //  %r292 = alloca i32

        //  %r291 = alloca i32

        //  %r283 = alloca [ 1000 x i32 ]

        //  %r284 = alloca i32

        //  store i32 0, i32* %r284

        mov     x9, #0
        str     x9, [x13]
        //  br label %bb46


        b     bb46
        //bb46:

bb46:

        //  %r285 = load i32, i32* %r284

        ldr     x9, [x13]
        //  %r286 = icmp slt i32 %r285, 1000

        mov     x10, #1000
        cmp     x9, x10
        //  br i1 %r286, label %bb47, label %bb48


        b.lt     bb47
        b     bb48
        //bb47:

bb47:

        //  %r287 = load i32, i32* %r284

        ldr     x9, [x13]
        //  %r288 = getelementptr [1000 x i32 ], [1000 x i32 ]* %r283, i32 0, i32 %r287

        mov     x10, #8
        mul     x10, x10, x9
        add     x9, x29, #-8024
        add     x10, x9, x10
        //  store i32 0, i32* %r288

        mov     x9, #0
        str     x9, [x10]
        //  %r289 = load i32, i32* %r284

        ldr     x10, [x13]
        //  %r290 = add i32 %r289, 1

        mov     x9, #1
        add     x9, x10, x9
        //  store i32 %r290, i32* %r284

        str     x9, [x13]
        //  br label %bb46


        b     bb46
        //bb48:

bb48:

        //  store i32 0, i32* %r284

        mov     x9, #0
        str     x9, [x13]
        //  store i32 0, i32* %r291

        mov     x9, #0
        str     x9, [x14]
        //  br label %bb49


        b     bb49
        //bb49:

bb49:

        //  %r293 = load i32, i32* %r284

        ldr     x10, [x13]
        //  %r294 = load i32, i32* @n

        adrp     x9, n
        add     x9, x9, #:lo12:n
        ldr     x9, [x9]
        //  %r295 = icmp slt i32 %r293, %r294

        cmp     x10, x9
        //  br i1 %r295, label %bb50, label %bb51


        b.lt     bb50
        b     bb51
        //bb50:

bb50:

        //  %r297 = load i32, i32* %r284

        ldr     x10, [x13]
        //  %r298 = getelementptr i32, i32* %r282, i32 %r297

        mov     x9, #8
        mul     x9, x9, x10
        add     x9, x12, x9
        //  %r299 = load i32, i32* %r298

        ldr     x9, [x9]
        //  store i32 %r299, i32* %r296

        str     x9, [x18]
        add     x18, sp, #0
        str     x18, [x18]
        //  %r300 = load i32, i32* %r296

        add     x19, sp, #0
        ldr     x19, [x19]
        ldr     x10, [x19]
        //  %r301 = getelementptr [1000 x i32 ], [1000 x i32 ]* %r283, i32 0, i32 %r300

        mov     x9, #8
        mul     x10, x9, x10
        add     x9, x29, #-8024
        add     x9, x9, x10
        //  %r302 = load i32, i32* %r301

        ldr     x10, [x9]
        //  %r303 = add i32 %r302, 1

        mov     x9, #1
        add     x10, x10, x9
        //  %r304 = load i32, i32* %r296

        add     x16, sp, #0
        ldr     x16, [x16]
        ldr     x9, [x16]
        //  %r305 = getelementptr [1000 x i32 ], [1000 x i32 ]* %r283, i32 0, i32 %r304

        mov     x17, #8
        add     x17, sp, #8
        str     x17, [x17]
        mul     x11, x17, x9
        add     x9, x29, #-8024
        add     x9, x9, x11
        //  store i32 %r303, i32* %r305

        str     x10, [x9]
        //  %r306 = load i32, i32* %r296

        add     x18, sp, #0
        ldr     x18, [x18]
        ldr     x9, [x18]
        //  %r307 = getelementptr [1000 x i32 ], [1000 x i32 ]* %r283, i32 0, i32 %r306

        mov     x10, #8
        mul     x9, x10, x9
        add     x10, x29, #-8024
        add     x9, x10, x9
        //  %r308 = load i32, i32* %r307

        ldr     x10, [x9]
        //  %r309 = load i32, i32* %r291

        ldr     x9, [x14]
        //  %r310 = icmp sgt i32 %r308, %r309

        cmp     x10, x9
        //  br i1 %r310, label %bb52, label %bb53


        b.gt     bb52
        b     bb53
        //bb52:

bb52:

        //  %r311 = load i32, i32* %r296

        add     x19, sp, #0
        ldr     x19, [x19]
        ldr     x9, [x19]
        //  %r312 = getelementptr [1000 x i32 ], [1000 x i32 ]* %r283, i32 0, i32 %r311

        mov     x10, #8
        mul     x9, x10, x9
        add     x10, x29, #-8024
        add     x9, x10, x9
        //  %r313 = load i32, i32* %r312

        ldr     x9, [x9]
        //  store i32 %r313, i32* %r291

        str     x9, [x14]
        //  %r314 = load i32, i32* %r296

        add     x16, sp, #0
        ldr     x16, [x16]
        ldr     x9, [x16]
        //  store i32 %r314, i32* %r292

        str     x9, [x15]
        //  br label %bb54


        b     bb54
        //bb53:

bb53:

        //  br label %bb54


        b     bb54
        //bb54:

bb54:

        //  %r315 = load i32, i32* %r284

        ldr     x9, [x13]
        //  %r316 = add i32 %r315, 1

        mov     x10, #1
        add     x9, x9, x10
        //  store i32 %r316, i32* %r284

        str     x9, [x13]
        //  br label %bb49


        b     bb49
        //bb51:

bb51:

        //  %r317 = load i32, i32* %r292

        ldr     x9, [x15]
        //  ret i32 %r317

        mov     x0, x9
        mov     sp, x29
        ret
        sub     sp, sp, #0
revert:

        //321:x29,#-24

        //320:x29,#-16

        //319:x29,#-8

        //bb55:

bb55:

        //  %r319 = alloca i32

        mov     x16, #32
        sub     sp, sp, x16
        mov     x9, x0
        //  %r320 = alloca i32

        //  %r321 = alloca i32

        //  store i32 0, i32* %r320

        mov     x13, #0
        str     x13, [x11]
        //  store i32 0, i32* %r321

        mov     x13, #0
        str     x13, [x12]
        //  br label %bb56


        b     bb56
        //bb56:

bb56:

        //  %r322 = load i32, i32* %r320

        ldr     x13, [x11]
        //  %r323 = load i32, i32* %r321

        ldr     x14, [x12]
        //  %r324 = icmp slt i32 %r322, %r323

        cmp     x13, x14
        //  br i1 %r324, label %bb57, label %bb58


        b.lt     bb57
        b     bb58
        //bb57:

bb57:

        //  %r325 = load i32, i32* %r320

        ldr     x13, [x11]
        //  %r326 = getelementptr i32, i32* %r318, i32 %r325

        mov     x14, #8
        mul     x13, x14, x13
        add     x13, x9, x13
        //  %r327 = load i32, i32* %r326

        ldr     x13, [x13]
        //  store i32 %r327, i32* %r319

        str     x13, [x10]
        //  %r328 = load i32, i32* %r321

        ldr     x13, [x12]
        //  %r329 = getelementptr i32, i32* %r318, i32 %r328

        mov     x14, #8
        mul     x13, x14, x13
        add     x13, x9, x13
        //  %r330 = load i32, i32* %r329

        ldr     x13, [x13]
        //  %r331 = load i32, i32* %r320

        ldr     x15, [x11]
        //  %r332 = getelementptr i32, i32* %r318, i32 %r331

        mov     x14, #8
        mul     x14, x14, x15
        add     x14, x9, x14
        //  store i32 %r330, i32* %r332

        str     x13, [x14]
        //  %r333 = load i32, i32* %r319

        ldr     x14, [x10]
        //  %r334 = load i32, i32* %r321

        ldr     x13, [x12]
        //  %r335 = getelementptr i32, i32* %r318, i32 %r334

        mov     x15, #8
        mul     x13, x15, x13
        add     x13, x9, x13
        //  store i32 %r333, i32* %r335

        str     x14, [x13]
        //  %r336 = load i32, i32* %r320

        ldr     x13, [x11]
        //  %r337 = add i32 %r336, 1

        mov     x14, #1
        add     x13, x13, x14
        //  store i32 %r337, i32* %r320

        str     x13, [x11]
        //  %r338 = load i32, i32* %r321

        ldr     x13, [x12]
        //  %r339 = sub i32 %r338, 1

        mov     x14, #1
        sub     x13, x13, x14
        //  store i32 %r339, i32* %r321

        str     x13, [x12]
        //  br label %bb56


        b     bb56
        //bb58:

bb58:

        //  ret i32 0

        mov     x9, #0
        mov     x0, x9
        mov     sp, x29
        ret
        sub     sp, sp, #0
arrCopy:

        //342:x29,#-8

        //bb59:

bb59:

        //  %r342 = alloca i32

        mov     x16, #16
        sub     sp, sp, x16
        mov     x11, x0
        mov     x10, x1
        //  store i32 0, i32* %r342

        mov     x12, #0
        str     x12, [x9]
        //  br label %bb60


        b     bb60
        //bb60:

bb60:

        //  %r343 = load i32, i32* %r342

        ldr     x13, [x9]
        //  %r344 = load i32, i32* @n

        adrp     x12, n
        add     x12, x12, #:lo12:n
        ldr     x12, [x12]
        //  %r345 = icmp slt i32 %r343, %r344

        cmp     x13, x12
        //  br i1 %r345, label %bb61, label %bb62


        b.lt     bb61
        b     bb62
        //bb61:

bb61:

        //  %r346 = load i32, i32* %r342

        ldr     x12, [x9]
        //  %r347 = getelementptr i32, i32* %r340, i32 %r346

        mov     x13, #8
        mul     x12, x13, x12
        add     x12, x11, x12
        //  %r348 = load i32, i32* %r347

        ldr     x13, [x12]
        //  %r349 = load i32, i32* %r342

        ldr     x12, [x9]
        //  %r350 = getelementptr i32, i32* %r341, i32 %r349

        mov     x14, #8
        mul     x12, x14, x12
        add     x12, x10, x12
        //  store i32 %r348, i32* %r350

        str     x13, [x12]
        //  %r351 = load i32, i32* %r342

        ldr     x12, [x9]
        //  %r352 = add i32 %r351, 1

        mov     x13, #1
        add     x12, x12, x13
        //  store i32 %r352, i32* %r342

        str     x12, [x9]
        //  br label %bb60


        b     bb60
        //bb62:

bb62:

        //  ret i32 0

        mov     x9, #0
        mov     x0, x9
        mov     sp, x29
        ret
        sub     sp, sp, #0
calSum:

        //355:x29,#-24

        //356:x29,#-16

        //357:x29,#-8

        //bb64:

bb64:

        //  %r357 = alloca i32

        mov     x16, #32
        sub     sp, sp, x16
        mov     x9, x0
        mov     x10, x1
        //  %r356 = alloca i32

        //  %r355 = alloca i32

        //  store i32 %r354, i32* %r355

        str     x10, [x11]
        //  br label %bb63


        b     bb63
        //bb63:

bb63:

        //  store i32 0, i32* %r356

        mov     x10, #0
        str     x10, [x12]
        //  store i32 0, i32* %r357

        mov     x10, #0
        str     x10, [x13]
        //  br label %bb65


        b     bb65
        //bb65:

bb65:

        //  %r358 = load i32, i32* %r357

        ldr     x10, [x13]
        //  %r359 = load i32, i32* @n

        adrp     x14, n
        add     x14, x14, #:lo12:n
        ldr     x14, [x14]
        //  %r360 = icmp slt i32 %r358, %r359

        cmp     x10, x14
        //  br i1 %r360, label %bb66, label %bb67


        b.lt     bb66
        b     bb67
        //bb66:

bb66:

        //  %r361 = load i32, i32* %r356

        ldr     x10, [x12]
        //  %r362 = load i32, i32* %r357

        ldr     x14, [x13]
        //  %r363 = getelementptr i32, i32* %r353, i32 %r362

        mov     x15, #8
        mul     x14, x15, x14
        add     x14, x9, x14
        //  %r364 = load i32, i32* %r363

        ldr     x14, [x14]
        //  %r365 = add i32 %r361, %r364

        add     x10, x10, x14
        //  store i32 %r365, i32* %r356

        str     x10, [x12]
        //  %r366 = load i32, i32* %r357

        ldr     x10, [x13]
        //  %r367 = load i32, i32* %r357

        ldr     x15, [x13]
        //  %r368 = load i32, i32* %r355

        ldr     x14, [x11]
        //  %r369 = sdiv i32 %r367, %r368

        sdiv     x15, x15, x14
        //  %r370 = load i32, i32* %r355

        ldr     x14, [x11]
        //  %r371 = mul i32 %r369, %r370

        mul     x14, x15, x14
        //  %r372 = sub i32 %r366, %r371

        sub     x14, x10, x14
        //  %r373 = load i32, i32* %r355

        ldr     x10, [x11]
        //  %r374 = sub i32 %r373, 1

        mov     x15, #1
        sub     x10, x10, x15
        //  %r375 = icmp ne i32 %r372, %r374

        cmp     x14, x10
        //  br i1 %r375, label %bb68, label %bb69


        b.ne     bb68
        b     bb69
        //bb68:

bb68:

        //  %r376 = load i32, i32* %r357

        ldr     x10, [x13]
        //  %r377 = getelementptr i32, i32* %r353, i32 %r376

        mov     x14, #8
        mul     x10, x14, x10
        add     x10, x9, x10
        //  store i32 0, i32* %r377

        mov     x14, #0
        str     x14, [x10]
        //  br label %bb70


        b     bb70
        //bb69:

bb69:

        //  %r378 = load i32, i32* %r356

        ldr     x14, [x12]
        //  %r379 = load i32, i32* %r357

        ldr     x10, [x13]
        //  %r380 = getelementptr i32, i32* %r353, i32 %r379

        mov     x15, #8
        mul     x10, x15, x10
        add     x10, x9, x10
        //  store i32 %r378, i32* %r380

        str     x14, [x10]
        //  store i32 0, i32* %r356

        mov     x10, #0
        str     x10, [x12]
        //  br label %bb70


        b     bb70
        //bb70:

bb70:

        //  %r381 = load i32, i32* %r357

        ldr     x10, [x13]
        //  %r382 = add i32 %r381, 1

        mov     x14, #1
        add     x10, x10, x14
        //  store i32 %r382, i32* %r357

        str     x10, [x13]
        //  br label %bb65


        b     bb65
        //bb67:

bb67:

        //  ret i32 0

        mov     x9, #0
        mov     x0, x9
        mov     sp, x29
        ret
        sub     sp, sp, #192
avgPooling:

        //385:x29,#-40

        //386:x29,#-32

        //387:x29,#-24

        //388:x29,#-16

        //418:x29,#-8

        //bb72:

bb72:

        sub     sp, sp, #192
        //  %r418 = alloca i32

        mov     x16, #48
        sub     sp, sp, x16
        mov     x17, x0
        add     x17, sp, #0
        str     x17, [x17]
        mov     x9, x1
        //  %r388 = alloca i32

        //  %r387 = alloca i32

        //  %r386 = alloca i32

        //  %r385 = alloca i32

        //  store i32 %r384, i32* %r385

        str     x9, [x14]
        //  br label %bb71


        b     bb71
        //bb71:

bb71:

        //  store i32 0, i32* %r387

        mov     x9, #0
        str     x9, [x12]
        //  store i32 0, i32* %r386

        mov     x9, #0
        str     x9, [x13]
        //  br label %bb73


        b     bb73
        //bb73:

bb73:

        //  %r389 = load i32, i32* %r387

        ldr     x15, [x12]
        //  %r390 = load i32, i32* @n

        add     x18, sp, #8
        ldr     x18, [x18]
        adrp     x18, n
        add     x18, x18, #:lo12:n
        add     x19, sp, #8
        ldr     x19, [x19]
        ldr     x9, [x19]
        //  %r391 = icmp slt i32 %r389, %r390

        cmp     x15, x9
        //  br i1 %r391, label %bb74, label %bb75


        b.lt     bb74
        b     bb75
        //bb74:

bb74:

        //  %r392 = load i32, i32* %r387

        ldr     x9, [x12]
        //  %r393 = load i32, i32* %r385

        ldr     x15, [x14]
        //  %r394 = sub i32 %r393, 1

        mov     x16, #1
        add     x16, sp, #16
        str     x16, [x16]
        sub     x15, x15, x16
        //  %r395 = icmp slt i32 %r392, %r394

        cmp     x9, x15
        //  br i1 %r395, label %bb76, label %bb77


        b.lt     bb76
        b     bb77
        //bb76:

bb76:

        //  %r396 = load i32, i32* %r386

        ldr     x15, [x13]
        //  %r397 = load i32, i32* %r387

        ldr     x9, [x12]
        //  %r398 = getelementptr i32, i32* %r383, i32 %r397

        mov     x17, #8
        add     x17, sp, #24
        str     x17, [x17]
        mul     x18, x17, x9
        add     x18, sp, #32
        str     x18, [x18]
        add     x19, sp, #0
        ldr     x19, [x19]
        add     x16, x19, x18
        add     x16, sp, #40
        str     x16, [x16]
        //  %r399 = load i32, i32* %r398

        add     x18, sp, #40
        ldr     x18, [x18]
        ldr     x17, [x18]
        add     x17, sp, #48
        str     x17, [x17]
        //  %r400 = add i32 %r396, %r399

        add     x19, sp, #48
        ldr     x19, [x19]
        add     x9, x15, x19
        //  store i32 %r400, i32* %r386

        str     x9, [x13]
        //  br label %bb78


        b     bb78
        //bb77:

bb77:

        //  %r401 = load i32, i32* %r387

        ldr     x9, [x12]
        //  %r402 = load i32, i32* %r385

        ldr     x16, [x14]
        add     x16, sp, #56
        str     x16, [x16]
        //  %r403 = sub i32 %r402, 1

        mov     x17, #1
        add     x17, sp, #64
        str     x17, [x17]
        add     x18, sp, #56
        ldr     x18, [x18]
        sub     x19, x18, x17
        add     x19, sp, #72
        str     x19, [x19]
        //  %r404 = icmp eq i32 %r401, %r403

        add     x16, sp, #72
        ldr     x16, [x16]
        cmp     x9, x16
        //  br i1 %r404, label %bb79, label %bb80


        b.eq     bb79
        b     bb80
        //bb79:

bb79:

        //  %r405 = getelementptr i32, i32* %r383, i32 0

        mov     x9, #8
        mov     x17, #0
        add     x17, sp, #80
        str     x17, [x17]
        mul     x9, x9, x17
        add     x18, sp, #0
        ldr     x18, [x18]
        add     x9, x18, x9
        //  %r406 = load i32, i32* %r405

        ldr     x9, [x9]
        //  store i32 %r406, i32* %r388

        str     x9, [x11]
        //  %r407 = load i32, i32* %r386

        ldr     x9, [x13]
        //  %r408 = load i32, i32* %r385

        ldr     x19, [x14]
        add     x19, sp, #88
        str     x19, [x19]
        //  %r409 = sdiv i32 %r407, %r408

        add     x16, sp, #88
        ldr     x16, [x16]
        sdiv     x9, x9, x16
        //  %r410 = getelementptr i32, i32* %r383, i32 0

        mov     x17, #8
        add     x17, sp, #96
        str     x17, [x17]
        mov     x18, #0
        add     x18, sp, #104
        str     x18, [x18]
        mul     x19, x17, x18
        add     x19, sp, #112
        str     x19, [x19]
        add     x16, sp, #0
        ldr     x16, [x16]
        add     x17, x16, x19
        add     x17, sp, #120
        str     x17, [x17]
        //  store i32 %r409, i32* %r410

        str     x9, [x18]
        add     x18, sp, #120
        str     x18, [x18]
        //  br label %bb81


        b     bb81
        //bb80:

bb80:

        //  %r411 = load i32, i32* %r386

        ldr     x19, [x13]
        add     x19, sp, #128
        str     x19, [x19]
        //  %r412 = load i32, i32* %r387

        ldr     x9, [x12]
        //  %r413 = getelementptr i32, i32* %r383, i32 %r412

        mov     x16, #8
        add     x16, sp, #136
        str     x16, [x16]
        mul     x17, x16, x9
        add     x17, sp, #144
        str     x17, [x17]
        add     x18, sp, #0
        ldr     x18, [x18]
        add     x9, x18, x17
        //  %r414 = load i32, i32* %r413

        ldr     x9, [x9]
        //  %r415 = add i32 %r411, %r414

        add     x19, sp, #128
        ldr     x19, [x19]
        add     x15, x19, x9
        //  %r416 = load i32, i32* %r388

        ldr     x9, [x11]
        //  %r417 = sub i32 %r415, %r416

        sub     x9, x15, x9
        //  store i32 %r417, i32* %r386

        str     x9, [x13]
        //  %r419 = load i32, i32* %r387

        ldr     x15, [x12]
        //  %r420 = load i32, i32* %r385

        ldr     x9, [x14]
        //  %r421 = sub i32 %r419, %r420

        sub     x9, x15, x9
        //  %r422 = add i32 %r421, 1

        mov     x16, #1
        add     x16, sp, #152
        str     x16, [x16]
        add     x9, x9, x16
        //  store i32 %r422, i32* %r418

        str     x9, [x10]
        //  %r423 = load i32, i32* %r418

        ldr     x9, [x10]
        //  %r424 = getelementptr i32, i32* %r383, i32 %r423

        mov     x17, #8
        add     x17, sp, #160
        str     x17, [x17]
        mul     x9, x17, x9
        add     x18, sp, #0
        ldr     x18, [x18]
        add     x9, x18, x9
        //  %r425 = load i32, i32* %r424

        ldr     x9, [x9]
        //  store i32 %r425, i32* %r388

        str     x9, [x11]
        //  %r426 = load i32, i32* %r386

        ldr     x15, [x13]
        //  %r427 = load i32, i32* %r385

        ldr     x9, [x14]
        //  %r428 = sdiv i32 %r426, %r427

        sdiv     x9, x15, x9
        //  %r429 = load i32, i32* %r418

        ldr     x15, [x10]
        //  %r430 = getelementptr i32, i32* %r383, i32 %r429

        mov     x19, #8
        add     x19, sp, #168
        str     x19, [x19]
        mul     x16, x19, x15
        add     x16, sp, #176
        str     x16, [x16]
        add     x17, sp, #0
        ldr     x17, [x17]
        add     x15, x17, x16
        //  store i32 %r428, i32* %r430

        str     x9, [x15]
        //  br label %bb81


        b     bb81
        //bb81:

bb81:

        //  br label %bb78


        b     bb78
        //bb78:

bb78:

        //  %r431 = load i32, i32* %r387

        ldr     x9, [x12]
        //  %r432 = add i32 %r431, 1

        mov     x18, #1
        add     x18, sp, #184
        str     x18, [x18]
        add     x9, x9, x18
        //  store i32 %r432, i32* %r387

        str     x9, [x12]
        //  br label %bb73


        b     bb73
        //bb75:

bb75:

        //  %r433 = load i32, i32* @n

        adrp     x9, n
        add     x9, x9, #:lo12:n
        ldr     x10, [x9]
        //  %r434 = load i32, i32* %r385

        ldr     x9, [x14]
        //  %r435 = sub i32 %r433, %r434

        sub     x9, x10, x9
        //  %r436 = add i32 %r435, 1

        mov     x10, #1
        add     x9, x9, x10
        //  store i32 %r436, i32* %r387

        str     x9, [x12]
        //  br label %bb82


        b     bb82
        //bb82:

bb82:

        //  %r437 = load i32, i32* %r387

        ldr     x10, [x12]
        //  %r438 = load i32, i32* @n

        adrp     x9, n
        add     x9, x9, #:lo12:n
        ldr     x9, [x9]
        //  %r439 = icmp slt i32 %r437, %r438

        cmp     x10, x9
        //  br i1 %r439, label %bb83, label %bb84


        b.lt     bb83
        b     bb84
        //bb83:

bb83:

        //  %r440 = load i32, i32* %r387

        ldr     x9, [x12]
        //  %r441 = getelementptr i32, i32* %r383, i32 %r440

        mov     x10, #8
        mul     x9, x10, x9
        add     x19, sp, #0
        ldr     x19, [x19]
        add     x9, x19, x9
        //  store i32 0, i32* %r441

        mov     x10, #0
        str     x10, [x9]
        //  %r442 = load i32, i32* %r387

        ldr     x9, [x12]
        //  %r443 = add i32 %r442, 1

        mov     x10, #1
        add     x9, x9, x10
        //  store i32 %r443, i32* %r387

        str     x9, [x12]
        //  br label %bb82


        b     bb82
        //bb84:

bb84:

        //  ret i32 0

        mov     x9, #0
        mov     x0, x9
        mov     sp, x29
        ret
        sub     sp, sp, #0
main:

        //481:x29,#-528

        //478:x29,#-520

        //445:x29,#-512

        //444:x29,#-256

        //bb85:

bb85:

        //  call void @_sysy_starttime(i32 209)

        mov     x16, #13
        sub     sp, sp, x16
        mov     x0, #209
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
        //  store i32 32, i32* @n

        mov     x14, #32
        adrp     x13, n
        add     x13, x13, #:lo12:n
        str     x14, [x13]
        //  %r444 = alloca [ 32 x i32 ]

        //  %r445 = alloca [ 32 x i32 ]

        //  %r446 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 0

        mov     x13, #8
        mov     x14, #0
        mul     x14, x13, x14
        add     x13, x29, #-256
        add     x14, x13, x14
        //  store i32 7, i32* %r446

        mov     x13, #7
        str     x13, [x14]
        //  %r447 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 1

        mov     x14, #8
        mov     x13, #1
        mul     x14, x14, x13
        add     x13, x29, #-256
        add     x14, x13, x14
        //  store i32 23, i32* %r447

        mov     x13, #23
        str     x13, [x14]
        //  %r448 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 2

        mov     x13, #8
        mov     x14, #2
        mul     x14, x13, x14
        add     x13, x29, #-256
        add     x14, x13, x14
        //  store i32 89, i32* %r448

        mov     x13, #89
        str     x13, [x14]
        //  %r449 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 3

        mov     x14, #8
        mov     x13, #3
        mul     x14, x14, x13
        add     x13, x29, #-256
        add     x14, x13, x14
        //  store i32 26, i32* %r449

        mov     x13, #26
        str     x13, [x14]
        //  %r450 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 4

        mov     x14, #8
        mov     x13, #4
        mul     x13, x14, x13
        add     x14, x29, #-256
        add     x13, x14, x13
        //  store i32 282, i32* %r450

        mov     x14, #282
        str     x14, [x13]
        //  %r451 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 5

        mov     x13, #8
        mov     x14, #5
        mul     x13, x13, x14
        add     x14, x29, #-256
        add     x13, x14, x13
        //  store i32 254, i32* %r451

        mov     x14, #254
        str     x14, [x13]
        //  %r452 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 6

        mov     x13, #8
        mov     x14, #6
        mul     x13, x13, x14
        add     x14, x29, #-256
        add     x13, x14, x13
        //  store i32 27, i32* %r452

        mov     x14, #27
        str     x14, [x13]
        //  %r453 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 7

        mov     x13, #8
        mov     x14, #7
        mul     x14, x13, x14
        add     x13, x29, #-256
        add     x13, x13, x14
        //  store i32 5, i32* %r453

        mov     x14, #5
        str     x14, [x13]
        //  %r454 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 8

        mov     x13, #8
        mov     x14, #8
        mul     x13, x13, x14
        add     x14, x29, #-256
        add     x13, x14, x13
        //  store i32 83, i32* %r454

        mov     x14, #83
        str     x14, [x13]
        //  %r455 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 9

        mov     x13, #8
        mov     x14, #9
        mul     x13, x13, x14
        add     x14, x29, #-256
        add     x13, x14, x13
        //  store i32 273, i32* %r455

        mov     x14, #273
        str     x14, [x13]
        //  %r456 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 10

        mov     x14, #8
        mov     x13, #10
        mul     x13, x14, x13
        add     x14, x29, #-256
        add     x13, x14, x13
        //  store i32 574, i32* %r456

        mov     x14, #574
        str     x14, [x13]
        //  %r457 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 11

        mov     x13, #8
        mov     x14, #11
        mul     x13, x13, x14
        add     x14, x29, #-256
        add     x13, x14, x13
        //  store i32 905, i32* %r457

        mov     x14, #14
        str     x14, [x13]
        //  %r458 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 12

        mov     x13, #8
        mov     x14, #12
        mul     x13, x13, x14
        add     x14, x29, #-256
        add     x13, x14, x13
        //  store i32 354, i32* %r458

        mov     x14, #354
        str     x14, [x13]
        //  %r459 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 13

        mov     x13, #8
        mov     x14, #13
        mul     x13, x13, x14
        add     x14, x29, #-256
        add     x13, x14, x13
        //  store i32 657, i32* %r459

        mov     x14, #657
        str     x14, [x13]
        //  %r460 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 14

        mov     x13, #8
        mov     x14, #14
        mul     x14, x13, x14
        add     x13, x29, #-256
        add     x13, x13, x14
        //  store i32 935, i32* %r460

        mov     x14, #14
        str     x14, [x13]
        //  %r461 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 15

        mov     x13, #8
        mov     x14, #15
        mul     x13, x13, x14
        add     x14, x29, #-256
        add     x13, x14, x13
        //  store i32 264, i32* %r461

        mov     x14, #264
        str     x14, [x13]
        //  %r462 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 16

        mov     x14, #8
        mov     x13, #16
        mul     x14, x14, x13
        add     x13, x29, #-256
        add     x14, x13, x14
        //  store i32 639, i32* %r462

        mov     x13, #639
        str     x13, [x14]
        //  %r463 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 17

        mov     x14, #8
        mov     x13, #17
        mul     x14, x14, x13
        add     x13, x29, #-256
        add     x14, x13, x14
        //  store i32 459, i32* %r463

        mov     x13, #13
        str     x13, [x14]
        //  %r464 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 18

        mov     x14, #8
        mov     x13, #18
        mul     x14, x14, x13
        add     x13, x29, #-256
        add     x14, x13, x14
        //  store i32 29, i32* %r464

        mov     x13, #29
        str     x13, [x14]
        //  %r465 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 19

        mov     x14, #8
        mov     x13, #19
        mul     x14, x14, x13
        add     x13, x29, #-256
        add     x14, x13, x14
        //  store i32 68, i32* %r465

        mov     x13, #68
        str     x13, [x14]
        //  %r466 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 20

        mov     x14, #8
        mov     x13, #20
        mul     x14, x14, x13
        add     x13, x29, #-256
        add     x14, x13, x14
        //  store i32 929, i32* %r466

        mov     x13, #14
        str     x13, [x14]
        //  %r467 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 21

        mov     x14, #8
        mov     x13, #21
        mul     x14, x14, x13
        add     x13, x29, #-256
        add     x14, x13, x14
        //  store i32 756, i32* %r467

        mov     x13, #13
        str     x13, [x14]
        //  %r468 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 22

        mov     x14, #8
        mov     x13, #22
        mul     x14, x14, x13
        add     x13, x29, #-256
        add     x14, x13, x14
        //  store i32 452, i32* %r468

        mov     x13, #13
        str     x13, [x14]
        //  %r469 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 23

        mov     x14, #8
        mov     x13, #23
        mul     x14, x14, x13
        add     x13, x29, #-256
        add     x14, x13, x14
        //  store i32 279, i32* %r469

        mov     x13, #279
        str     x13, [x14]
        //  %r470 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 24

        mov     x14, #8
        mov     x13, #24
        mul     x14, x14, x13
        add     x13, x29, #-256
        add     x14, x13, x14
        //  store i32 58, i32* %r470

        mov     x13, #58
        str     x13, [x14]
        //  %r471 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 25

        mov     x14, #8
        mov     x13, #25
        mul     x14, x14, x13
        add     x13, x29, #-256
        add     x14, x13, x14
        //  store i32 87, i32* %r471

        mov     x13, #87
        str     x13, [x14]
        //  %r472 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 26

        mov     x14, #8
        mov     x13, #26
        mul     x14, x14, x13
        add     x13, x29, #-256
        add     x14, x13, x14
        //  store i32 96, i32* %r472

        mov     x13, #96
        str     x13, [x14]
        //  %r473 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 27

        mov     x14, #8
        mov     x13, #27
        mul     x14, x14, x13
        add     x13, x29, #-256
        add     x14, x13, x14
        //  store i32 36, i32* %r473

        mov     x13, #36
        str     x13, [x14]
        //  %r474 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 28

        mov     x14, #8
        mov     x13, #28
        mul     x13, x14, x13
        add     x14, x29, #-256
        add     x13, x14, x13
        //  store i32 39, i32* %r474

        mov     x14, #39
        str     x14, [x13]
        //  %r475 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 29

        mov     x13, #8
        mov     x14, #29
        mul     x13, x13, x14
        add     x14, x29, #-256
        add     x13, x14, x13
        //  store i32 28, i32* %r475

        mov     x14, #28
        str     x14, [x13]
        //  %r476 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 30

        mov     x13, #8
        mov     x14, #30
        mul     x13, x13, x14
        add     x14, x29, #-256
        add     x13, x14, x13
        //  store i32 1, i32* %r476

        mov     x14, #1
        str     x14, [x13]
        //  %r477 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 31

        mov     x13, #8
        mov     x14, #31
        mul     x13, x13, x14
        add     x14, x29, #-256
        add     x13, x14, x13
        //  store i32 290, i32* %r477

        mov     x14, #290
        str     x14, [x13]
        //  %r478 = alloca i32

        //  %r479 = call i32 @arrCopy(i32* %r444, i32* %r445)

        mov     x0, x12
        mov     x1, x11
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     arrCopy
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x13, x0
        //  store i32 %r479, i32* %r478

        str     x13, [x10]
        //  %r480 = call i32 @revert(i32* %r445)

        mov     x0, x11
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     revert
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x13, x0
        //  store i32 %r480, i32* %r478

        str     x13, [x10]
        //  %r481 = alloca i32

        //  store i32 0, i32* %r481

        mov     x13, #0
        str     x13, [x9]
        //  br label %bb86


        b     bb86
        //bb86:

bb86:

        //  %r482 = load i32, i32* %r481

        ldr     x13, [x9]
        //  %r483 = icmp slt i32 %r482, 32

        mov     x14, #32
        cmp     x13, x14
        //  br i1 %r483, label %bb87, label %bb88


        b.lt     bb87
        b     bb88
        //bb87:

bb87:

        //  %r484 = load i32, i32* %r481

        ldr     x13, [x9]
        //  %r485 = getelementptr [32 x i32 ], [32 x i32 ]* %r445, i32 0, i32 %r484

        mov     x14, #8
        mul     x13, x14, x13
        add     x14, x29, #-512
        add     x13, x14, x13
        //  %r486 = load i32, i32* %r485

        ldr     x13, [x13]
        //  store i32 %r486, i32* %r478

        str     x13, [x10]
        //  %r487 = load i32, i32* %r478

        //  %r488 = load i32, i32* %r478

        ldr     x13, [x10]
        //  call void @putint(i32 %r488)

        mov     x0, x13
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
        //  %r489 = load i32, i32* %r481

        ldr     x13, [x9]
        //  %r490 = add i32 %r489, 1

        mov     x14, #1
        add     x13, x13, x14
        //  store i32 %r490, i32* %r481

        str     x13, [x9]
        //  br label %bb86


        b     bb86
        //bb88:

bb88:

        //  %r491 = call i32 @bubblesort(i32* %r445)

        mov     x0, x11
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     bubblesort
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x13, x0
        //  store i32 %r491, i32* %r478

        str     x13, [x10]
        //  store i32 0, i32* %r481

        mov     x13, #0
        str     x13, [x9]
        //  br label %bb89


        b     bb89
        //bb89:

bb89:

        //  %r492 = load i32, i32* %r481

        ldr     x13, [x9]
        //  %r493 = icmp slt i32 %r492, 32

        mov     x14, #32
        cmp     x13, x14
        //  br i1 %r493, label %bb90, label %bb91


        b.lt     bb90
        b     bb91
        //bb90:

bb90:

        //  %r494 = load i32, i32* %r481

        ldr     x13, [x9]
        //  %r495 = getelementptr [32 x i32 ], [32 x i32 ]* %r445, i32 0, i32 %r494

        mov     x14, #8
        mul     x13, x14, x13
        add     x14, x29, #-512
        add     x13, x14, x13
        //  %r496 = load i32, i32* %r495

        ldr     x13, [x13]
        //  store i32 %r496, i32* %r478

        str     x13, [x10]
        //  %r497 = load i32, i32* %r478

        //  %r498 = load i32, i32* %r478

        ldr     x13, [x10]
        //  call void @putint(i32 %r498)

        mov     x0, x13
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
        //  %r499 = load i32, i32* %r481

        ldr     x13, [x9]
        //  %r500 = add i32 %r499, 1

        mov     x14, #1
        add     x13, x13, x14
        //  store i32 %r500, i32* %r481

        str     x13, [x9]
        //  br label %bb89


        b     bb89
        //bb91:

bb91:

        //  %r501 = call i32 @getMid(i32* %r445)

        mov     x0, x11
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     getMid
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x13, x0
        //  store i32 %r501, i32* %r478

        str     x13, [x10]
        //  %r502 = load i32, i32* %r478

        //  %r503 = load i32, i32* %r478

        ldr     x13, [x10]
        //  call void @putint(i32 %r503)

        mov     x0, x13
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
        //  %r504 = call i32 @getMost(i32* %r445)

        mov     x0, x11
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     getMost
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x13, x0
        //  store i32 %r504, i32* %r478

        str     x13, [x10]
        //  %r505 = load i32, i32* %r478

        //  %r506 = load i32, i32* %r478

        ldr     x13, [x10]
        //  call void @putint(i32 %r506)

        mov     x0, x13
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
        //  %r507 = call i32 @arrCopy(i32* %r444, i32* %r445)

        mov     x0, x12
        mov     x1, x11
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     arrCopy
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x13, x0
        //  store i32 %r507, i32* %r478

        str     x13, [x10]
        //  %r508 = call i32 @bubblesort(i32* %r445)

        mov     x0, x11
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     bubblesort
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x13, x0
        //  store i32 %r508, i32* %r478

        str     x13, [x10]
        //  store i32 0, i32* %r481

        mov     x13, #0
        str     x13, [x9]
        //  br label %bb92


        b     bb92
        //bb92:

bb92:

        //  %r509 = load i32, i32* %r481

        ldr     x13, [x9]
        //  %r510 = icmp slt i32 %r509, 32

        mov     x14, #32
        cmp     x13, x14
        //  br i1 %r510, label %bb93, label %bb94


        b.lt     bb93
        b     bb94
        //bb93:

bb93:

        //  %r511 = load i32, i32* %r481

        ldr     x13, [x9]
        //  %r512 = getelementptr [32 x i32 ], [32 x i32 ]* %r445, i32 0, i32 %r511

        mov     x14, #8
        mul     x13, x14, x13
        add     x14, x29, #-512
        add     x13, x14, x13
        //  %r513 = load i32, i32* %r512

        ldr     x13, [x13]
        //  store i32 %r513, i32* %r478

        str     x13, [x10]
        //  %r514 = load i32, i32* %r478

        //  %r515 = load i32, i32* %r478

        ldr     x13, [x10]
        //  call void @putint(i32 %r515)

        mov     x0, x13
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
        //  %r516 = load i32, i32* %r481

        ldr     x13, [x9]
        //  %r517 = add i32 %r516, 1

        mov     x14, #1
        add     x13, x13, x14
        //  store i32 %r517, i32* %r481

        str     x13, [x9]
        //  br label %bb92


        b     bb92
        //bb94:

bb94:

        //  %r518 = call i32 @arrCopy(i32* %r444, i32* %r445)

        mov     x0, x12
        mov     x1, x11
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     arrCopy
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x13, x0
        //  store i32 %r518, i32* %r478

        str     x13, [x10]
        //  %r519 = call i32 @insertsort(i32* %r445)

        mov     x0, x11
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     insertsort
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x13, x0
        //  store i32 %r519, i32* %r478

        str     x13, [x10]
        //  store i32 0, i32* %r481

        mov     x13, #0
        str     x13, [x9]
        //  br label %bb95


        b     bb95
        //bb95:

bb95:

        //  %r520 = load i32, i32* %r481

        ldr     x13, [x9]
        //  %r521 = icmp slt i32 %r520, 32

        mov     x14, #32
        cmp     x13, x14
        //  br i1 %r521, label %bb96, label %bb97


        b.lt     bb96
        b     bb97
        //bb96:

bb96:

        //  %r522 = load i32, i32* %r481

        ldr     x13, [x9]
        //  %r523 = getelementptr [32 x i32 ], [32 x i32 ]* %r445, i32 0, i32 %r522

        mov     x14, #8
        mul     x13, x14, x13
        add     x14, x29, #-512
        add     x13, x14, x13
        //  %r524 = load i32, i32* %r523

        ldr     x13, [x13]
        //  store i32 %r524, i32* %r478

        str     x13, [x10]
        //  %r525 = load i32, i32* %r478

        //  %r526 = load i32, i32* %r478

        ldr     x13, [x10]
        //  call void @putint(i32 %r526)

        mov     x0, x13
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
        //  %r527 = load i32, i32* %r481

        ldr     x13, [x9]
        //  %r528 = add i32 %r527, 1

        mov     x14, #1
        add     x13, x13, x14
        //  store i32 %r528, i32* %r481

        str     x13, [x9]
        //  br label %bb95


        b     bb95
        //bb97:

bb97:

        //  %r529 = call i32 @arrCopy(i32* %r444, i32* %r445)

        mov     x0, x12
        mov     x1, x11
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     arrCopy
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x13, x0
        //  store i32 %r529, i32* %r478

        str     x13, [x10]
        //  store i32 0, i32* %r481

        mov     x13, #0
        str     x13, [x9]
        //  store i32 31, i32* %r478

        mov     x13, #31
        str     x13, [x10]
        //  %r530 = load i32, i32* %r481

        ldr     x13, [x9]
        //  %r531 = load i32, i32* %r478

        ldr     x14, [x10]
        //  %r532 = call i32 @QuickSort(i32* %r445, i32 %r530, i32 %r531)

        mov     x0, x11
        mov     x1, x13
        mov     x2, x14
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     QuickSort
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x13, x0
        //  store i32 %r532, i32* %r478

        str     x13, [x10]
        //  br label %bb98


        b     bb98
        //bb98:

bb98:

        //  %r533 = load i32, i32* %r481

        ldr     x13, [x9]
        //  %r534 = icmp slt i32 %r533, 32

        mov     x14, #32
        cmp     x13, x14
        //  br i1 %r534, label %bb99, label %bb100


        b.lt     bb99
        b     bb100
        //bb99:

bb99:

        //  %r535 = load i32, i32* %r481

        ldr     x13, [x9]
        //  %r536 = getelementptr [32 x i32 ], [32 x i32 ]* %r445, i32 0, i32 %r535

        mov     x14, #8
        mul     x13, x14, x13
        add     x14, x29, #-512
        add     x13, x14, x13
        //  %r537 = load i32, i32* %r536

        ldr     x13, [x13]
        //  store i32 %r537, i32* %r478

        str     x13, [x10]
        //  %r538 = load i32, i32* %r478

        //  %r539 = load i32, i32* %r478

        ldr     x13, [x10]
        //  call void @putint(i32 %r539)

        mov     x0, x13
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
        //  %r540 = load i32, i32* %r481

        ldr     x13, [x9]
        //  %r541 = add i32 %r540, 1

        mov     x14, #1
        add     x13, x13, x14
        //  store i32 %r541, i32* %r481

        str     x13, [x9]
        //  br label %bb98


        b     bb98
        //bb100:

bb100:

        //  %r542 = call i32 @arrCopy(i32* %r444, i32* %r445)

        mov     x0, x12
        mov     x1, x11
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     arrCopy
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x13, x0
        //  store i32 %r542, i32* %r478

        str     x13, [x10]
        //  %r543 = call i32 @calSum(i32* %r445, i32 4)

        mov     x0, x11
        mov     x1, #4
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     calSum
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x13, x0
        //  store i32 %r543, i32* %r478

        str     x13, [x10]
        //  store i32 0, i32* %r481

        mov     x13, #0
        str     x13, [x9]
        //  br label %bb101


        b     bb101
        //bb101:

bb101:

        //  %r544 = load i32, i32* %r481

        ldr     x13, [x9]
        //  %r545 = icmp slt i32 %r544, 32

        mov     x14, #32
        cmp     x13, x14
        //  br i1 %r545, label %bb102, label %bb103


        b.lt     bb102
        b     bb103
        //bb102:

bb102:

        //  %r546 = load i32, i32* %r481

        ldr     x13, [x9]
        //  %r547 = getelementptr [32 x i32 ], [32 x i32 ]* %r445, i32 0, i32 %r546

        mov     x14, #8
        mul     x13, x14, x13
        add     x14, x29, #-512
        add     x13, x14, x13
        //  %r548 = load i32, i32* %r547

        ldr     x13, [x13]
        //  store i32 %r548, i32* %r478

        str     x13, [x10]
        //  %r549 = load i32, i32* %r478

        //  %r550 = load i32, i32* %r478

        ldr     x13, [x10]
        //  call void @putint(i32 %r550)

        mov     x0, x13
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
        //  %r551 = load i32, i32* %r481

        ldr     x13, [x9]
        //  %r552 = add i32 %r551, 1

        mov     x14, #1
        add     x13, x13, x14
        //  store i32 %r552, i32* %r481

        str     x13, [x9]
        //  br label %bb101


        b     bb101
        //bb103:

bb103:

        //  %r553 = call i32 @arrCopy(i32* %r444, i32* %r445)

        mov     x0, x12
        mov     x1, x11
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     arrCopy
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x12, x0
        //  store i32 %r553, i32* %r478

        str     x12, [x10]
        //  %r554 = call i32 @avgPooling(i32* %r445, i32 3)

        mov     x0, x11
        mov     x1, #3
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     avgPooling
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x11, x0
        //  store i32 %r554, i32* %r478

        str     x11, [x10]
        //  store i32 0, i32* %r481

        mov     x11, #0
        str     x11, [x9]
        //  br label %bb104


        b     bb104
        //bb104:

bb104:

        //  %r555 = load i32, i32* %r481

        ldr     x11, [x9]
        //  %r556 = icmp slt i32 %r555, 32

        mov     x12, #32
        cmp     x11, x12
        //  br i1 %r556, label %bb105, label %bb106


        b.lt     bb105
        b     bb106
        //bb105:

bb105:

        //  %r557 = load i32, i32* %r481

        ldr     x11, [x9]
        //  %r558 = getelementptr [32 x i32 ], [32 x i32 ]* %r445, i32 0, i32 %r557

        mov     x12, #8
        mul     x11, x12, x11
        add     x12, x29, #-512
        add     x11, x12, x11
        //  %r559 = load i32, i32* %r558

        ldr     x11, [x11]
        //  store i32 %r559, i32* %r478

        str     x11, [x10]
        //  %r560 = load i32, i32* %r478

        //  %r561 = load i32, i32* %r478

        ldr     x11, [x10]
        //  call void @putint(i32 %r561)

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
        //  %r562 = load i32, i32* %r481

        ldr     x11, [x9]
        //  %r563 = add i32 %r562, 1

        mov     x12, #1
        add     x11, x11, x12
        //  store i32 %r563, i32* %r481

        str     x11, [x9]
        //  br label %bb104


        b     bb104
        //bb106:

bb106:

        //  call void @_sysy_stoptime(i32 312)

        mov     x0, #312
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
