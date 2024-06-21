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
.global swap
.global heap_ajust
.global heap_sort
.global main
        sub     sp, sp, #0
swap:

        //104:x29,#-24

        //102:x29,#-16

        //105:x29,#-8

        //bb2:

bb2:

        //  %r105 = alloca i32

        mov     x16, #32
        sub     sp, sp, x16
        mov     x12, x0
        mov     x14, x1
        mov     x13, x2
        //  %r102 = alloca i32

        //  store i32 %r101, i32* %r102

        str     x14, [x11]
        //  %r104 = alloca i32

        //  store i32 %r103, i32* %r104

        str     x13, [x10]
        //  br label %bb1


        b     bb1
        //bb1:

bb1:

        //  %r106 = load i32, i32* %r102

        ldr     x13, [x11]
        //  %r107 = getelementptr i32, i32* %r100, i32 %r106

        mov     x14, #8
        mul     x13, x14, x13
        add     x13, x12, x13
        //  %r108 = load i32, i32* %r107

        ldr     x13, [x13]
        //  store i32 %r108, i32* %r105

        str     x13, [x9]
        //  %r109 = load i32, i32* %r104

        ldr     x13, [x10]
        //  %r110 = getelementptr i32, i32* %r100, i32 %r109

        mov     x14, #8
        mul     x13, x14, x13
        add     x13, x12, x13
        //  %r111 = load i32, i32* %r110

        ldr     x13, [x13]
        //  %r112 = load i32, i32* %r102

        ldr     x11, [x11]
        //  %r113 = getelementptr i32, i32* %r100, i32 %r112

        mov     x14, #8
        mul     x11, x14, x11
        add     x11, x12, x11
        //  store i32 %r111, i32* %r113

        str     x13, [x11]
        //  %r114 = load i32, i32* %r105

        ldr     x11, [x9]
        //  %r115 = load i32, i32* %r104

        ldr     x10, [x10]
        //  %r116 = getelementptr i32, i32* %r100, i32 %r115

        mov     x9, #8
        mul     x9, x9, x10
        add     x9, x12, x9
        //  store i32 %r114, i32* %r116

        str     x11, [x9]
        //  ret i32 0

        mov     x9, #0
        mov     x0, x9
        mov     sp, x29
        ret
        sub     sp, sp, #24
heap_ajust:

        //121:x29,#-40

        //122:x29,#-24

        //124:x29,#-16

        //119:x29,#-32

        //132:x29,#-8

        //bb4:

bb4:

        sub     sp, sp, #24
        //  %r132 = alloca i32

        mov     x16, #48
        sub     sp, sp, x16
        mov     x14, x0
        mov     x11, x1
        mov     x15, x2
        //  %r124 = alloca i32

        //  %r122 = alloca i32

        //  %r119 = alloca i32

        //  store i32 %r118, i32* %r119

        str     x11, [x12]
        //  %r121 = alloca i32

        //  store i32 %r120, i32* %r121

        str     x15, [x9]
        //  br label %bb3


        b     bb3
        //bb3:

bb3:

        //  %r123 = load i32, i32* %r119

        ldr     x11, [x12]
        //  store i32 %r123, i32* %r122

        str     x11, [x10]
        //  %r125 = load i32, i32* %r122

        ldr     x11, [x10]
        //  %r126 = mul i32 %r125, 2

        mov     x12, #2
        mul     x11, x11, x12
        //  %r127 = add i32 %r126, 1

        mov     x12, #1
        add     x11, x11, x12
        //  store i32 %r127, i32* %r124

        str     x11, [x16]
        add     x16, sp, #0
        str     x16, [x16]
        //  br label %bb5


        b     bb5
        //bb5:

bb5:

        //  %r128 = load i32, i32* %r124

        add     x17, sp, #0
        ldr     x17, [x17]
        ldr     x11, [x17]
        //  %r129 = load i32, i32* %r121

        ldr     x12, [x9]
        //  %r130 = add i32 %r129, 1

        mov     x18, #1
        add     x18, sp, #8
        str     x18, [x18]
        add     x12, x12, x18
        //  %r131 = icmp slt i32 %r128, %r130

        cmp     x11, x12
        //  br i1 %r131, label %bb6, label %bb7


        b.lt     bb6
        b     bb7
        //bb6:

bb6:

        //  %r133 = load i32, i32* %r124

        add     x19, sp, #0
        ldr     x19, [x19]
        ldr     x11, [x19]
        //  %r134 = add i32 %r133, 1

        mov     x12, #1
        add     x11, x11, x12
        //  store i32 %r134, i32* %r132

        str     x11, [x13]
        //  %r136 = load i32, i32* %r124

        add     x16, sp, #0
        ldr     x16, [x16]
        ldr     x12, [x16]
        //  %r137 = load i32, i32* %r121

        ldr     x11, [x9]
        //  %r138 = icmp slt i32 %r136, %r137

        cmp     x12, x11
        //  br i1 %r138, label %bb11, label %bb9


        b.lt     bb11
        b     bb9
        //bb11:

bb11:

        //  %r139 = load i32, i32* %r124

        add     x17, sp, #0
        ldr     x17, [x17]
        ldr     x11, [x17]
        //  %r140 = getelementptr i32, i32* %r117, i32 %r139

        mov     x12, #8
        mul     x11, x12, x11
        add     x11, x14, x11
        //  %r141 = load i32, i32* %r140

        ldr     x12, [x11]
        //  %r142 = load i32, i32* %r132

        ldr     x11, [x13]
        //  %r143 = getelementptr i32, i32* %r117, i32 %r142

        mov     x15, #8
        mul     x11, x15, x11
        add     x11, x14, x11
        //  %r144 = load i32, i32* %r143

        ldr     x11, [x11]
        //  %r145 = icmp slt i32 %r141, %r144

        cmp     x12, x11
        //  br i1 %r145, label %bb8, label %bb9


        b.lt     bb8
        b     bb9
        //bb8:

bb8:

        //  %r146 = load i32, i32* %r124

        add     x18, sp, #0
        ldr     x18, [x18]
        ldr     x11, [x18]
        //  %r147 = add i32 %r146, 1

        mov     x12, #1
        add     x11, x11, x12
        //  store i32 %r147, i32* %r124

        str     x11, [x19]
        add     x19, sp, #0
        str     x19, [x19]
        //  br label %bb10


        b     bb10
        //bb9:

bb9:

        //  br label %bb10


        b     bb10
        //bb10:

bb10:

        //  %r148 = load i32, i32* %r122

        ldr     x11, [x10]
        //  %r149 = getelementptr i32, i32* %r117, i32 %r148

        mov     x12, #8
        mul     x11, x12, x11
        add     x11, x14, x11
        //  %r150 = load i32, i32* %r149

        ldr     x12, [x11]
        //  %r151 = load i32, i32* %r124

        add     x17, sp, #0
        ldr     x17, [x17]
        ldr     x16, [x17]
        add     x16, sp, #16
        str     x16, [x16]
        //  %r152 = getelementptr i32, i32* %r117, i32 %r151

        mov     x11, #8
        add     x18, sp, #16
        ldr     x18, [x18]
        mul     x11, x11, x18
        add     x11, x14, x11
        //  %r153 = load i32, i32* %r152

        ldr     x11, [x11]
        //  %r154 = icmp sgt i32 %r150, %r153

        cmp     x12, x11
        //  br i1 %r154, label %bb12, label %bb13


        b.gt     bb12
        b     bb13
        //bb12:

bb12:

        //  ret i32 0

        mov     x9, #0
        mov     x0, x9
        mov     sp, x29
        ret
        //bb13:

bb13:

        //  %r155 = load i32, i32* %r122

        ldr     x11, [x10]
        //  %r156 = load i32, i32* %r124

        add     x19, sp, #0
        ldr     x19, [x19]
        ldr     x12, [x19]
        //  %r157 = call i32 @swap(i32* %r117, i32 %r155, i32 %r156)

        mov     x0, x14
        mov     x1, x11
        mov     x2, x12
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     swap
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x11, x0
        //  store i32 %r157, i32* %r122

        str     x11, [x10]
        //  %r158 = load i32, i32* %r124

        add     x16, sp, #0
        ldr     x16, [x16]
        ldr     x11, [x16]
        //  store i32 %r158, i32* %r122

        str     x11, [x10]
        //  %r159 = load i32, i32* %r122

        ldr     x12, [x10]
        //  %r160 = mul i32 %r159, 2

        mov     x11, #2
        mul     x12, x12, x11
        //  %r161 = add i32 %r160, 1

        mov     x11, #1
        add     x11, x12, x11
        //  store i32 %r161, i32* %r124

        str     x11, [x17]
        add     x17, sp, #0
        str     x17, [x17]
        //  br label %bb14


        b     bb14
        //bb14:

bb14:

        //  br label %bb5


        b     bb5
        //bb7:

bb7:

        //  ret i32 0

        mov     x9, #0
        mov     x0, x9
        mov     sp, x29
        ret
        sub     sp, sp, #8
heap_sort:

        //164:x29,#-32

        //165:x29,#-24

        //166:x29,#-16

        //184:x29,#-8

        //bb16:

bb16:

        sub     sp, sp, #8
        //  %r184 = alloca i32

        mov     x16, #32
        sub     sp, sp, x16
        mov     x11, x0
        mov     x10, x1
        //  %r166 = alloca i32

        //  %r165 = alloca i32

        //  %r164 = alloca i32

        //  store i32 %r163, i32* %r164

        str     x10, [x13]
        //  br label %bb15


        b     bb15
        //bb15:

bb15:

        //  %r167 = load i32, i32* %r164

        ldr     x12, [x13]
        //  %r168 = sdiv i32 %r167, 2

        mov     x10, #2
        sdiv     x12, x12, x10
        //  %r169 = sub i32 %r168, 1

        mov     x10, #1
        sub     x10, x12, x10
        //  store i32 %r169, i32* %r165

        str     x10, [x14]
        //  br label %bb17


        b     bb17
        //bb17:

bb17:

        //  %r170 = load i32, i32* %r165

        ldr     x18, [x14]
        add     x18, sp, #0
        str     x18, [x18]
        //  %r171 = sub i32 0, 1

        mov     x10, #0
        mov     x12, #1
        sub     x10, x10, x12
        //  %r172 = icmp sgt i32 %r170, %r171

        add     x19, sp, #0
        ldr     x19, [x19]
        cmp     x19, x10
        //  br i1 %r172, label %bb18, label %bb19


        b.gt     bb18
        b     bb19
        //bb18:

bb18:

        //  %r173 = load i32, i32* %r164

        ldr     x10, [x13]
        //  %r174 = sub i32 %r173, 1

        mov     x12, #1
        sub     x10, x10, x12
        //  store i32 %r174, i32* %r166

        str     x10, [x15]
        //  %r175 = load i32, i32* %r165

        ldr     x12, [x14]
        //  %r176 = load i32, i32* %r166

        ldr     x10, [x15]
        //  %r177 = call i32 @heap_ajust(i32* %r162, i32 %r175, i32 %r176)

        mov     x0, x11
        mov     x1, x12
        mov     x2, x10
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     heap_ajust
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x10, x0
        //  store i32 %r177, i32* %r166

        str     x10, [x15]
        //  %r178 = load i32, i32* %r165

        ldr     x10, [x14]
        //  %r179 = sub i32 %r178, 1

        mov     x12, #1
        sub     x10, x10, x12
        //  store i32 %r179, i32* %r165

        str     x10, [x14]
        //  br label %bb17


        b     bb17
        //bb19:

bb19:

        //  %r180 = load i32, i32* %r164

        ldr     x10, [x13]
        //  %r181 = sub i32 %r180, 1

        mov     x12, #1
        sub     x10, x10, x12
        //  store i32 %r181, i32* %r165

        str     x10, [x14]
        //  br label %bb20


        b     bb20
        //bb20:

bb20:

        //  %r182 = load i32, i32* %r165

        ldr     x10, [x14]
        //  %r183 = icmp sgt i32 %r182, 0

        mov     x12, #0
        cmp     x10, x12
        //  br i1 %r183, label %bb21, label %bb22


        b.gt     bb21
        b     bb22
        //bb21:

bb21:

        //  store i32 0, i32* %r184

        mov     x10, #0
        str     x10, [x9]
        //  %r185 = load i32, i32* %r184

        ldr     x12, [x9]
        //  %r186 = load i32, i32* %r165

        ldr     x10, [x14]
        //  %r187 = call i32 @swap(i32* %r162, i32 %r185, i32 %r186)

        mov     x0, x11
        mov     x1, x12
        mov     x2, x10
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     swap
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x10, x0
        //  store i32 %r187, i32* %r166

        str     x10, [x15]
        //  %r188 = load i32, i32* %r165

        ldr     x10, [x14]
        //  %r189 = sub i32 %r188, 1

        mov     x12, #1
        sub     x10, x10, x12
        //  store i32 %r189, i32* %r166

        str     x10, [x15]
        //  %r190 = load i32, i32* %r184

        ldr     x10, [x9]
        //  %r191 = load i32, i32* %r166

        ldr     x12, [x15]
        //  %r192 = call i32 @heap_ajust(i32* %r162, i32 %r190, i32 %r191)

        mov     x0, x11
        mov     x1, x10
        mov     x2, x12
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     heap_ajust
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x10, x0
        //  store i32 %r192, i32* %r166

        str     x10, [x15]
        //  %r193 = load i32, i32* %r165

        ldr     x10, [x14]
        //  %r194 = sub i32 %r193, 1

        mov     x12, #1
        sub     x10, x10, x12
        //  store i32 %r194, i32* %r165

        str     x10, [x14]
        //  br label %bb20


        b     bb20
        //bb22:

bb22:

        //  ret i32 0

        mov     x9, #0
        mov     x0, x9
        mov     sp, x29
        ret
        sub     sp, sp, #0
main:

        //206:x29,#-96

        //195:x29,#-88

        //212:x29,#-8

        //bb23:

bb23:

        //  %r212 = alloca i32

        mov     x16, #96
        sub     sp, sp, x16
        //  call void @_sysy_starttime(i32 50)

        mov     x0, #50
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
        //  %r195 = alloca [ 10 x i32 ]

        //  %r196 = getelementptr [10 x i32 ], [10 x i32 ]* %r195, i32 0, i32 0

        mov     x13, #8
        mov     x12, #0
        mul     x13, x13, x12
        add     x12, x29, #-88
        add     x13, x12, x13
        //  store i32 4, i32* %r196

        mov     x12, #4
        str     x12, [x13]
        //  %r197 = getelementptr [10 x i32 ], [10 x i32 ]* %r195, i32 0, i32 1

        mov     x12, #8
        mov     x13, #1
        mul     x13, x12, x13
        add     x12, x29, #-88
        add     x12, x12, x13
        //  store i32 3, i32* %r197

        mov     x13, #3
        str     x13, [x12]
        //  %r198 = getelementptr [10 x i32 ], [10 x i32 ]* %r195, i32 0, i32 2

        mov     x12, #8
        mov     x13, #2
        mul     x12, x12, x13
        add     x13, x29, #-88
        add     x12, x13, x12
        //  store i32 9, i32* %r198

        mov     x13, #9
        str     x13, [x12]
        //  %r199 = getelementptr [10 x i32 ], [10 x i32 ]* %r195, i32 0, i32 3

        mov     x12, #8
        mov     x13, #3
        mul     x12, x12, x13
        add     x13, x29, #-88
        add     x13, x13, x12
        //  store i32 2, i32* %r199

        mov     x12, #2
        str     x12, [x13]
        //  %r200 = getelementptr [10 x i32 ], [10 x i32 ]* %r195, i32 0, i32 4

        mov     x13, #8
        mov     x12, #4
        mul     x13, x13, x12
        add     x12, x29, #-88
        add     x13, x12, x13
        //  store i32 0, i32* %r200

        mov     x12, #0
        str     x12, [x13]
        //  %r201 = getelementptr [10 x i32 ], [10 x i32 ]* %r195, i32 0, i32 5

        mov     x13, #8
        mov     x12, #5
        mul     x13, x13, x12
        add     x12, x29, #-88
        add     x13, x12, x13
        //  store i32 1, i32* %r201

        mov     x12, #1
        str     x12, [x13]
        //  %r202 = getelementptr [10 x i32 ], [10 x i32 ]* %r195, i32 0, i32 6

        mov     x12, #8
        mov     x13, #6
        mul     x12, x12, x13
        add     x13, x29, #-88
        add     x12, x13, x12
        //  store i32 6, i32* %r202

        mov     x13, #6
        str     x13, [x12]
        //  %r203 = getelementptr [10 x i32 ], [10 x i32 ]* %r195, i32 0, i32 7

        mov     x12, #8
        mov     x13, #7
        mul     x12, x12, x13
        add     x13, x29, #-88
        add     x12, x13, x12
        //  store i32 5, i32* %r203

        mov     x13, #5
        str     x13, [x12]
        //  %r204 = getelementptr [10 x i32 ], [10 x i32 ]* %r195, i32 0, i32 8

        mov     x12, #8
        mov     x13, #8
        mul     x12, x12, x13
        add     x13, x29, #-88
        add     x12, x13, x12
        //  store i32 7, i32* %r204

        mov     x13, #7
        str     x13, [x12]
        //  %r205 = getelementptr [10 x i32 ], [10 x i32 ]* %r195, i32 0, i32 9

        mov     x12, #8
        mov     x13, #9
        mul     x12, x12, x13
        add     x13, x29, #-88
        add     x12, x13, x12
        //  store i32 8, i32* %r205

        mov     x13, #8
        str     x13, [x12]
        //  %r206 = alloca i32

        //  store i32 0, i32* %r206

        mov     x12, #0
        str     x12, [x9]
        //  %r207 = load i32, i32* @n

        adrp     x12, n
        add     x12, x12, #:lo12:n
        ldr     x12, [x12]
        //  %r208 = call i32 @heap_sort(i32* %r195, i32 %r207)

        mov     x0, x10
        mov     x1, x12
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     heap_sort
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x10, x0
        //  store i32 %r208, i32* %r206

        str     x10, [x9]
        //  br label %bb24


        b     bb24
        //bb24:

bb24:

        //  %r209 = load i32, i32* %r206

        ldr     x10, [x9]
        //  %r210 = load i32, i32* @n

        adrp     x12, n
        add     x12, x12, #:lo12:n
        ldr     x12, [x12]
        //  %r211 = icmp slt i32 %r209, %r210

        cmp     x10, x12
        //  br i1 %r211, label %bb25, label %bb26


        b.lt     bb25
        b     bb26
        //bb25:

bb25:

        //  %r213 = load i32, i32* %r206

        ldr     x10, [x9]
        //  %r214 = getelementptr [10 x i32 ], [10 x i32 ]* %r195, i32 0, i32 %r213

        mov     x12, #8
        mul     x10, x12, x10
        add     x12, x29, #-88
        add     x10, x12, x10
        //  %r215 = load i32, i32* %r214

        ldr     x10, [x10]
        //  store i32 %r215, i32* %r212

        str     x10, [x11]
        //  %r216 = load i32, i32* %r212

        //  %r217 = load i32, i32* %r212

        ldr     x10, [x11]
        //  call void @putint(i32 %r217)

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
        //  store i32 10, i32* %r212

        mov     x10, #10
        str     x10, [x11]
        //  %r218 = load i32, i32* %r212

        //  %r219 = load i32, i32* %r212

        ldr     x10, [x11]
        //  call void @putch(i32 %r219)

        mov     x0, x10
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
        //  %r220 = load i32, i32* %r206

        ldr     x10, [x9]
        //  %r221 = add i32 %r220, 1

        mov     x12, #1
        add     x10, x10, x12
        //  store i32 %r221, i32* %r206

        str     x10, [x9]
        //  br label %bb24


        b     bb24
        //bb26:

bb26:

        //  call void @_sysy_stoptime(i32 66)

        mov     x0, #66
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
