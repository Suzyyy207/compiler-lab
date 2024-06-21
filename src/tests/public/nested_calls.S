.section .data
.section .text
.global getch
.global getint
.global putch
.global putint
.global putarray
.global _sysy_starttime
.global _sysy_stoptime
.global func1
.global func2
.global func3
.global func4
.global func5
.global func6
.global func7
.global main
        sub     sp, sp, #0
func1:

        //105:x29,#-24

        //103:x29,#-16

        //101:x29,#-8

        //bb2:

bb2:

        //  %r101 = alloca i32

        mov     x16, #32
        sub     sp, sp, x16
        mov     x14, x0
        mov     x10, x1
        mov     x9, x2
        //  store i32 %r100, i32* %r101

        str     x14, [x13]
        //  %r103 = alloca i32

        //  store i32 %r102, i32* %r103

        str     x10, [x12]
        //  %r105 = alloca i32

        //  store i32 %r104, i32* %r105

        str     x9, [x11]
        //  br label %bb1


        b     bb1
        //bb1:

bb1:

        //  %r106 = load i32, i32* %r105

        ldr     x9, [x11]
        //  %r107 = icmp eq i32 %r106, 0

        mov     x10, #0
        cmp     x9, x10
        //  br i1 %r107, label %bb3, label %bb4


        b.eq     bb3
        b     bb4
        //bb3:

bb3:

        //  %r108 = load i32, i32* %r101

        ldr     x10, [x13]
        //  %r109 = load i32, i32* %r103

        ldr     x9, [x12]
        //  %r110 = mul i32 %r108, %r109

        mul     x9, x10, x9
        //  ret i32 %r110

        mov     x0, x9
        mov     sp, x29
        ret
        //bb4:

bb4:

        //  %r111 = load i32, i32* %r101

        ldr     x10, [x13]
        //  %r112 = load i32, i32* %r103

        ldr     x9, [x12]
        //  %r113 = load i32, i32* %r105

        ldr     x11, [x11]
        //  %r114 = sub i32 %r112, %r113

        sub     x9, x9, x11
        //  %r115 = call i32 @func1(i32 %r111, i32 %r114, i32 0)

        mov     x0, x10
        mov     x1, x9
        mov     x2, #0
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func1
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        //  ret i32 %r115

        mov     x0, x9
        mov     sp, x29
        ret
        //bb5:

bb5:

        //  ret i32 0

        mov     x9, #0
        mov     x0, x9
        mov     sp, x29
        ret
        sub     sp, sp, #0
func2:

        //119:x29,#-16

        //117:x29,#-8

        //bb7:

bb7:

        //  %r117 = alloca i32

        mov     x16, #16
        sub     sp, sp, x16
        mov     x11, x0
        mov     x9, x1
        //  store i32 %r116, i32* %r117

        str     x11, [x10]
        //  %r119 = alloca i32

        //  store i32 %r118, i32* %r119

        str     x9, [x12]
        //  br label %bb6


        b     bb6
        //bb6:

bb6:

        //  %r120 = load i32, i32* %r119

        ldr     x9, [x12]
        //  %r121 = icmp ne i32 %r120, 0

        mov     x11, #0
        cmp     x9, x11
        //  br i1 %r121, label %bb8, label %bb9


        b.ne     bb8
        b     bb9
        //bb8:

bb8:

        //  %r122 = load i32, i32* %r117

        ldr     x11, [x10]
        //  %r123 = load i32, i32* %r117

        ldr     x10, [x10]
        //  %r124 = load i32, i32* %r119

        ldr     x9, [x12]
        //  %r125 = sdiv i32 %r123, %r124

        sdiv     x10, x10, x9
        //  %r126 = load i32, i32* %r119

        ldr     x9, [x12]
        //  %r127 = mul i32 %r125, %r126

        mul     x9, x10, x9
        //  %r128 = sub i32 %r122, %r127

        sub     x9, x11, x9
        //  %r129 = call i32 @func2(i32 %r128, i32 0)

        mov     x0, x9
        mov     x1, #0
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func2
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        //  ret i32 %r129

        mov     x0, x9
        mov     sp, x29
        ret
        //bb9:

