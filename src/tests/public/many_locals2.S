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
.global main
        sub     sp, sp, #752
main:

        //130:x29,#-264

        //129:x29,#-256

        //128:x29,#-248

        //127:x29,#-240

        //110:x29,#-104

        //255:x29,#-8

        //109:x29,#-96

        //108:x29,#-88

        //107:x29,#-80

        //194:x29,#-16

        //106:x29,#-72

        //105:x29,#-64

        //104:x29,#-56

        //102:x29,#-40

        //101:x29,#-32

        //100:x29,#-24

        //103:x29,#-48

        //111:x29,#-112

        //112:x29,#-120

        //113:x29,#-128

        //114:x29,#-136

        //115:x29,#-144

        //116:x29,#-152

        //117:x29,#-160

        //118:x29,#-168

        //119:x29,#-176

        //120:x29,#-184

        //121:x29,#-192

        //122:x29,#-200

        //123:x29,#-208

        //124:x29,#-216

        //125:x29,#-224

        //126:x29,#-232

        //bb1:

bb1:

        sub     sp, sp, #752
        //  %r255 = alloca i32

        add     x16, sp, #0
        ldr     x16, [x16]
        mov     x16, #16
        sub     sp, sp, x16
        //  %r194 = alloca i32

        //  call void @_sysy_starttime(i32 4)

        mov     x0, #4
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

        //  %r102 = alloca i32

        //  %r103 = alloca i32

        //  %r104 = alloca i32

        //  %r105 = alloca i32

        //  %r106 = alloca i32

        //  %r107 = alloca i32

        //  %r108 = alloca i32

        //  %r109 = alloca i32

        //  %r110 = alloca i32

        //  %r111 = alloca i32

        //  %r112 = alloca i32

        //  %r113 = alloca i32

        //  %r114 = alloca i32

        //  %r115 = alloca i32

        //  %r116 = alloca i32

        //  %r117 = alloca i32

        //  %r118 = alloca i32

        //  %r119 = alloca i32

        //  %r120 = alloca i32

        //  %r121 = alloca i32

        //  %r122 = alloca i32

        //  %r123 = alloca i32

        //  %r124 = alloca i32

        //  %r125 = alloca i32

        //  %r126 = alloca i32

        //  %r127 = alloca i32

        //  %r128 = alloca i32

        //  %r129 = alloca i32

        //  %r130 = alloca i32

        //  %r131 = call i32 @getint()

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
        mov     x17, x0
        add     x17, sp, #8
        str     x17, [x17]
        //  store i32 %r131, i32* %r130

        add     x18, sp, #8
        ldr     x18, [x18]
        str     x18, [x19]
        add     x19, sp, #16
        str     x19, [x19]
        //  br label %bb2


        b     bb2
        //bb2:

bb2:

        //  %r132 = load i32, i32* %r130

        add     x17, sp, #16
        ldr     x17, [x17]
        ldr     x16, [x17]
        add     x16, sp, #24
        str     x16, [x16]
        //  %r133 = icmp eq i32 %r132, 5

        mov     x18, #5
        add     x18, sp, #32
        str     x18, [x18]
        add     x19, sp, #24
        ldr     x19, [x19]
        cmp     x19, x18
        //  br i1 %r133, label %bb3, label %bb4


        b.eq     bb3
        b     bb4
        //bb3:

bb3:

        //  %r134 = load i32, i32* %r130

        add     x17, sp, #16
        ldr     x17, [x17]
        ldr     x16, [x17]
        add     x16, sp, #40
        str     x16, [x16]
        //  %r135 = add i32 %r134, 1

        mov     x18, #1
        add     x18, sp, #48
        str     x18, [x18]
        add     x19, sp, #40
        ldr     x19, [x19]
        add     x16, x19, x18
        add     x16, sp, #56
        str     x16, [x16]
        //  store i32 %r135, i32* %r130

        add     x17, sp, #56
        ldr     x17, [x17]
        str     x17, [x18]
        add     x18, sp, #16
        str     x18, [x18]
        //  br label %bb2


        b     bb2
        //bb4:

bb4:

        //  store i32 0, i32* %r100

        mov     x19, #0
        add     x19, sp, #64
        str     x19, [x19]
        str     x19, [x16]
        add     x16, sp, #72
        str     x16, [x16]
        //  %r136 = load i32, i32* %r100

        add     x18, sp, #72
        ldr     x18, [x18]
        ldr     x17, [x18]
        add     x17, sp, #80
        str     x17, [x17]
        //  %r137 = add i32 %r136, 1

        mov     x19, #1
        add     x19, sp, #88
        str     x19, [x19]
        add     x16, sp, #80
        ldr     x16, [x16]
        add     x17, x16, x19
        add     x17, sp, #96
        str     x17, [x17]
        //  store i32 %r137, i32* %r101

        add     x18, sp, #96
        ldr     x18, [x18]
        str     x18, [x19]
        add     x16, sp, #112
        ldr     x16, [x16]
        add     x19, sp, #16
        str     x19, [x19]
        //  %r138 = load i32, i32* %r101

        add     x18, sp, #104
        ldr     x18, [x18]
        ldr     x17, [x18]
        add     x19, sp, #128
        ldr     x19, [x19]
        add     x17, sp, #19
        str     x17, [x17]
        //  %r139 = add i32 %r138, 1

        mov     x16, #1
        add     x17, sp, #80
        ldr     x17, [x17]
        add     x16, sp, #17
        str     x16, [x16]
        add     x18, sp, #120
        ldr     x18, [x18]
        add     x19, x18, x16
        add     x16, sp, #152
        ldr     x16, [x16]
        add     x19, sp, #16
        str     x19, [x19]
        //  store i32 %r139, i32* %r102

        add     x17, sp, #144
        ldr     x17, [x17]
        str     x17, [x18]
        add     x18, sp, #15
        str     x18, [x18]
        //  %r140 = load i32, i32* %r102

        add     x16, sp, #160
        ldr     x16, [x16]
        ldr     x19, [x16]
        add     x19, sp, #15
        str     x19, [x19]
        //  %r141 = add i32 %r140, 1

        mov     x17, #1
        add     x17, sp, #15
        str     x17, [x17]
        add     x18, sp, #168
        ldr     x18, [x18]
        add     x19, x18, x17
        add     x19, sp, #15
        str     x19, [x19]
        //  store i32 %r141, i32* %r103

        add     x16, sp, #184
        ldr     x16, [x16]
        str     x16, [x17]
        add     x17, sp, #15
        str     x17, [x17]
        //  %r142 = load i32, i32* %r103

        add     x19, sp, #192
        ldr     x19, [x19]
        ldr     x18, [x19]
        add     x18, sp, #15
        str     x18, [x18]
        //  %r143 = add i32 %r142, 1

        mov     x16, #1
        add     x16, sp, #15
        str     x16, [x16]
        add     x17, sp, #200
        ldr     x17, [x17]
        add     x18, x17, x16
        add     x18, sp, #15
        str     x18, [x18]
        //  store i32 %r143, i32* %r104

        add     x19, sp, #216
        ldr     x19, [x19]
        str     x19, [x16]
        add     x17, sp, #224
        ldr     x17, [x17]
        add     x16, sp, #17
        str     x16, [x16]
        //  %r144 = load i32, i32* %r104

        add     x19, sp, #112
        ldr     x19, [x19]
        ldr     x18, [x19]
        add     x16, sp, #232
        ldr     x16, [x16]
        add     x18, sp, #16
        str     x18, [x18]
        //  %r145 = add i32 %r144, 1

        mov     x17, #1
        add     x18, sp, #248
        ldr     x18, [x18]
        add     x17, sp, #18
        str     x17, [x17]
        add     x19, sp, #152
        ldr     x19, [x19]
        add     x16, x19, x17
        add     x16, sp, #9
        str     x16, [x16]
        //  store i32 %r145, i32* %r105

        add     x17, sp, #256
        ldr     x17, [x17]
        str     x17, [x18]
        add     x19, sp, #48
        ldr     x19, [x19]
        add     x18, sp, #19
        str     x18, [x18]
        //  %r146 = load i32, i32* %r105

        add     x17, sp, #264
        ldr     x17, [x17]
        ldr     x16, [x17]
        add     x18, sp, #0
        ldr     x18, [x18]
        add     x16, sp, #18
        str     x16, [x16]
        //  %r147 = add i32 %r146, 1

        mov     x19, #1
        add     x16, sp, #288
        ldr     x16, [x16]
        add     x19, sp, #16
        str     x19, [x19]
        add     x17, sp, #272
        ldr     x17, [x17]
        add     x18, x17, x19
        add     x18, sp, #296
        str     x18, [x18]
        //  store i32 %r147, i32* %r106

        add     x19, sp, #296
        ldr     x19, [x19]
        str     x19, [x16]
        add     x16, sp, #304
        str     x16, [x16]
        //  %r148 = load i32, i32* %r106

        add     x18, sp, #304
        ldr     x18, [x18]
        ldr     x17, [x18]
        add     x17, sp, #312
        str     x17, [x17]
        //  %r149 = add i32 %r148, 1

        mov     x19, #1
        add     x19, sp, #0
        str     x19, [x19]
        add     x16, sp, #312
        ldr     x16, [x16]
        add     x17, x16, x19
        add     x17, sp, #320
        str     x17, [x17]
        //  store i32 %r149, i32* %r107

        add     x18, sp, #320
        ldr     x18, [x18]
        str     x18, [x19]
        add     x19, sp, #328
        str     x19, [x19]
        //  %r150 = load i32, i32* %r107

        add     x17, sp, #328
        ldr     x17, [x17]
        ldr     x16, [x17]
        add     x16, sp, #336
        str     x16, [x16]
        //  %r151 = add i32 %r150, 1

        mov     x18, #1
        add     x18, sp, #344
        str     x18, [x18]
        add     x19, sp, #336
        ldr     x19, [x19]
        add     x16, x19, x18
        add     x16, sp, #352
        str     x16, [x16]
        //  store i32 %r151, i32* %r108

        add     x17, sp, #352
        ldr     x17, [x17]
        str     x17, [x18]
        add     x18, sp, #360
        str     x18, [x18]
        //  %r152 = load i32, i32* %r108

        add     x16, sp, #360
        ldr     x16, [x16]
        ldr     x19, [x16]
        add     x17, sp, #368
        ldr     x17, [x17]
        add     x19, sp, #17
        str     x19, [x19]
        //  %r153 = add i32 %r152, 1

        mov     x18, #1
        add     x18, sp, #376
        str     x18, [x18]
        add     x19, sp, #232
        ldr     x19, [x19]
        add     x16, x19, x18
        add     x16, sp, #384
        str     x16, [x16]
        //  store i32 %r153, i32* %r109

        add     x17, sp, #384
        ldr     x17, [x17]
        str     x17, [x18]
        add     x18, sp, #392
        str     x18, [x18]
        //  %r154 = load i32, i32* %r109

        add     x16, sp, #392
        ldr     x16, [x16]
        ldr     x19, [x16]
        add     x19, sp, #400
        str     x19, [x19]
        //  %r155 = add i32 %r154, 1

        mov     x17, #1
        add     x17, sp, #408
        str     x17, [x17]
        add     x18, sp, #400
        ldr     x18, [x18]
        add     x19, x18, x17
        add     x19, sp, #416
        str     x19, [x19]
        //  store i32 %r155, i32* %r110

        add     x16, sp, #416
        ldr     x16, [x16]
        str     x16, [x17]
        add     x17, sp, #424
        str     x17, [x17]
        //  %r156 = load i32, i32* %r110

        add     x19, sp, #424
        ldr     x19, [x19]
        ldr     x18, [x19]
        add     x18, sp, #432
        str     x18, [x18]
        //  %r157 = add i32 %r156, 1

        mov     x16, #1
        add     x16, sp, #440
        str     x16, [x16]
        add     x17, sp, #432
        ldr     x17, [x17]
        add     x18, x17, x16
        add     x18, sp, #448
        str     x18, [x18]
        //  store i32 %r157, i32* %r111

        add     x19, sp, #448
        ldr     x19, [x19]
        str     x19, [x16]
        add     x16, sp, #456
        str     x16, [x16]
        //  %r158 = load i32, i32* %r111

        add     x18, sp, #456
        ldr     x18, [x18]
        ldr     x17, [x18]
        add     x17, sp, #464
        str     x17, [x17]
        //  %r159 = add i32 %r158, 1

        mov     x19, #1
        add     x19, sp, #472
        str     x19, [x19]
        add     x16, sp, #464
        ldr     x16, [x16]
        add     x17, x16, x19
        add     x17, sp, #480
        str     x17, [x17]
        //  store i32 %r159, i32* %r112

        add     x18, sp, #480
        ldr     x18, [x18]
        str     x18, [x19]
        add     x19, sp, #15
        str     x19, [x19]
        //  %r160 = load i32, i32* %r112

        add     x16, sp, #224
        ldr     x16, [x16]
        ldr     x15, [x16]
        //  %r161 = add i32 %r160, 1

        mov     x17, #1
        add     x17, sp, #488
        str     x17, [x17]
        add     x15, x15, x17
        //  store i32 %r161, i32* %r113

        str     x15, [x18]
        add     x18, sp, #496
        str     x18, [x18]
        //  %r162 = load i32, i32* %r113

        add     x19, sp, #496
        ldr     x19, [x19]
        ldr     x15, [x19]
        //  %r163 = add i32 %r162, 1

        mov     x16, #1
        add     x16, sp, #504
        str     x16, [x16]
        add     x15, x15, x16
        //  store i32 %r163, i32* %r114

        str     x15, [x17]
        add     x17, sp, #512
        str     x17, [x17]
        //  %r164 = load i32, i32* %r114

        add     x18, sp, #512
        ldr     x18, [x18]
        ldr     x15, [x18]
        //  %r165 = add i32 %r164, 1

        mov     x19, #1
        add     x16, sp, #520
        ldr     x16, [x16]
        add     x19, sp, #16
        str     x19, [x19]
        add     x15, x15, x19
        //  store i32 %r165, i32* %r115

        str     x15, [x17]
        add     x17, sp, #528
        str     x17, [x17]
        //  %r166 = load i32, i32* %r115

        add     x18, sp, #528
        ldr     x18, [x18]
        ldr     x15, [x18]
        //  %r167 = add i32 %r166, 1

        mov     x19, #1
        add     x19, sp, #536
        str     x19, [x19]
        add     x15, x15, x19
        //  store i32 %r167, i32* %r116

        str     x15, [x16]
        add     x16, sp, #544
        str     x16, [x16]
        //  %r168 = load i32, i32* %r116

        add     x17, sp, #544
        ldr     x17, [x17]
        ldr     x15, [x17]
        //  %r169 = add i32 %r168, 1

        mov     x18, #1
        add     x18, sp, #552
        str     x18, [x18]
        add     x15, x15, x18
        //  store i32 %r169, i32* %r117

        str     x15, [x19]
        add     x19, sp, #560
        str     x19, [x19]
        //  %r170 = load i32, i32* %r117

        add     x16, sp, #560
        ldr     x16, [x16]
        ldr     x15, [x16]
        //  %r171 = add i32 %r170, 1

        mov     x17, #1
        add     x17, sp, #568
        str     x17, [x17]
        add     x15, x15, x17
        //  store i32 %r171, i32* %r118

        str     x15, [x18]
        add     x18, sp, #576
        str     x18, [x18]
        //  %r172 = load i32, i32* %r118

        add     x19, sp, #576
        ldr     x19, [x19]
        ldr     x15, [x19]
        //  %r173 = add i32 %r172, 1

        mov     x16, #1
        add     x16, sp, #584
        str     x16, [x16]
        add     x15, x15, x16
        //  store i32 %r173, i32* %r119

        str     x15, [x17]
        add     x17, sp, #592
        str     x17, [x17]
        //  %r174 = load i32, i32* %r119

        add     x18, sp, #592
        ldr     x18, [x18]
        ldr     x15, [x18]
        //  %r175 = add i32 %r174, 1

        mov     x19, #1
        add     x19, sp, #600
        str     x19, [x19]
        add     x15, x15, x19
        //  store i32 %r175, i32* %r120

        str     x15, [x16]
        add     x16, sp, #9
        str     x16, [x16]
        //  %r176 = load i32, i32* %r120

        add     x17, sp, #128
        ldr     x17, [x17]
        ldr     x15, [x17]
        //  %r177 = add i32 %r176, 1

        mov     x18, #1
        add     x18, sp, #608
        str     x18, [x18]
        add     x15, x15, x18
        //  store i32 %r177, i32* %r121

        str     x15, [x19]
        add     x19, sp, #616
        str     x19, [x19]
        //  %r178 = load i32, i32* %r121

        add     x16, sp, #616
        ldr     x16, [x16]
        ldr     x15, [x16]
        //  %r179 = add i32 %r178, 1

        mov     x17, #1
        add     x17, sp, #624
        str     x17, [x17]
        add     x15, x15, x17
        //  store i32 %r179, i32* %r122

        str     x15, [x18]
        add     x18, sp, #632
        str     x18, [x18]
        //  %r180 = load i32, i32* %r122

        add     x19, sp, #632
        ldr     x19, [x19]
        ldr     x15, [x19]
        //  %r181 = add i32 %r180, 1

        mov     x16, #1
        add     x16, sp, #520
        str     x16, [x16]
        add     x15, x15, x16
        //  store i32 %r181, i32* %r123

        str     x15, [x14]
        //  %r182 = load i32, i32* %r123

        ldr     x15, [x14]
        //  %r183 = add i32 %r182, 1

        mov     x17, #1
        add     x17, sp, #640
        str     x17, [x17]
        add     x15, x15, x17
        //  store i32 %r183, i32* %r124

        str     x15, [x13]
        //  %r184 = load i32, i32* %r124

        ldr     x15, [x13]
        //  %r185 = add i32 %r184, 1

        mov     x18, #1
        add     x18, sp, #648
        str     x18, [x18]
        add     x15, x15, x18
        //  store i32 %r185, i32* %r125

        str     x15, [x12]
        //  %r186 = load i32, i32* %r125

        ldr     x15, [x12]
        //  %r187 = add i32 %r186, 1

        mov     x19, #1
        add     x19, sp, #656
        str     x19, [x19]
        add     x15, x15, x19
        //  store i32 %r187, i32* %r126

        str     x15, [x11]
        //  %r188 = load i32, i32* %r126

        ldr     x15, [x11]
        //  %r189 = add i32 %r188, 1

        mov     x16, #1
        add     x16, sp, #664
        str     x16, [x16]
        add     x15, x15, x16
        //  store i32 %r189, i32* %r127

        str     x15, [x10]
        //  %r190 = load i32, i32* %r127

        ldr     x15, [x10]
        //  %r191 = add i32 %r190, 1

        mov     x17, #1
        add     x17, sp, #672
        str     x17, [x17]
        add     x15, x15, x17
        //  store i32 %r191, i32* %r128

        str     x15, [x9]
        //  %r192 = load i32, i32* %r128

        ldr     x15, [x9]
        //  %r193 = add i32 %r192, 1

        mov     x18, #1
        add     x18, sp, #680
        str     x18, [x18]
        add     x15, x15, x18
        //  store i32 %r193, i32* %r129

        str     x15, [x19]
        add     x19, sp, #688
        str     x19, [x19]
        //  %r195 = load i32, i32* %r100

        //  %r196 = load i32, i32* %r100

        add     x16, sp, #72
        ldr     x16, [x16]
        ldr     x15, [x16]
        //  call void @putint(i32 %r196)

        mov     x0, x15
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
        //  %r197 = load i32, i32* %r101

        //  %r198 = load i32, i32* %r101

        add     x17, sp, #104
        ldr     x17, [x17]
        ldr     x15, [x17]
        //  call void @putint(i32 %r198)

        mov     x0, x15
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
        //  %r199 = load i32, i32* %r102

        //  %r200 = load i32, i32* %r102

        add     x18, sp, #160
        ldr     x18, [x18]
        ldr     x15, [x18]
        //  call void @putint(i32 %r200)

        mov     x0, x15
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
        //  %r201 = load i32, i32* %r103

        //  %r202 = load i32, i32* %r103

        add     x19, sp, #192
        ldr     x19, [x19]
        ldr     x15, [x19]
        //  call void @putint(i32 %r202)

        mov     x0, x15
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
        //  %r203 = load i32, i32* %r104

        //  %r204 = load i32, i32* %r104

        add     x16, sp, #112
        ldr     x16, [x16]
        ldr     x15, [x16]
        //  call void @putint(i32 %r204)

        mov     x0, x15
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
        //  %r205 = load i32, i32* %r105

        //  %r206 = load i32, i32* %r105

        add     x17, sp, #264
        ldr     x17, [x17]
        ldr     x15, [x17]
        //  call void @putint(i32 %r206)

        mov     x0, x15
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
        //  %r207 = load i32, i32* %r106

        //  %r208 = load i32, i32* %r106

        add     x18, sp, #304
        ldr     x18, [x18]
        ldr     x15, [x18]
        //  call void @putint(i32 %r208)

        mov     x0, x15
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
        //  %r209 = load i32, i32* %r107

        //  %r210 = load i32, i32* %r107

        add     x19, sp, #328
        ldr     x19, [x19]
        ldr     x15, [x19]
        //  call void @putint(i32 %r210)

        mov     x0, x15
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
        //  %r211 = load i32, i32* %r108

        //  %r212 = load i32, i32* %r108

        add     x16, sp, #360
        ldr     x16, [x16]
        ldr     x15, [x16]
        //  call void @putint(i32 %r212)

        mov     x0, x15
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
        //  %r213 = load i32, i32* %r109

        //  %r214 = load i32, i32* %r109

        add     x17, sp, #392
        ldr     x17, [x17]
        ldr     x15, [x17]
        //  call void @putint(i32 %r214)

        mov     x0, x15
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
        //  %r215 = load i32, i32* %r110

        //  %r216 = load i32, i32* %r110

        add     x18, sp, #424
        ldr     x18, [x18]
        ldr     x15, [x18]
        //  call void @putint(i32 %r216)

        mov     x0, x15
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
        //  %r217 = load i32, i32* %r111

        //  %r218 = load i32, i32* %r111

        add     x19, sp, #456
        ldr     x19, [x19]
        ldr     x15, [x19]
        //  call void @putint(i32 %r218)

        mov     x0, x15
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
        //  %r219 = load i32, i32* %r112

        //  %r220 = load i32, i32* %r112

        add     x16, sp, #224
        ldr     x16, [x16]
        ldr     x15, [x16]
        //  call void @putint(i32 %r220)

        mov     x0, x15
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
        //  %r221 = load i32, i32* %r113

        //  %r222 = load i32, i32* %r113

        add     x17, sp, #496
        ldr     x17, [x17]
        ldr     x15, [x17]
        //  call void @putint(i32 %r222)

        mov     x0, x15
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
        //  %r223 = load i32, i32* %r114

        //  %r224 = load i32, i32* %r114

        add     x18, sp, #512
        ldr     x18, [x18]
        ldr     x15, [x18]
        //  call void @putint(i32 %r224)

        mov     x0, x15
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
        //  %r225 = load i32, i32* %r115

        //  %r226 = load i32, i32* %r115

        add     x19, sp, #528
        ldr     x19, [x19]
        ldr     x15, [x19]
        //  call void @putint(i32 %r226)

        mov     x0, x15
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
        //  %r227 = load i32, i32* %r116

        //  %r228 = load i32, i32* %r116

        add     x17, sp, #544
        ldr     x17, [x17]
        ldr     x16, [x17]
        add     x16, sp, #696
        str     x16, [x16]
        //  call void @putint(i32 %r228)

        add     x18, sp, #696
        ldr     x18, [x18]
        mov     x0, x18
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
        //  %r229 = load i32, i32* %r117

        //  %r230 = load i32, i32* %r117

        add     x16, sp, #560
        ldr     x16, [x16]
        ldr     x19, [x16]
        add     x19, sp, #704
        str     x19, [x19]
        //  call void @putint(i32 %r230)

        add     x17, sp, #704
        ldr     x17, [x17]
        mov     x0, x17
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
        //  %r231 = load i32, i32* %r118

        //  %r232 = load i32, i32* %r118

        add     x19, sp, #576
        ldr     x19, [x19]
        ldr     x18, [x19]
        add     x18, sp, #368
        str     x18, [x18]
        //  call void @putint(i32 %r232)

        add     x16, sp, #368
        ldr     x16, [x16]
        mov     x0, x16
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
        //  %r233 = load i32, i32* %r119

        //  %r234 = load i32, i32* %r119

        add     x18, sp, #592
        ldr     x18, [x18]
        ldr     x17, [x18]
        add     x17, sp, #712
        str     x17, [x17]
        //  call void @putint(i32 %r234)

        add     x19, sp, #712
        ldr     x19, [x19]
        mov     x0, x19
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
        //  %r235 = load i32, i32* %r120

        //  %r236 = load i32, i32* %r120

        add     x17, sp, #128
        ldr     x17, [x17]
        ldr     x16, [x17]
        add     x16, sp, #720
        str     x16, [x16]
        //  call void @putint(i32 %r236)

        add     x18, sp, #720
        ldr     x18, [x18]
        mov     x0, x18
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
        //  %r237 = load i32, i32* %r121

        //  %r238 = load i32, i32* %r121

        add     x16, sp, #616
        ldr     x16, [x16]
        ldr     x19, [x16]
        add     x19, sp, #728
        str     x19, [x19]
        //  call void @putint(i32 %r238)

        add     x17, sp, #728
        ldr     x17, [x17]
        mov     x0, x17
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
        //  %r239 = load i32, i32* %r122

        //  %r240 = load i32, i32* %r122

        add     x19, sp, #632
        ldr     x19, [x19]
        ldr     x18, [x19]
        add     x18, sp, #11
        str     x18, [x18]
        //  call void @putint(i32 %r240)

        add     x16, sp, #248
        ldr     x16, [x16]
        mov     x0, x16
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
        //  %r241 = load i32, i32* %r123

        //  %r242 = load i32, i32* %r123

        ldr     x17, [x14]
        add     x17, sp, #736
        str     x17, [x17]
        //  call void @putint(i32 %r242)

        add     x18, sp, #736
        ldr     x18, [x18]
        mov     x0, x18
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
        //  %r243 = load i32, i32* %r124

        //  %r244 = load i32, i32* %r124

        ldr     x13, [x13]
        //  call void @putint(i32 %r244)

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
        //  %r245 = load i32, i32* %r125

        //  %r246 = load i32, i32* %r125

        ldr     x13, [x12]
        //  call void @putint(i32 %r246)

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
        //  %r247 = load i32, i32* %r126

        //  %r248 = load i32, i32* %r126

        ldr     x11, [x11]
        //  call void @putint(i32 %r248)

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
        //  %r249 = load i32, i32* %r127

        //  %r250 = load i32, i32* %r127

        ldr     x10, [x10]
        //  call void @putint(i32 %r250)

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
        //  %r251 = load i32, i32* %r128

        //  %r252 = load i32, i32* %r128

        ldr     x9, [x9]
        //  call void @putint(i32 %r252)

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
        //  %r253 = load i32, i32* %r129

        //  %r254 = load i32, i32* %r129

        add     x19, sp, #688
        ldr     x19, [x19]
        ldr     x9, [x19]
        //  call void @putint(i32 %r254)

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
        //  store i32 10, i32* %r255

        mov     x9, #10
        str     x9, [x16]
        add     x16, sp, #744
        str     x16, [x16]
        //  %r256 = load i32, i32* %r255

        //  %r257 = load i32, i32* %r255

        add     x17, sp, #744
        ldr     x17, [x17]
        ldr     x9, [x17]
        //  call void @putch(i32 %r257)

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
        //  %r258 = load i32, i32* %r130

        //  %r259 = load i32, i32* %r130

        add     x18, sp, #16
        ldr     x18, [x18]
        ldr     x9, [x18]
        //  call void @putint(i32 %r259)

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
        //  %r260 = load i32, i32* %r255

        //  %r261 = load i32, i32* %r255

        add     x19, sp, #744
        ldr     x19, [x19]
        ldr     x9, [x19]
        //  call void @putch(i32 %r261)

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
        //  %r262 = load i32, i32* %r125

        ldr     x9, [x12]
        //  ret i32 %r262

        mov     x0, x9
        mov     sp, x29
        ret
