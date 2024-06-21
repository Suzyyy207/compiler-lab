.section .data
.global    INF
.global    e
.global    book
.global    dis
.global    n
.global    m
.global    v1
.global    v2
.global    w
INF:
        .quad   65535
e:
        .zero   2048
book:
        .zero   128
dis:
        .zero   128
n:
        .quad   0
m:
        .quad   0
v1:
        .quad   0
v2:
        .quad   0
w:
        .quad   0
.section .text
.global getch
.global getint
.global putch
.global putint
.global putarray
.global _sysy_starttime
.global _sysy_stoptime
.global Dijkstra
.global main
        sub     sp, sp, #232
Dijkstra:

        //100:x29,#-40

        //120:x29,#-32

        //122:x29,#-24

        //123:x29,#-16

        //145:x29,#-8

        //bb1:

bb1:

        sub     sp, sp, #232
        //  %r145 = alloca i32

        mov     x16, #48
        sub     sp, sp, x16
        //  %r123 = alloca i32

        //  %r122 = alloca i32

        //  %r120 = alloca i32

        //  %r100 = alloca i32

        //  store i32 1, i32* %r100

        mov     x12, #1
        str     x12, [x14]
        //  br label %bb2


        b     bb2
        //bb2:

bb2:

        //  %r101 = load i32, i32* %r100

        ldr     x12, [x14]
        //  %r102 = load i32, i32* @n

        adrp     x13, n
        add     x13, x13, #:lo12:n
        ldr     x13, [x13]
        //  %r103 = icmp sle i32 %r101, %r102

        cmp     x12, x13
        //  br i1 %r103, label %bb3, label %bb4


        b.le     bb3
        b     bb4
        //bb3:

bb3:

        //  %r104 = load i32, i32* %r100

        ldr     x15, [x14]
        //  %r105 = getelementptr [16 x %array2D ], [16 x %array2D ]* @e, i32 0, i32 1

        mov     x13, #12
        mov     x12, #1
        mul     x13, x13, x12
        adrp     x12, e
        add     x12, x12, #:lo12:e
        add     x16, x12, x13
        add     x16, sp, #0
        str     x16, [x16]
        //  %r106 = getelementptr %array2D, %array2D* %r105, i32 0, i32 0

        mov     x13, #12
        mov     x12, #0
        mul     x12, x13, x12
        add     x17, sp, #0
        ldr     x17, [x17]
        add     x13, x17, x12
        //  %r107 = getelementptr [16 x i32 ], [16 x i32 ]* %r106, i32 0, i32 %r104

        mov     x12, #8
        mul     x12, x12, x15
        add     x12, x13, x12
        //  %r108 = load i32, i32* %r107

        ldr     x12, [x12]
        //  %r109 = load i32, i32* %r100

        ldr     x15, [x14]
        //  %r110 = getelementptr [16 x i32 ], [16 x i32 ]* @dis, i32 0, i32 %r109

        mov     x13, #8
        mul     x15, x13, x15
        adrp     x13, dis
        add     x13, x13, #:lo12:dis
        add     x13, x13, x15
        //  store i32 %r108, i32* %r110

        str     x12, [x13]
        //  %r111 = load i32, i32* %r100

        ldr     x13, [x14]
        //  %r112 = getelementptr [16 x i32 ], [16 x i32 ]* @book, i32 0, i32 %r111

        mov     x12, #8
        mul     x13, x12, x13
        adrp     x12, book
        add     x12, x12, #:lo12:book
        add     x13, x12, x13
        //  store i32 0, i32* %r112

        mov     x12, #0
        str     x12, [x13]
        //  %r113 = load i32, i32* %r100

        ldr     x13, [x14]
        //  %r114 = add i32 %r113, 1

        mov     x12, #1
        add     x12, x13, x12
        //  store i32 %r114, i32* %r100

        str     x12, [x14]
        //  br label %bb2


        b     bb2
        //bb4:

bb4:

        //  %r115 = getelementptr [16 x i32 ], [16 x i32 ]* @book, i32 0, i32 1

        mov     x12, #8
        mov     x13, #1
        mul     x12, x12, x13
        adrp     x13, book
        add     x13, x13, #:lo12:book
        add     x12, x13, x12
        //  store i32 1, i32* %r115

        mov     x13, #1
        str     x13, [x12]
        //  store i32 1, i32* %r100

        mov     x12, #1
        str     x12, [x14]
        //  br label %bb5


        b     bb5
        //bb5:

bb5:

        //  %r116 = load i32, i32* %r100

        ldr     x13, [x14]
        //  %r117 = load i32, i32* @n

        adrp     x12, n
        add     x12, x12, #:lo12:n
        ldr     x12, [x12]
        //  %r118 = sub i32 %r117, 1

        mov     x15, #1
        sub     x12, x12, x15
        //  %r119 = icmp sle i32 %r116, %r118

        cmp     x13, x12
        //  br i1 %r119, label %bb6, label %bb7


        b.le     bb6
        b     bb7
        //bb6:

bb6:

        //  %r121 = load i32, i32* @INF

        adrp     x12, INF
        add     x12, x12, #:lo12:INF
        ldr     x12, [x12]
        //  store i32 %r121, i32* %r120

        str     x12, [x11]
        //  store i32 0, i32* %r122

        mov     x12, #0
        str     x12, [x10]
        //  store i32 1, i32* %r123

        mov     x12, #1
        str     x12, [x9]
        //  br label %bb8


        b     bb8
        //bb8:

bb8:

        //  %r124 = load i32, i32* %r123

        ldr     x13, [x9]
        //  %r125 = load i32, i32* @n

        adrp     x12, n
        add     x12, x12, #:lo12:n
        ldr     x12, [x12]
        //  %r126 = icmp sle i32 %r124, %r125

        cmp     x13, x12
        //  br i1 %r126, label %bb9, label %bb10


        b.le     bb9
        b     bb10
        //bb9:

bb9:

        //  %r128 = load i32, i32* %r120

        ldr     x12, [x11]
        //  %r129 = load i32, i32* %r123

        ldr     x13, [x9]
        //  %r130 = getelementptr [16 x i32 ], [16 x i32 ]* @dis, i32 0, i32 %r129

        mov     x15, #8
        mul     x13, x15, x13
        adrp     x15, dis
        add     x15, x15, #:lo12:dis
        add     x13, x15, x13
        //  %r131 = load i32, i32* %r130

        ldr     x13, [x13]
        //  %r132 = icmp sgt i32 %r128, %r131

        cmp     x12, x13
        //  br i1 %r132, label %bb14, label %bb12


        b.gt     bb14
        b     bb12
        //bb14:

bb14:

        //  %r133 = load i32, i32* %r123

        ldr     x12, [x9]
        //  %r134 = getelementptr [16 x i32 ], [16 x i32 ]* @book, i32 0, i32 %r133

        mov     x13, #8
        mul     x12, x13, x12
        adrp     x13, book
        add     x13, x13, #:lo12:book
        add     x12, x13, x12
        //  %r135 = load i32, i32* %r134

        ldr     x13, [x12]
        //  %r136 = icmp eq i32 %r135, 0

        mov     x12, #0
        cmp     x13, x12
        //  br i1 %r136, label %bb11, label %bb12


        b.eq     bb11
        b     bb12
        //bb11:

bb11:

        //  %r137 = load i32, i32* %r123

        ldr     x12, [x9]
        //  %r138 = getelementptr [16 x i32 ], [16 x i32 ]* @dis, i32 0, i32 %r137

        mov     x13, #8
        mul     x12, x13, x12
        adrp     x13, dis
        add     x13, x13, #:lo12:dis
        add     x12, x13, x12
        //  %r139 = load i32, i32* %r138

        ldr     x12, [x12]
        //  store i32 %r139, i32* %r120

        str     x12, [x11]
        //  %r140 = load i32, i32* %r123

        ldr     x12, [x9]
        //  store i32 %r140, i32* %r122

        str     x12, [x10]
        //  br label %bb13


        b     bb13
        //bb12:

bb12:

        //  br label %bb13


        b     bb13
        //bb13:

bb13:

        //  %r141 = load i32, i32* %r123

        ldr     x12, [x9]
        //  %r142 = add i32 %r141, 1

        mov     x13, #1
        add     x12, x12, x13
        //  store i32 %r142, i32* %r123

        str     x12, [x9]
        //  br label %bb8


        b     bb8
        //bb10:

bb10:

        //  %r143 = load i32, i32* %r122

        ldr     x12, [x10]
        //  %r144 = getelementptr [16 x i32 ], [16 x i32 ]* @book, i32 0, i32 %r143

        mov     x13, #8
        mul     x12, x13, x12
        adrp     x13, book
        add     x13, x13, #:lo12:book
        add     x13, x13, x12
        //  store i32 1, i32* %r144

        mov     x12, #1
        str     x12, [x13]
        //  store i32 1, i32* %r145

        mov     x12, #1
        str     x12, [x18]
        add     x18, sp, #8
        str     x18, [x18]
        //  br label %bb15


        b     bb15
        //bb15:

bb15:

        //  %r146 = load i32, i32* %r145

        add     x19, sp, #8
        ldr     x19, [x19]
        ldr     x12, [x19]
        //  %r147 = load i32, i32* @n

        adrp     x13, n
        add     x13, x13, #:lo12:n
        ldr     x13, [x13]
        //  %r148 = icmp sle i32 %r146, %r147

        cmp     x12, x13
        //  br i1 %r148, label %bb16, label %bb17


        b.le     bb16
        b     bb17
        //bb16:

bb16:

        //  %r149 = load i32, i32* %r145

        add     x16, sp, #8
        ldr     x16, [x16]
        ldr     x13, [x16]
        //  %r150 = load i32, i32* %r122

        ldr     x17, [x10]
        add     x17, sp, #16
        str     x17, [x17]
        //  %r151 = getelementptr [16 x %array2D ], [16 x %array2D ]* @e, i32 0, i32 %r150

        mov     x12, #12
        add     x18, sp, #16
        ldr     x18, [x18]
        mul     x12, x12, x18
        add     x19, sp, #24
        ldr     x19, [x19]
        adrp     x19, e
        add     x19, x19, #:lo12:e
        add     x12, x19, x12
        //  %r152 = getelementptr %array2D, %array2D* %r151, i32 0, i32 0

        mov     x16, #12
        add     x16, sp, #32
        str     x16, [x16]
        mov     x17, #0
        add     x17, sp, #40
        str     x17, [x17]
        mul     x18, x16, x17
        add     x18, sp, #48
        str     x18, [x18]
        add     x12, x12, x18
        //  %r153 = getelementptr [16 x i32 ], [16 x i32 ]* %r152, i32 0, i32 %r149

        mov     x19, #8
        add     x19, sp, #56
        str     x19, [x19]
        mul     x13, x19, x13
        add     x12, x12, x13
        //  %r154 = load i32, i32* %r153

        ldr     x12, [x12]
        //  %r155 = load i32, i32* @INF

        adrp     x13, INF
        add     x13, x13, #:lo12:INF
        ldr     x13, [x13]
        //  %r156 = icmp slt i32 %r154, %r155

        cmp     x12, x13
        //  br i1 %r156, label %bb18, label %bb19


        b.lt     bb18
        b     bb19
        //bb18:

bb18:

        //  %r157 = load i32, i32* %r145

        add     x16, sp, #8
        ldr     x16, [x16]
        ldr     x12, [x16]
        //  %r158 = getelementptr [16 x i32 ], [16 x i32 ]* @dis, i32 0, i32 %r157

        mov     x13, #8
        mul     x12, x13, x12
        adrp     x13, dis
        add     x13, x13, #:lo12:dis
        add     x12, x13, x12
        //  %r159 = load i32, i32* %r158

        ldr     x12, [x12]
        //  %r160 = load i32, i32* %r122

        ldr     x13, [x10]
        //  %r161 = getelementptr [16 x i32 ], [16 x i32 ]* @dis, i32 0, i32 %r160

        mov     x17, #8
        add     x17, sp, #64
        str     x17, [x17]
        mul     x13, x17, x13
        add     x18, sp, #72
        ldr     x18, [x18]
        adrp     x18, dis
        add     x18, x18, #:lo12:dis
        add     x13, x18, x13
        //  %r162 = load i32, i32* %r161

        ldr     x19, [x13]
        add     x19, sp, #80
        str     x19, [x19]
        //  %r163 = load i32, i32* %r145

        add     x16, sp, #8
        ldr     x16, [x16]
        ldr     x13, [x16]
        //  %r164 = load i32, i32* %r122

        ldr     x15, [x10]
        //  %r165 = getelementptr [16 x %array2D ], [16 x %array2D ]* @e, i32 0, i32 %r164

        mov     x17, #12
        add     x17, sp, #88
        str     x17, [x17]
        mul     x18, x17, x15
        add     x18, sp, #96
        str     x18, [x18]
        add     x19, sp, #104
        ldr     x19, [x19]
        adrp     x19, e
        add     x19, x19, #:lo12:e
        add     x15, x19, x18
        //  %r166 = getelementptr %array2D, %array2D* %r165, i32 0, i32 0

        mov     x16, #12
        add     x16, sp, #13
        str     x16, [x16]
        mov     x17, #0
        add     x17, sp, #11
        str     x17, [x17]
        mul     x18, x16, x17
        add     x18, sp, #12
        str     x18, [x18]
        add     x15, x15, x18
        //  %r167 = getelementptr [16 x i32 ], [16 x i32 ]* %r166, i32 0, i32 %r163

        mov     x19, #8
        add     x19, sp, #136
        str     x19, [x19]
        mul     x16, x19, x13
        add     x16, sp, #13
        str     x16, [x16]
        add     x13, x15, x16
        //  %r168 = load i32, i32* %r167

        ldr     x13, [x13]
        //  %r169 = add i32 %r162, %r168

        add     x17, sp, #80
        ldr     x17, [x17]
        add     x13, x17, x13
        //  %r170 = icmp sgt i32 %r159, %r169

        cmp     x12, x13
        //  br i1 %r170, label %bb21, label %bb22


        b.gt     bb21
        b     bb22
        //bb21:

bb21:

        //  %r171 = load i32, i32* %r122

        ldr     x12, [x10]
        //  %r172 = getelementptr [16 x i32 ], [16 x i32 ]* @dis, i32 0, i32 %r171

        mov     x13, #8
        mul     x12, x13, x12
        adrp     x13, dis
        add     x13, x13, #:lo12:dis
        add     x12, x13, x12
        //  %r173 = load i32, i32* %r172

        ldr     x13, [x12]
        //  %r174 = load i32, i32* %r145

        add     x18, sp, #8
        ldr     x18, [x18]
        ldr     x12, [x18]
        //  %r175 = load i32, i32* %r122

        ldr     x15, [x10]
        //  %r176 = getelementptr [16 x %array2D ], [16 x %array2D ]* @e, i32 0, i32 %r175

        mov     x19, #12
        add     x19, sp, #12
        str     x19, [x19]
        mul     x16, x19, x15
        add     x16, sp, #13
        str     x16, [x16]
        add     x17, sp, #168
        ldr     x17, [x17]
        adrp     x17, e
        add     x17, x17, #:lo12:e
        add     x15, x17, x16
        //  %r177 = getelementptr %array2D, %array2D* %r176, i32 0, i32 0

        mov     x18, #12
        add     x18, sp, #15
        str     x18, [x18]
        mov     x19, #0
        add     x19, sp, #12
        str     x19, [x19]
        mul     x16, x18, x19
        add     x16, sp, #192
        str     x16, [x16]
        add     x15, x15, x16
        //  %r178 = getelementptr [16 x i32 ], [16 x i32 ]* %r177, i32 0, i32 %r174

        mov     x17, #8
        add     x17, sp, #200
        str     x17, [x17]
        mul     x18, x17, x12
        add     x18, sp, #208
        str     x18, [x18]
        add     x12, x15, x18
        //  %r179 = load i32, i32* %r178

        ldr     x12, [x12]
        //  %r180 = add i32 %r173, %r179

        add     x13, x13, x12
        //  %r181 = load i32, i32* %r145

        add     x19, sp, #8
        ldr     x19, [x19]
        ldr     x12, [x19]
        //  %r182 = getelementptr [16 x i32 ], [16 x i32 ]* @dis, i32 0, i32 %r181

        mov     x16, #8
        add     x16, sp, #216
        str     x16, [x16]
        mul     x12, x16, x12
        add     x17, sp, #224
        ldr     x17, [x17]
        adrp     x17, dis
        add     x17, x17, #:lo12:dis
        add     x12, x17, x12
        //  store i32 %r180, i32* %r182

        str     x13, [x12]
        //  br label %bb23


        b     bb23
        //bb22:

bb22:

        //  br label %bb23


        b     bb23
        //bb23:

bb23:

        //  br label %bb20


        b     bb20
        //bb19:

bb19:

        //  br label %bb20


        b     bb20
        //bb20:

bb20:

        //  %r183 = load i32, i32* %r145

        add     x18, sp, #8
        ldr     x18, [x18]
        ldr     x12, [x18]
        //  %r184 = add i32 %r183, 1

        mov     x13, #1
        add     x12, x12, x13
        //  store i32 %r184, i32* %r145

        str     x12, [x19]
        add     x19, sp, #8
        str     x19, [x19]
        //  br label %bb15


        b     bb15
        //bb17:

bb17:

        //  %r185 = load i32, i32* %r100

        ldr     x12, [x14]
        //  %r186 = add i32 %r185, 1

        mov     x13, #1
        add     x12, x12, x13
        //  store i32 %r186, i32* %r100

        str     x12, [x14]
        //  br label %bb5


        b     bb5
        //bb7:

bb7:

        //  ret void

        mov     sp, x29
        ret
        sub     sp, sp, #48
main:

        //187:x29,#-32

        //193:x29,#-24

        //218:x29,#-16

        //220:x29,#-8

        //bb24:

bb24:

        sub     sp, sp, #48
        //  %r220 = alloca i32

        mov     x16, #32
        sub     sp, sp, x16
        //  %r218 = alloca i32

        //  %r193 = alloca i32

        //  call void @_sysy_starttime(i32 53)

        mov     x0, #53
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
        //  %r187 = alloca i32

        //  %r188 = call i32 @getint()

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
        //  store i32 %r188, i32* @n

        adrp     x9, n
        add     x9, x9, #:lo12:n
        str     x11, [x9]
        //  %r189 = call i32 @getint()

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
        mov     x9, x0
        //  store i32 %r189, i32* @m

        adrp     x11, m
        add     x11, x11, #:lo12:m
        str     x9, [x11]
        //  store i32 1, i32* %r187

        mov     x9, #1
        str     x9, [x16]
        add     x16, sp, #0
        str     x16, [x16]
        //  br label %bb25


        b     bb25
        //bb25:

bb25:

        //  %r190 = load i32, i32* %r187

        add     x17, sp, #0
        ldr     x17, [x17]
        ldr     x11, [x17]
        //  %r191 = load i32, i32* @n

        adrp     x9, n
        add     x9, x9, #:lo12:n
        ldr     x9, [x9]
        //  %r192 = icmp sle i32 %r190, %r191

        cmp     x11, x9
        //  br i1 %r192, label %bb26, label %bb27


        b.le     bb26
        b     bb27
        //bb26:

bb26:

        //  store i32 1, i32* %r193

        mov     x9, #1
        str     x9, [x10]
        //  br label %bb28


        b     bb28
        //bb28:

bb28:

        //  %r194 = load i32, i32* %r193

        ldr     x11, [x10]
        //  %r195 = load i32, i32* @n

        adrp     x9, n
        add     x9, x9, #:lo12:n
        ldr     x9, [x9]
        //  %r196 = icmp sle i32 %r194, %r195

        cmp     x11, x9
        //  br i1 %r196, label %bb29, label %bb30


        b.le     bb29
        b     bb30
        //bb29:

bb29:

        //  %r197 = load i32, i32* %r187

        add     x18, sp, #0
        ldr     x18, [x18]
        ldr     x11, [x18]
        //  %r198 = load i32, i32* %r193

        ldr     x9, [x10]
        //  %r199 = icmp eq i32 %r197, %r198

        cmp     x11, x9
        //  br i1 %r199, label %bb31, label %bb32


        b.eq     bb31
        b     bb32
        //bb31:

bb31:

        //  %r200 = load i32, i32* %r193

        ldr     x12, [x10]
        //  %r201 = load i32, i32* %r187

        add     x19, sp, #0
        ldr     x19, [x19]
        ldr     x9, [x19]
        //  %r202 = getelementptr [16 x %array2D ], [16 x %array2D ]* @e, i32 0, i32 %r201

        mov     x11, #128
        mul     x9, x11, x9
        adrp     x11, e
        add     x11, x11, #:lo12:e
        add     x11, x11, x9
        //  %r203 = getelementptr %array2D, %array2D* %r202, i32 0, i32 0

        mov     x16, #128
        add     x16, sp, #8
        str     x16, [x16]
        mov     x9, #0
        mul     x9, x16, x9
        add     x11, x11, x9
        //  %r204 = getelementptr [16 x i32 ], [16 x i32 ]* %r203, i32 0, i32 %r200

        mov     x9, #8
        mul     x9, x9, x12
        add     x9, x11, x9
        //  store i32 0, i32* %r204

        mov     x11, #0
        str     x11, [x9]
        //  br label %bb33


        b     bb33
        //bb32:

bb32:

        //  %r205 = load i32, i32* @INF

        adrp     x9, INF
        add     x9, x9, #:lo12:INF
        ldr     x9, [x9]
        //  %r206 = load i32, i32* %r193

        ldr     x17, [x10]
        add     x17, sp, #16
        str     x17, [x17]
        //  %r207 = load i32, i32* %r187

        add     x18, sp, #0
        ldr     x18, [x18]
        ldr     x11, [x18]
        //  %r208 = getelementptr [16 x %array2D ], [16 x %array2D ]* @e, i32 0, i32 %r207

        mov     x19, #128
        add     x19, sp, #24
        str     x19, [x19]
        mul     x16, x19, x11
        add     x16, sp, #32
        str     x16, [x16]
        adrp     x11, e
        add     x11, x11, #:lo12:e
        add     x11, x11, x16
        //  %r209 = getelementptr %array2D, %array2D* %r208, i32 0, i32 0

        mov     x17, #128
        add     x17, sp, #40
        str     x17, [x17]
        mov     x12, #0
        mul     x12, x17, x12
        add     x12, x11, x12
        //  %r210 = getelementptr [16 x i32 ], [16 x i32 ]* %r209, i32 0, i32 %r206

        mov     x11, #8
        add     x18, sp, #16
        ldr     x18, [x18]
        mul     x11, x11, x18
        add     x11, x12, x11
        //  store i32 %r205, i32* %r210

        str     x9, [x11]
        //  br label %bb33


        b     bb33
        //bb33:

bb33:

        //  %r211 = load i32, i32* %r193

        ldr     x11, [x10]
        //  %r212 = add i32 %r211, 1

        mov     x9, #1
        add     x9, x11, x9
        //  store i32 %r212, i32* %r193

        str     x9, [x10]
        //  br label %bb28


        b     bb28
        //bb30:

bb30:

        //  %r213 = load i32, i32* %r187

        add     x19, sp, #0
        ldr     x19, [x19]
        ldr     x11, [x19]
        //  %r214 = add i32 %r213, 1

        mov     x9, #1
        add     x9, x11, x9
        //  store i32 %r214, i32* %r187

        str     x9, [x16]
        add     x16, sp, #0
        str     x16, [x16]
        //  br label %bb25


        b     bb25
        //bb27:

bb27:

        //  store i32 1, i32* %r187

        mov     x9, #1
        str     x9, [x17]
        add     x17, sp, #0
        str     x17, [x17]
        //  br label %bb34


        b     bb34
        //bb34:

bb34:

        //  %r215 = load i32, i32* %r187

        add     x18, sp, #0
        ldr     x18, [x18]
        ldr     x10, [x18]
        //  %r216 = load i32, i32* @m

        adrp     x9, m
        add     x9, x9, #:lo12:m
        ldr     x9, [x9]
        //  %r217 = icmp sle i32 %r215, %r216

        cmp     x10, x9
        //  br i1 %r217, label %bb35, label %bb36


        b.le     bb35
        b     bb36
        //bb35:

bb35:

        //  %r219 = call i32 @getint()

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
        mov     x9, x0
        //  store i32 %r219, i32* %r218

        str     x9, [x15]
        //  %r221 = call i32 @getint()

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
        mov     x9, x0
        //  store i32 %r221, i32* %r220

        str     x9, [x14]
        //  %r222 = call i32 @getint()

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
        mov     x13, x0
        //  %r223 = load i32, i32* %r220

        ldr     x12, [x14]
        //  %r224 = load i32, i32* %r218

        ldr     x10, [x15]
        //  %r225 = getelementptr [16 x %array2D ], [16 x %array2D ]* @e, i32 0, i32 %r224

        mov     x9, #128
        mul     x10, x9, x10
        adrp     x9, e
        add     x9, x9, #:lo12:e
        add     x11, x9, x10
        //  %r226 = getelementptr %array2D, %array2D* %r225, i32 0, i32 0

        mov     x10, #128
        mov     x9, #0
        mul     x9, x10, x9
        add     x10, x11, x9
        //  %r227 = getelementptr [16 x i32 ], [16 x i32 ]* %r226, i32 0, i32 %r223

        mov     x9, #8
        mul     x9, x9, x12
        add     x9, x10, x9
        //  store i32 %r222, i32* %r227

        str     x13, [x9]
        //  %r228 = load i32, i32* %r187

        add     x19, sp, #0
        ldr     x19, [x19]
        ldr     x10, [x19]
        //  %r229 = add i32 %r228, 1

        mov     x9, #1
        add     x9, x10, x9
        //  store i32 %r229, i32* %r187

        str     x9, [x16]
        add     x16, sp, #0
        str     x16, [x16]
        //  br label %bb34


        b     bb34
        //bb36:

bb36:

        //  call void @Dijkstra()

        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     Dijkstra
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        //  store i32 1, i32* %r187

        mov     x9, #1
        str     x9, [x17]
        add     x17, sp, #0
        str     x17, [x17]
        //  br label %bb37


        b     bb37
        //bb37:

bb37:

        //  %r230 = load i32, i32* %r187

        add     x18, sp, #0
        ldr     x18, [x18]
        ldr     x10, [x18]
        //  %r231 = load i32, i32* @n

        adrp     x9, n
        add     x9, x9, #:lo12:n
        ldr     x9, [x9]
        //  %r232 = icmp sle i32 %r230, %r231

        cmp     x10, x9
        //  br i1 %r232, label %bb38, label %bb39


        b.le     bb38
        b     bb39
        //bb38:

bb38:

        //  %r233 = load i32, i32* %r187

        add     x19, sp, #0
        ldr     x19, [x19]
        ldr     x10, [x19]
        //  %r234 = getelementptr [16 x i32 ], [16 x i32 ]* @dis, i32 0, i32 %r233

        mov     x9, #8
        mul     x9, x9, x10
        adrp     x10, dis
        add     x10, x10, #:lo12:dis
        add     x9, x10, x9
        //  %r235 = load i32, i32* %r234

        ldr     x9, [x9]
        //  call void @putint(i32 %r235)

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
        //  call void @putch(i32 32)

        mov     x0, #32
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
        //  %r236 = load i32, i32* %r187

        add     x16, sp, #0
        ldr     x16, [x16]
        ldr     x9, [x16]
        //  %r237 = add i32 %r236, 1

        mov     x10, #1
        add     x9, x9, x10
        //  store i32 %r237, i32* %r187

        str     x9, [x17]
        add     x17, sp, #0
        str     x17, [x17]
        //  br label %bb37


        b     bb37
        //bb39:

bb39:

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
        //  call void @_sysy_stoptime(i32 91)

        mov     x0, #91
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