bb9:

        //  %r130 = load i32, i32* %r117

        ldr     x9, [x10]
        //  ret i32 %r130

        mov     x0, x9
        mov     sp, x29
        ret
        //bb10:

bb10:

        //  ret i32 0

        mov     x9, #0
        mov     x0, x9
        mov     sp, x29
        ret
        sub     sp, sp, #0
func3:

        //134:x29,#-16

        //132:x29,#-8

        //bb12:

bb12:

        //  %r132 = alloca i32

        mov     x16, #16
        sub     sp, sp, x16
        mov     x9, x0
        mov     x12, x1
        //  store i32 %r131, i32* %r132

        str     x9, [x10]
        //  %r134 = alloca i32

        //  store i32 %r133, i32* %r134

        str     x12, [x11]
        //  br label %bb11


        b     bb11
        //bb11:

bb11:

        //  %r135 = load i32, i32* %r134

        ldr     x9, [x11]
        //  %r136 = icmp eq i32 %r135, 0

        mov     x12, #0
        cmp     x9, x12
        //  br i1 %r136, label %bb13, label %bb14


        b.eq     bb13
        b     bb14
        //bb13:

bb13:

        //  %r137 = load i32, i32* %r132

        ldr     x9, [x10]
        //  %r138 = add i32 %r137, 1

        mov     x10, #1
        add     x9, x9, x10
        //  ret i32 %r138

        mov     x0, x9
        mov     sp, x29
        ret
        //bb14:

bb14:

        //  %r139 = load i32, i32* %r132

        ldr     x10, [x10]
        //  %r140 = load i32, i32* %r134

        ldr     x9, [x11]
        //  %r141 = add i32 %r139, %r140

        add     x9, x10, x9
        //  %r142 = call i32 @func3(i32 %r141, i32 0)

        mov     x0, x9
        mov     x1, #0
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func3
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        //  ret i32 %r142

        mov     x0, x9
        mov     sp, x29
        ret
        //bb15:

bb15:

        //  ret i32 0

        mov     x9, #0
        mov     x0, x9
        mov     sp, x29
        ret
        sub     sp, sp, #0
func4:

        //148:x29,#-24

        //146:x29,#-16

        //144:x29,#-8

        //bb17:

bb17:

        //  %r144 = alloca i32

        mov     x16, #32
        sub     sp, sp, x16
        mov     x9, x0
        mov     x11, x1
        mov     x13, x2
        //  store i32 %r143, i32* %r144

        str     x9, [x10]
        //  %r146 = alloca i32

        //  store i32 %r145, i32* %r146

        str     x11, [x12]
        //  %r148 = alloca i32

        //  store i32 %r147, i32* %r148

        str     x13, [x14]
        //  br label %bb16


        b     bb16
        //bb16:

bb16:

        //  %r149 = load i32, i32* %r144

        ldr     x9, [x10]
        //  %r150 = icmp ne i32 %r149, 0

        mov     x10, #0
        cmp     x9, x10
        //  br i1 %r150, label %bb18, label %bb19


        b.ne     bb18
        b     bb19
        //bb18:

bb18:

        //  %r151 = load i32, i32* %r146

        ldr     x9, [x12]
        //  ret i32 %r151

        mov     x0, x9
        mov     sp, x29
        ret
        //bb19:

bb19:

        //  %r152 = load i32, i32* %r148

        ldr     x9, [x14]
        //  ret i32 %r152

        mov     x0, x9
        mov     sp, x29
        ret
        //bb20:

bb20:

        //  ret i32 0

        mov     x9, #0
        mov     x0, x9
        mov     sp, x29
        ret
        sub     sp, sp, #0
func5:

        //154:x29,#-8

        //bb22:

bb22:

        //  %r154 = alloca i32

        mov     x16, #16
        sub     sp, sp, x16
        mov     x9, x0
        //  store i32 %r153, i32* %r154

        str     x9, [x10]
        //  br label %bb21


        b     bb21
        //bb21:

bb21:

        //  %r155 = load i32, i32* %r154

        ldr     x9, [x10]
        //  %r156 = sub i32 0, %r155

        mov     x10, #0
        sub     x9, x10, x9
        //  ret i32 %r156

        mov     x0, x9
        mov     sp, x29
        ret
        sub     sp, sp, #0
func6:

        //160:x29,#-16

        //158:x29,#-8

        //bb24:

bb24:

        //  %r158 = alloca i32

        mov     x16, #16
        sub     sp, sp, x16
        mov     x9, x0
        mov     x11, x1
        //  store i32 %r157, i32* %r158

        str     x9, [x10]
        //  %r160 = alloca i32

        //  store i32 %r159, i32* %r160

        str     x11, [x12]
        //  br label %bb23


        b     bb23
        //bb23:

bb23:

        //  %r162 = load i32, i32* %r158

        ldr     x9, [x10]
        //  %r163 = icmp ne i32 %r162, 0

        mov     x10, #0
        cmp     x9, x10
        //  br i1 %r163, label %bb28, label %bb26


        b.ne     bb28
        b     bb26
        //bb28:

bb28:

        //  %r164 = load i32, i32* %r160

        ldr     x9, [x12]
        //  %r165 = icmp ne i32 %r164, 0

        mov     x10, #0
        cmp     x9, x10
        //  br i1 %r165, label %bb25, label %bb26


        b.ne     bb25
        b     bb26
        //bb25:

bb25:

        //  ret i32 1

        mov     x9, #1
        mov     x0, x9
        mov     sp, x29
        ret
        //bb26:

bb26:

        //  ret i32 0

        mov     x9, #0
        mov     x0, x9
        mov     sp, x29
        ret
        //bb27:

bb27:

        //  ret i32 0

        mov     x9, #0
        mov     x0, x9
        mov     sp, x29
        ret
        sub     sp, sp, #0
func7:

        //167:x29,#-8

        //bb30:

bb30:

        //  %r167 = alloca i32

        mov     x16, #16
        sub     sp, sp, x16
        mov     x9, x0
        //  store i32 %r166, i32* %r167

        str     x9, [x10]
        //  br label %bb29


        b     bb29
        //bb29:

bb29:

        //  %r168 = load i32, i32* %r167

        ldr     x9, [x10]
        //  %r169 = icmp ne i32 %r168, 0

        mov     x10, #0
        cmp     x9, x10
        //  br i1 %r169, label %bb31, label %bb32


        b.ne     bb31
        b     bb32
        //bb31:

bb31:

        //  ret i32 1

        mov     x9, #1
        mov     x0, x9
        mov     sp, x29
        ret
        //bb32:

bb32:

        //  ret i32 0

        mov     x9, #0
        mov     x0, x9
        mov     sp, x29
        ret
        //bb33:

bb33:

        //  ret i32 0

        mov     x9, #0
        mov     x0, x9
        mov     sp, x29
        ret
        sub     sp, sp, #472
main:

        //179:x29,#-128

        //178:x29,#-120

        //176:x29,#-40

        //172:x29,#-24

        //170:x29,#-16

        //174:x29,#-32

        //187:x29,#-8

        //bb34:

bb34:

        sub     sp, sp, #472
        //  %r187 = alloca i32

        mov     x16, #128
        sub     sp, sp, x16
        //  call void @_sysy_starttime(i32 97)

        mov     x0, #97
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
        //  %r171 = call i32 @getint()

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
        mov     x10, x0
        //  %r170 = alloca i32

        //  store i32 %r171, i32* %r170

        str     x10, [x11]
        //  %r173 = call i32 @getint()

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
        mov     x10, x0
        //  %r172 = alloca i32

        //  store i32 %r173, i32* %r172

        str     x10, [x12]
        //  %r175 = call i32 @getint()

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
        mov     x10, x0
        //  %r174 = alloca i32

        //  store i32 %r175, i32* %r174

        str     x10, [x16]
        add     x16, sp, #0
        str     x16, [x16]
        //  %r177 = call i32 @getint()

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
        mov     x10, x0
        //  %r176 = alloca i32

        //  store i32 %r177, i32* %r176

        str     x10, [x17]
        add     x17, sp, #8
        str     x17, [x17]
        //  %r178 = alloca [ 10 x i32 ]

        //  %r179 = alloca i32

        //  store i32 0, i32* %r179

        mov     x10, #0
        str     x10, [x18]
        add     x18, sp, #16
        str     x18, [x18]
        //  br label %bb35


        b     bb35
        //bb35:

bb35:

        //  %r180 = load i32, i32* %r179

        add     x16, sp, #16
        ldr     x16, [x16]
        ldr     x19, [x16]
        add     x19, sp, #24
        str     x19, [x19]
        //  %r181 = icmp slt i32 %r180, 10

        mov     x10, #10
        add     x17, sp, #24
        ldr     x17, [x17]
        cmp     x17, x10
        //  br i1 %r181, label %bb36, label %bb37


        b.lt     bb36
        b     bb37
        //bb36:

bb36:

        //  %r182 = call i32 @getint()

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
        mov     x18, x0
        add     x18, sp, #32
        str     x18, [x18]
        //  %r183 = load i32, i32* %r179

        add     x19, sp, #16
        ldr     x19, [x19]
        ldr     x13, [x19]
        //  %r184 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 %r183

        mov     x10, #8
        mul     x13, x10, x13
        add     x10, x29, #-120
        add     x10, x10, x13
        //  store i32 %r182, i32* %r184

        add     x16, sp, #32
        ldr     x16, [x16]
        str     x16, [x10]
        //  %r185 = load i32, i32* %r179

        add     x17, sp, #16
        ldr     x17, [x17]
        ldr     x13, [x17]
        //  %r186 = add i32 %r185, 1

        mov     x10, #1
        add     x10, x13, x10
        //  store i32 %r186, i32* %r179

        str     x10, [x18]
        add     x18, sp, #16
        str     x18, [x18]
        //  br label %bb35


        b     bb35
        //bb37:

bb37:

        //  %r188 = load i32, i32* %r170

        ldr     x10, [x11]
        //  %r189 = call i32 @func7(i32 %r188)

        mov     x0, x10
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func7
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x10, x0
        //  %r190 = load i32, i32* %r172

        ldr     x13, [x12]
        //  %r191 = call i32 @func5(i32 %r190)

        mov     x0, x13
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func5
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x13, x0
        //  %r192 = call i32 @func6(i32 %r189, i32 %r191)

        mov     x0, x10
        mov     x1, x13
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func6
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x13, x0
        //  %r193 = load i32, i32* %r174

        add     x19, sp, #0
        ldr     x19, [x19]
        ldr     x10, [x19]
        //  %r194 = call i32 @func2(i32 %r192, i32 %r193)

        mov     x0, x13
        mov     x1, x10
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func2
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x13, x0
        //  %r195 = load i32, i32* %r176

        add     x16, sp, #8
        ldr     x16, [x16]
        ldr     x10, [x16]
        //  %r196 = call i32 @func3(i32 %r194, i32 %r195)

        mov     x0, x13
        mov     x1, x10
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func3
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x10, x0
        //  %r197 = call i32 @func5(i32 %r196)

        mov     x0, x10
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func5
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x13, x0
        //  %r198 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 0

        mov     x10, #8
        mov     x14, #0
        mul     x10, x10, x14
        add     x14, x29, #-120
        add     x10, x14, x10
        //  %r199 = load i32, i32* %r198

        ldr     x10, [x10]
        //  %r200 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 1

        mov     x14, #8
        mov     x17, #1
        add     x17, sp, #40
        str     x17, [x17]
        mul     x14, x14, x17
        add     x18, x29, #-120
        add     x18, sp, #48
        str     x18, [x18]
        add     x14, x18, x14
        //  %r201 = load i32, i32* %r200

        ldr     x19, [x14]
        add     x19, sp, #56
        str     x19, [x19]
        //  %r202 = call i32 @func5(i32 %r201)

        add     x16, sp, #56
        ldr     x16, [x16]
        mov     x0, x16
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func5
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x17, x0
        add     x17, sp, #64
        str     x17, [x17]
        //  %r203 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 2

        mov     x14, #8
        mov     x18, #2
        add     x18, sp, #72
        str     x18, [x18]
        mul     x19, x14, x18
        add     x19, sp, #80
        str     x19, [x19]
        add     x14, x29, #-120
        add     x16, x14, x19
        add     x16, sp, #88
        str     x16, [x16]
        //  %r204 = load i32, i32* %r203

        add     x18, sp, #88
        ldr     x18, [x18]
        ldr     x17, [x18]
        add     x17, sp, #96
        str     x17, [x17]
        //  %r205 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 3

        mov     x19, #8
        add     x19, sp, #104
        str     x19, [x19]
        mov     x14, #3
        mul     x15, x19, x14
        add     x14, x29, #-120
        add     x16, x14, x15
        add     x16, sp, #112
        str     x16, [x16]
        //  %r206 = load i32, i32* %r205

        add     x18, sp, #112
        ldr     x18, [x18]
        ldr     x17, [x18]
        add     x17, sp, #120
        str     x17, [x17]
        //  %r207 = call i32 @func7(i32 %r206)

        add     x19, sp, #120
        ldr     x19, [x19]
        mov     x0, x19
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func7
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x16, x0
        add     x16, sp, #128
        str     x16, [x16]
        //  %r208 = call i32 @func6(i32 %r204, i32 %r207)

        add     x17, sp, #96
        ldr     x17, [x17]
        mov     x0, x17
        add     x18, sp, #128
        ldr     x18, [x18]
        mov     x1, x18
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func6
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x19, x0
        add     x19, sp, #136
        str     x19, [x19]
        //  %r209 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 4

        mov     x15, #8
        mov     x14, #4
        mul     x15, x15, x14
        add     x14, x29, #-120
        add     x16, x14, x15
        add     x16, sp, #144
        str     x16, [x16]
        //  %r210 = load i32, i32* %r209

        add     x18, sp, #144
        ldr     x18, [x18]
        ldr     x17, [x18]
        add     x17, sp, #152
        str     x17, [x17]
        //  %r211 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 5

        mov     x14, #8
        mov     x19, #5
        add     x19, sp, #160
        str     x19, [x19]
        mul     x16, x14, x19
        add     x16, sp, #168
        str     x16, [x16]
        add     x17, x29, #-120
        add     x18, sp, #8
        ldr     x18, [x18]
        add     x17, sp, #18
        str     x17, [x17]
        add     x19, x17, x16
        add     x19, sp, #10
        str     x19, [x19]
        //  %r212 = load i32, i32* %r211

        add     x17, sp, #184
        ldr     x17, [x17]
        ldr     x16, [x17]
        add     x16, sp, #13
        str     x16, [x16]
        //  %r213 = call i32 @func7(i32 %r212)

        add     x18, sp, #192
        ldr     x18, [x18]
        mov     x0, x18
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func7
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x19, x0
        add     x19, sp, #14
        str     x19, [x19]
        //  %r214 = call i32 @func2(i32 %r210, i32 %r213)

        add     x16, sp, #152
        ldr     x16, [x16]
        mov     x0, x16
        add     x17, sp, #200
        ldr     x17, [x17]
        mov     x1, x17
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func2
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x18, x0
        add     x19, sp, #136
        ldr     x19, [x19]
        add     x18, sp, #19
        str     x18, [x18]
        //  %r215 = call i32 @func4(i32 %r202, i32 %r208, i32 %r214)

        add     x16, sp, #64
        ldr     x16, [x16]
        mov     x0, x16
        add     x17, sp, #136
        ldr     x17, [x17]
        mov     x1, x17
        add     x18, sp, #208
        ldr     x18, [x18]
        mov     x2, x18
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func4
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x19, x0
        add     x16, sp, #224
        ldr     x16, [x16]
        add     x19, sp, #16
        str     x19, [x19]
        //  %r216 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 6

        mov     x17, #8
        add     x17, sp, #12
        str     x17, [x17]
        mov     x18, #6
        add     x18, sp, #10
        str     x18, [x18]
        mul     x19, x17, x18
        add     x19, sp, #10
        str     x19, [x19]
        add     x16, x29, #-120
        add     x16, sp, #12
        str     x16, [x16]
        add     x17, x16, x19
        add     x18, sp, #264
        ldr     x18, [x18]
        add     x17, sp, #18
        str     x17, [x17]
        //  %r217 = load i32, i32* %r216

        add     x16, sp, #224
        ldr     x16, [x16]
        ldr     x19, [x16]
        add     x19, sp, #272
        str     x19, [x19]
        //  %r218 = call i32 @func3(i32 %r215, i32 %r217)

        add     x17, sp, #216
        ldr     x17, [x17]
        mov     x0, x17
        add     x18, sp, #272
        ldr     x18, [x18]
        mov     x1, x18
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func3
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x19, x0
        add     x19, sp, #280
        str     x19, [x19]
        //  %r219 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 7

        mov     x16, #8
        add     x16, sp, #288
        str     x16, [x16]
        mov     x17, #7
        add     x17, sp, #10
        str     x17, [x17]
        mul     x18, x16, x17
        add     x19, sp, #48
        ldr     x19, [x19]
        add     x18, sp, #19
        str     x18, [x18]
        add     x16, x29, #-120
        add     x16, sp, #14
        str     x16, [x16]
        add     x17, x16, x18
        add     x18, sp, #176
        ldr     x18, [x18]
        add     x17, sp, #18
        str     x17, [x17]
        //  %r220 = load i32, i32* %r219

        add     x16, sp, #320
        ldr     x16, [x16]
        ldr     x19, [x16]
        add     x17, sp, #312
        ldr     x17, [x17]
        add     x19, sp, #17
        str     x19, [x19]
        //  %r221 = call i32 @func2(i32 %r218, i32 %r220)

        add     x18, sp, #280
        ldr     x18, [x18]
        mov     x0, x18
        add     x19, sp, #328
        ldr     x19, [x19]
        mov     x1, x19
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func2
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x16, x0
        add     x17, sp, #344
        ldr     x17, [x17]
        add     x16, sp, #17
        str     x16, [x16]
        //  %r222 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 8

        mov     x18, #8
        add     x18, sp, #12
        str     x18, [x18]
        mov     x19, #8
        add     x19, sp, #15
        str     x19, [x19]
        mul     x16, x18, x19
        add     x16, sp, #15
        str     x16, [x16]
        add     x17, x29, #-120
        add     x17, sp, #15
        str     x17, [x17]
        add     x18, x17, x16
        add     x18, sp, #384
        str     x18, [x18]
        //  %r223 = load i32, i32* %r222

        add     x16, sp, #384
        ldr     x16, [x16]
        ldr     x19, [x16]
        add     x19, sp, #392
        str     x19, [x19]
        //  %r224 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 9

        mov     x17, #8
        add     x17, sp, #400
        str     x17, [x17]
        mov     x18, #9
        add     x18, sp, #408
        str     x18, [x18]
        mul     x19, x17, x18
        add     x19, sp, #416
        str     x19, [x19]
        add     x16, x29, #-120
        add     x16, sp, #14
        str     x16, [x16]
        add     x17, x16, x19
        add     x17, sp, #12
        str     x17, [x17]
        //  %r225 = load i32, i32* %r224

        add     x19, sp, #264
        ldr     x19, [x19]
        ldr     x18, [x19]
        add     x18, sp, #424
        str     x18, [x18]
        //  %r226 = call i32 @func7(i32 %r225)

        add     x16, sp, #424
        ldr     x16, [x16]
        mov     x0, x16
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func7
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x17, x0
        add     x17, sp, #432
        str     x17, [x17]
        //  %r227 = call i32 @func3(i32 %r223, i32 %r226)

        add     x18, sp, #392
        ldr     x18, [x18]
        mov     x0, x18
        add     x19, sp, #432
        ldr     x19, [x19]
        mov     x1, x19
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func3
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x16, x0
        add     x16, sp, #440
        str     x16, [x16]
        //  %r228 = load i32, i32* %r170

        ldr     x17, [x11]
        add     x17, sp, #448
        str     x17, [x17]
        //  %r229 = call i32 @func1(i32 %r221, i32 %r227, i32 %r228)

        add     x18, sp, #336
        ldr     x18, [x18]
        mov     x0, x18
        add     x19, sp, #440
        ldr     x19, [x19]
        mov     x1, x19
        add     x16, sp, #448
        ldr     x16, [x16]
        mov     x2, x16
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func1
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x14, x0
        //  %r230 = call i32 @func4(i32 %r197, i32 %r199, i32 %r229)

        mov     x0, x13
        mov     x1, x10
        mov     x2, x14
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func4
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x13, x0
        //  %r231 = load i32, i32* %r172

        ldr     x10, [x12]
        //  %r232 = load i32, i32* %r174

        add     x17, sp, #0
        ldr     x17, [x17]
        ldr     x12, [x17]
        //  %r233 = call i32 @func7(i32 %r232)

        mov     x0, x12
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func7
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x14, x0
        //  %r234 = load i32, i32* %r176

        add     x18, sp, #8
        ldr     x18, [x18]
        ldr     x12, [x18]
        //  %r235 = call i32 @func3(i32 %r233, i32 %r234)

        mov     x0, x14
        mov     x1, x12
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func3
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x12, x0
        //  %r236 = call i32 @func2(i32 %r231, i32 %r235)

        mov     x0, x10
        mov     x1, x12
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func2
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x10, x0
        //  %r237 = call i32 @func3(i32 %r230, i32 %r236)

        mov     x0, x13
        mov     x1, x10
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func3
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x13, x0
        //  %r238 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 0

        mov     x10, #8
        mov     x12, #0
        mul     x10, x10, x12
        add     x12, x29, #-120
        add     x10, x12, x10
        //  %r239 = load i32, i32* %r238

        ldr     x12, [x10]
        //  %r240 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 1

        mov     x10, #8
        mov     x14, #1
        mul     x10, x10, x14
        add     x14, x29, #-120
        add     x10, x14, x10
        //  %r241 = load i32, i32* %r240

        ldr     x10, [x10]
        //  %r242 = call i32 @func1(i32 %r237, i32 %r239, i32 %r241)

        mov     x0, x13
        mov     x1, x12
        mov     x2, x10
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func1
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x12, x0
        //  %r243 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 2

        mov     x10, #8
        mov     x13, #2
        mul     x10, x10, x13
        add     x13, x29, #-120
        add     x10, x13, x10
        //  %r244 = load i32, i32* %r243

        ldr     x10, [x10]
        //  %r245 = call i32 @func2(i32 %r242, i32 %r244)

        mov     x0, x12
        mov     x1, x10
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func2
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x14, x0
        //  %r246 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 3

        mov     x10, #8
        mov     x12, #3
        mul     x10, x10, x12
        add     x12, x29, #-120
        add     x10, x12, x10
        //  %r247 = load i32, i32* %r246

        ldr     x13, [x10]
        //  %r248 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 4

        mov     x10, #8
        mov     x12, #4
        mul     x10, x10, x12
        add     x12, x29, #-120
        add     x10, x12, x10
        //  %r249 = load i32, i32* %r248

        ldr     x10, [x10]
        //  %r250 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 5

        mov     x12, #8
        mov     x15, #5
        mul     x12, x12, x15
        add     x15, x29, #-120
        add     x12, x15, x12
        //  %r251 = load i32, i32* %r250

        ldr     x12, [x12]
        //  %r252 = call i32 @func5(i32 %r251)

        mov     x0, x12
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func5
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x12, x0
        //  %r253 = call i32 @func3(i32 %r249, i32 %r252)

        mov     x0, x10
        mov     x1, x12
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func3
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x10, x0
        //  %r254 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 6

        mov     x12, #8
        mov     x15, #6
        mul     x12, x12, x15
        add     x15, x29, #-120
        add     x12, x15, x12
        //  %r255 = load i32, i32* %r254

        ldr     x12, [x12]
        //  %r256 = call i32 @func5(i32 %r255)

        mov     x0, x12
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func5
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x12, x0
        //  %r257 = call i32 @func2(i32 %r253, i32 %r256)

        mov     x0, x10
        mov     x1, x12
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func2
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x12, x0
        //  %r258 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 7

        mov     x10, #8
        mov     x15, #7
        mul     x10, x10, x15
        add     x15, x29, #-120
        add     x10, x15, x10
        //  %r259 = load i32, i32* %r258

        ldr     x10, [x10]
        //  %r260 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 8

        mov     x15, #8
        mov     x19, #8
        add     x19, sp, #456
        str     x19, [x19]
        mul     x15, x15, x19
        add     x16, x29, #-120
        add     x16, sp, #464
        str     x16, [x16]
        add     x15, x16, x15
        //  %r261 = load i32, i32* %r260

        ldr     x15, [x15]
        //  %r262 = call i32 @func7(i32 %r261)

        mov     x0, x15
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func7
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x15, x0
        //  %r263 = call i32 @func1(i32 %r257, i32 %r259, i32 %r262)

        mov     x0, x12
        mov     x1, x10
        mov     x2, x15
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func1
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x10, x0
        //  %r264 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 9

        mov     x12, #8
        mov     x15, #9
        mul     x12, x12, x15
        add     x15, x29, #-120
        add     x12, x15, x12
        //  %r265 = load i32, i32* %r264

        ldr     x12, [x12]
        //  %r266 = call i32 @func5(i32 %r265)

        mov     x0, x12
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func5
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x12, x0
        //  %r267 = call i32 @func2(i32 %r263, i32 %r266)

        mov     x0, x10
        mov     x1, x12
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func2
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x12, x0
        //  %r268 = load i32, i32* %r170

        ldr     x10, [x11]
        //  %r269 = call i32 @func3(i32 %r267, i32 %r268)

        mov     x0, x12
        mov     x1, x10
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func3
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x10, x0
        //  %r270 = call i32 @func1(i32 %r245, i32 %r247, i32 %r269)

        mov     x0, x14
        mov     x1, x13
        mov     x2, x10
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     func1
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x10, x0
        //  store i32 %r270, i32* %r187

        str     x10, [x9]
        //  call void @_sysy_stoptime(i32 117)

        mov     x0, #117
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
        //  %r271 = load i32, i32* %r187

        ldr     x9, [x9]
        //  ret i32 %r271

        mov     x0, x9
        mov     sp, x29
        ret
