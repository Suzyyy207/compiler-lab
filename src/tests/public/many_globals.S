.section .data
.global    a0
.global    a1
.global    a2
.global    a3
.global    a4
.global    a5
.global    a6
.global    a7
.global    a8
.global    a9
.global    a10
.global    a11
.global    a12
.global    a13
.global    a14
.global    a15
.global    a16
.global    a17
.global    a18
.global    a19
.global    a20
.global    a21
.global    a22
.global    a23
.global    a24
.global    a25
.global    a26
.global    a27
.global    a28
.global    a29
.global    a30
.global    a31
.global    a32
.global    a33
.global    a34
.global    a35
.global    a36
.global    a37
.global    a38
.global    a39
a0:
        .quad   0
a1:
        .quad   0
a2:
        .quad   0
a3:
        .quad   0
a4:
        .quad   0
a5:
        .quad   0
a6:
        .quad   0
a7:
        .quad   0
a8:
        .quad   0
a9:
        .quad   0
a10:
        .quad   0
a11:
        .quad   0
a12:
        .quad   0
a13:
        .quad   0
a14:
        .quad   0
a15:
        .quad   0
a16:
        .quad   0
a17:
        .quad   0
a18:
        .quad   0
a19:
        .quad   0
a20:
        .quad   0
a21:
        .quad   0
a22:
        .quad   0
a23:
        .quad   0
a24:
        .quad   0
a25:
        .quad   0
a26:
        .quad   0
a27:
        .quad   0
a28:
        .quad   0
a29:
        .quad   0
a30:
        .quad   0
a31:
        .quad   0
a32:
        .quad   0
a33:
        .quad   0
a34:
        .quad   0
a35:
        .quad   0
a36:
        .quad   0
a37:
        .quad   0
a38:
        .quad   0
a39:
        .quad   0
.section .text
.global getch
.global getint
.global putch
.global putint
.global putarray
.global _sysy_starttime
.global _sysy_stoptime
.global testParam8
.global testParam16
.global testParam32
.global main
        sub     sp, sp, #72
testParam8:

        //115:x29,#-64

        //113:x29,#-56

        //111:x29,#-48

        //109:x29,#-40

        //107:x29,#-32

        //105:x29,#-24

        //103:x29,#-16

        //101:x29,#-8

        //bb2:

bb2:

        sub     sp, sp, #72
        //  %r101 = alloca i32

        mov     x16, #64
        sub     sp, sp, x16
        mov     x12, x0
        mov     x14, x1
        mov     x16, x2
        add     x16, sp, #0
        str     x16, [x16]
        mov     x17, x3
        add     x17, sp, #8
        str     x17, [x17]
        mov     x18, x4
        add     x18, sp, #16
        str     x18, [x18]
        mov     x19, x5
        add     x19, sp, #24
        str     x19, [x19]
        mov     x16, x6
        add     x16, sp, #32
        str     x16, [x16]
        mov     x10, x7
        //  store i32 %r100, i32* %r101

        str     x12, [x13]
        //  %r103 = alloca i32

        //  store i32 %r102, i32* %r103

        str     x14, [x15]
        //  %r105 = alloca i32

        //  store i32 %r104, i32* %r105

        add     x17, sp, #0
        ldr     x17, [x17]
        str     x17, [x18]
        add     x18, sp, #40
        str     x18, [x18]
        //  %r107 = alloca i32

        //  store i32 %r106, i32* %r107

        add     x19, sp, #8
        ldr     x19, [x19]
        str     x19, [x16]
        add     x16, sp, #48
        str     x16, [x16]
        //  %r109 = alloca i32

        //  store i32 %r108, i32* %r109

        add     x17, sp, #16
        ldr     x17, [x17]
        str     x17, [x18]
        add     x18, sp, #56
        str     x18, [x18]
        //  %r111 = alloca i32

        //  store i32 %r110, i32* %r111

        add     x19, sp, #24
        ldr     x19, [x19]
        str     x19, [x16]
        add     x16, sp, #64
        str     x16, [x16]
        //  %r113 = alloca i32

        //  store i32 %r112, i32* %r113

        add     x17, sp, #32
        ldr     x17, [x17]
        str     x17, [x11]
        //  %r115 = alloca i32

        //  store i32 %r114, i32* %r115

        str     x10, [x9]
        //  br label %bb1


        b     bb1
        //bb1:

bb1:

        //  %r116 = load i32, i32* %r101

        ldr     x10, [x13]
        //  %r117 = load i32, i32* %r103

        ldr     x12, [x15]
        //  %r118 = add i32 %r116, %r117

        add     x10, x10, x12
        //  %r119 = load i32, i32* %r105

        add     x18, sp, #40
        ldr     x18, [x18]
        ldr     x12, [x18]
        //  %r120 = add i32 %r118, %r119

        add     x12, x10, x12
        //  %r121 = load i32, i32* %r107

        add     x19, sp, #48
        ldr     x19, [x19]
        ldr     x10, [x19]
        //  %r122 = add i32 %r120, %r121

        add     x12, x12, x10
        //  %r123 = load i32, i32* %r109

        add     x16, sp, #56
        ldr     x16, [x16]
        ldr     x10, [x16]
        //  %r124 = add i32 %r122, %r123

        add     x12, x12, x10
        //  %r125 = load i32, i32* %r111

        add     x17, sp, #64
        ldr     x17, [x17]
        ldr     x10, [x17]
        //  %r126 = add i32 %r124, %r125

        add     x12, x12, x10
        //  %r127 = load i32, i32* %r113

        ldr     x10, [x11]
        //  %r128 = add i32 %r126, %r127

        add     x10, x12, x10
        //  %r129 = load i32, i32* %r115

        ldr     x9, [x9]
        //  %r130 = add i32 %r128, %r129

        add     x9, x10, x9
        //  ret i32 %r130

        mov     x0, x9
        mov     sp, x29
        ret
        sub     sp, sp, #264
testParam16:

        //162:x29,#-128

        //160:x29,#-120

        //158:x29,#-112

        //132:x29,#-8

        //134:x29,#-16

        //136:x29,#-24

        //138:x29,#-32

        //140:x29,#-40

        //142:x29,#-48

        //144:x29,#-56

        //146:x29,#-64

        //148:x29,#-72

        //150:x29,#-80

        //152:x29,#-88

        //154:x29,#-96

        //156:x29,#-104

        //bb4:

bb4:

        sub     sp, sp, #264
        //  %r132 = alloca i32

        mov     x16, #128
        sub     sp, sp, x16
        mov     x18, x0
        add     x18, sp, #0
        str     x18, [x18]
        mov     x19, x1
        add     x19, sp, #8
        str     x19, [x19]
        mov     x16, x2
        add     x16, sp, #16
        str     x16, [x16]
        mov     x17, x3
        add     x17, sp, #24
        str     x17, [x17]
        mov     x18, x4
        add     x18, sp, #32
        str     x18, [x18]
        mov     x14, x5
        mov     x12, x6
        mov     x19, x7
        add     x19, sp, #40
        str     x19, [x19]
        ldr     x16, [x29]
        add     x16, sp, #48
        str     x16, [x16]
        mov     x17, x16
        add     x17, sp, #56
        str     x17, [x17]
        ldr     x18, [x29,#8]
        add     x18, sp, #64
        str     x18, [x18]
        mov     x19, x18
        add     x19, sp, #72
        str     x19, [x19]
        ldr     x16, [x29,#16]
        add     x16, sp, #80
        str     x16, [x16]
        mov     x17, x16
        add     x17, sp, #88
        str     x17, [x17]
        ldr     x18, [x29,#24]
        add     x18, sp, #96
        str     x18, [x18]
        mov     x19, x18
        add     x19, sp, #104
        str     x19, [x19]
        ldr     x16, [x29,#32]
        add     x16, sp, #112
        str     x16, [x16]
        mov     x17, x16
        add     x17, sp, #120
        str     x17, [x17]
        ldr     x18, [x29,#40]
        add     x18, sp, #128
        str     x18, [x18]
        mov     x19, x18
        add     x16, sp, #144
        ldr     x16, [x16]
        add     x19, sp, #16
        str     x19, [x19]
        ldr     x17, [x29,#48]
        add     x18, sp, #160
        ldr     x18, [x18]
        add     x17, sp, #18
        str     x17, [x17]
        mov     x19, x17
        add     x19, sp, #12
        str     x19, [x19]
        ldr     x16, [x29,#56]
        add     x16, sp, #12
        str     x16, [x16]
        mov     x10, x16
        //  store i32 %r131, i32* %r132

        add     x17, sp, #0
        ldr     x17, [x17]
        str     x17, [x18]
        add     x18, sp, #10
        str     x18, [x18]
        //  %r134 = alloca i32

        //  store i32 %r133, i32* %r134

        add     x19, sp, #8
        ldr     x19, [x19]
        str     x19, [x16]
        add     x16, sp, #9
        str     x16, [x16]
        //  %r136 = alloca i32

        //  store i32 %r135, i32* %r136

        add     x17, sp, #16
        ldr     x17, [x17]
        str     x17, [x18]
        add     x19, sp, #200
        ldr     x19, [x19]
        add     x18, sp, #19
        str     x18, [x18]
        //  %r138 = alloca i32

        //  store i32 %r137, i32* %r138

        add     x16, sp, #24
        ldr     x16, [x16]
        str     x16, [x17]
        add     x17, sp, #208
        str     x17, [x17]
        //  %r140 = alloca i32

        //  store i32 %r139, i32* %r140

        add     x18, sp, #32
        ldr     x18, [x18]
        str     x18, [x15]
        //  %r142 = alloca i32

        //  store i32 %r141, i32* %r142

        str     x14, [x13]
        //  %r144 = alloca i32

        //  store i32 %r143, i32* %r144

        str     x12, [x19]
        add     x19, sp, #200
        str     x19, [x19]
        //  %r146 = alloca i32

        //  store i32 %r145, i32* %r146

        add     x16, sp, #40
        ldr     x16, [x16]
        str     x16, [x17]
        add     x17, sp, #216
        str     x17, [x17]
        //  %r148 = alloca i32

        //  store i32 %r147, i32* %r148

        add     x18, sp, #56
        ldr     x18, [x18]
        str     x18, [x19]
        add     x19, sp, #224
        str     x19, [x19]
        //  %r150 = alloca i32

        //  store i32 %r149, i32* %r150

        add     x16, sp, #72
        ldr     x16, [x16]
        str     x16, [x17]
        add     x17, sp, #232
        str     x17, [x17]
        //  %r152 = alloca i32

        //  store i32 %r151, i32* %r152

        add     x18, sp, #88
        ldr     x18, [x18]
        str     x18, [x19]
        add     x19, sp, #11
        str     x19, [x19]
        //  %r154 = alloca i32

        //  store i32 %r153, i32* %r154

        add     x16, sp, #104
        ldr     x16, [x16]
        str     x16, [x17]
        add     x17, sp, #240
        str     x17, [x17]
        //  %r156 = alloca i32

        //  store i32 %r155, i32* %r156

        add     x18, sp, #120
        ldr     x18, [x18]
        str     x18, [x19]
        add     x19, sp, #248
        str     x19, [x19]
        //  %r158 = alloca i32

        //  store i32 %r157, i32* %r158

        add     x16, sp, #136
        ldr     x16, [x16]
        str     x16, [x17]
        add     x17, sp, #256
        str     x17, [x17]
        //  %r160 = alloca i32

        //  store i32 %r159, i32* %r160

        add     x18, sp, #168
        ldr     x18, [x18]
        str     x18, [x11]
        //  %r162 = alloca i32

        //  store i32 %r161, i32* %r162

        str     x10, [x9]
        //  br label %bb3


        b     bb3
        //bb3:

bb3:

        //  %r163 = load i32, i32* %r132

        add     x19, sp, #184
        ldr     x19, [x19]
        ldr     x12, [x19]
        //  %r164 = load i32, i32* %r134

        add     x16, sp, #192
        ldr     x16, [x16]
        ldr     x10, [x16]
        //  %r165 = add i32 %r163, %r164

        add     x10, x12, x10
        //  %r166 = load i32, i32* %r136

        add     x17, sp, #144
        ldr     x17, [x17]
        ldr     x12, [x17]
        //  %r167 = add i32 %r165, %r166

        add     x10, x10, x12
        //  %r168 = load i32, i32* %r138

        add     x18, sp, #208
        ldr     x18, [x18]
        ldr     x12, [x18]
        //  %r169 = sub i32 %r167, %r168

        sub     x10, x10, x12
        //  %r170 = load i32, i32* %r140

        ldr     x12, [x15]
        //  %r171 = sub i32 %r169, %r170

        sub     x10, x10, x12
        //  %r172 = load i32, i32* %r142

        ldr     x12, [x13]
        //  %r173 = sub i32 %r171, %r172

        sub     x10, x10, x12
        //  %r174 = load i32, i32* %r144

        add     x19, sp, #200
        ldr     x19, [x19]
        ldr     x12, [x19]
        //  %r175 = sub i32 %r173, %r174

        sub     x10, x10, x12
        //  %r176 = load i32, i32* %r146

        add     x16, sp, #216
        ldr     x16, [x16]
        ldr     x12, [x16]
        //  %r177 = sub i32 %r175, %r176

        sub     x10, x10, x12
        //  %r178 = load i32, i32* %r148

        add     x17, sp, #224
        ldr     x17, [x17]
        ldr     x12, [x17]
        //  %r179 = add i32 %r177, %r178

        add     x10, x10, x12
        //  %r180 = load i32, i32* %r150

        add     x18, sp, #232
        ldr     x18, [x18]
        ldr     x12, [x18]
        //  %r181 = add i32 %r179, %r180

        add     x10, x10, x12
        //  %r182 = load i32, i32* %r152

        add     x19, sp, #160
        ldr     x19, [x19]
        ldr     x12, [x19]
        //  %r183 = add i32 %r181, %r182

        add     x12, x10, x12
        //  %r184 = load i32, i32* %r154

        add     x16, sp, #240
        ldr     x16, [x16]
        ldr     x10, [x16]
        //  %r185 = add i32 %r183, %r184

        add     x12, x12, x10
        //  %r186 = load i32, i32* %r156

        add     x17, sp, #248
        ldr     x17, [x17]
        ldr     x10, [x17]
        //  %r187 = add i32 %r185, %r186

        add     x12, x12, x10
        //  %r188 = load i32, i32* %r158

        add     x18, sp, #256
        ldr     x18, [x18]
        ldr     x10, [x18]
        //  %r189 = add i32 %r187, %r188

        add     x10, x12, x10
        //  %r190 = load i32, i32* %r160

        ldr     x11, [x11]
        //  %r191 = add i32 %r189, %r190

        add     x10, x10, x11
        //  %r192 = load i32, i32* %r162

        ldr     x9, [x9]
        //  %r193 = add i32 %r191, %r192

        add     x9, x10, x9
        //  ret i32 %r193

        mov     x0, x9
        mov     sp, x29
        ret
        sub     sp, sp, #648
testParam32:

        //257:x29,#-256

        //255:x29,#-248

        //253:x29,#-240

        //195:x29,#-8

        //197:x29,#-16

        //199:x29,#-24

        //201:x29,#-32

        //203:x29,#-40

        //205:x29,#-48

        //207:x29,#-56

        //209:x29,#-64

        //211:x29,#-72

        //213:x29,#-80

        //215:x29,#-88

        //217:x29,#-96

        //219:x29,#-104

        //221:x29,#-112

        //223:x29,#-120

        //225:x29,#-128

        //227:x29,#-136

        //229:x29,#-144

        //231:x29,#-152

        //233:x29,#-160

        //235:x29,#-168

        //237:x29,#-176

        //239:x29,#-184

        //241:x29,#-192

        //243:x29,#-200

        //245:x29,#-208

        //247:x29,#-216

        //249:x29,#-224

        //251:x29,#-232

        //bb6:

bb6:

        sub     sp, sp, #648
        //  %r195 = alloca i32

        mov     x16, #10
        sub     sp, sp, x16
        mov     x19, x0
        add     x19, sp, #0
        str     x19, [x19]
        mov     x16, x1
        add     x16, sp, #8
        str     x16, [x16]
        mov     x17, x2
        add     x17, sp, #16
        str     x17, [x17]
        mov     x18, x3
        add     x18, sp, #24
        str     x18, [x18]
        mov     x19, x4
        add     x19, sp, #32
        str     x19, [x19]
        mov     x16, x5
        add     x16, sp, #40
        str     x16, [x16]
        mov     x17, x6
        add     x17, sp, #48
        str     x17, [x17]
        mov     x18, x7
        add     x18, sp, #56
        str     x18, [x18]
        ldr     x19, [x29]
        add     x19, sp, #64
        str     x19, [x19]
        mov     x16, x19
        add     x16, sp, #72
        str     x16, [x16]
        ldr     x17, [x29,#8]
        add     x17, sp, #80
        str     x17, [x17]
        mov     x18, x17
        add     x18, sp, #88
        str     x18, [x18]
        ldr     x19, [x29,#16]
        add     x19, sp, #96
        str     x19, [x19]
        mov     x16, x19
        add     x16, sp, #104
        str     x16, [x16]
        ldr     x17, [x29,#24]
        add     x17, sp, #112
        str     x17, [x17]
        mov     x18, x17
        add     x18, sp, #120
        str     x18, [x18]
        ldr     x19, [x29,#32]
        add     x19, sp, #128
        str     x19, [x19]
        mov     x16, x19
        add     x16, sp, #136
        str     x16, [x16]
        ldr     x17, [x29,#40]
        add     x17, sp, #144
        str     x17, [x17]
        mov     x18, x17
        add     x18, sp, #152
        str     x18, [x18]
        ldr     x19, [x29,#48]
        add     x19, sp, #160
        str     x19, [x19]
        mov     x14, x19
        ldr     x16, [x29,#56]
        add     x16, sp, #168
        str     x16, [x16]
        mov     x17, x16
        add     x17, sp, #176
        str     x17, [x17]
        ldr     x18, [x29,#64]
        add     x18, sp, #184
        str     x18, [x18]
        mov     x19, x18
        add     x19, sp, #192
        str     x19, [x19]
        ldr     x16, [x29,#72]
        add     x17, sp, #24
        ldr     x17, [x17]
        add     x16, sp, #17
        str     x16, [x16]
        mov     x18, x16
        add     x19, sp, #56
        ldr     x19, [x19]
        add     x18, sp, #19
        str     x18, [x18]
        ldr     x16, [x29,#80]
        add     x17, sp, #120
        ldr     x17, [x17]
        add     x16, sp, #17
        str     x16, [x16]
        mov     x18, x16
        add     x19, sp, #176
        ldr     x19, [x19]
        add     x18, sp, #19
        str     x18, [x18]
        ldr     x16, [x29,#88]
        add     x17, sp, #240
        ldr     x17, [x17]
        add     x16, sp, #17
        str     x16, [x16]
        mov     x18, x16
        add     x19, sp, #248
        ldr     x19, [x19]
        add     x18, sp, #19
        str     x18, [x18]
        ldr     x16, [x29,#96]
        add     x16, sp, #10
        str     x16, [x16]
        mov     x17, x16
        add     x17, sp, #12
        str     x17, [x17]
        ldr     x18, [x29,#104]
        add     x18, sp, #12
        str     x18, [x18]
        mov     x19, x18
        add     x19, sp, #10
        str     x19, [x19]
        ldr     x16, [x29,#112]
        add     x16, sp, #10
        str     x16, [x16]
        mov     x17, x16
        add     x17, sp, #10
        str     x17, [x17]
        ldr     x18, [x29,#120]
        add     x18, sp, #10
        str     x18, [x18]
        mov     x19, x18
        add     x16, sp, #312
        ldr     x16, [x16]
        add     x19, sp, #16
        str     x19, [x19]
        ldr     x17, [x29,#128]
        add     x17, sp, #9
        str     x17, [x17]
        mov     x18, x17
        add     x18, sp, #328
        str     x18, [x18]
        ldr     x19, [x29,#136]
        add     x19, sp, #336
        str     x19, [x19]
        mov     x16, x19
        add     x16, sp, #344
        str     x16, [x16]
        ldr     x17, [x29,#144]
        add     x17, sp, #352
        str     x17, [x17]
        mov     x18, x17
        add     x18, sp, #360
        str     x18, [x18]
        ldr     x19, [x29,#152]
        add     x19, sp, #368
        str     x19, [x19]
        mov     x16, x19
        add     x16, sp, #12
        str     x16, [x16]
        ldr     x17, [x29,#160]
        add     x17, sp, #376
        str     x17, [x17]
        mov     x18, x17
        add     x18, sp, #384
        str     x18, [x18]
        ldr     x19, [x29,#168]
        add     x16, sp, #80
        ldr     x16, [x16]
        add     x19, sp, #16
        str     x19, [x19]
        mov     x17, x19
        add     x18, sp, #200
        ldr     x18, [x18]
        add     x17, sp, #18
        str     x17, [x17]
        ldr     x19, [x29,#176]
        add     x16, sp, #336
        ldr     x16, [x16]
        add     x19, sp, #16
        str     x19, [x19]
        mov     x12, x19
        ldr     x17, [x29,#184]
        add     x17, sp, #416
        str     x17, [x17]
        mov     x10, x17
        //  store i32 %r194, i32* %r195

        add     x18, sp, #0
        ldr     x18, [x18]
        str     x18, [x19]
        add     x19, sp, #424
        str     x19, [x19]
        //  %r197 = alloca i32

        //  store i32 %r196, i32* %r197

        add     x16, sp, #8
        ldr     x16, [x16]
        str     x16, [x17]
        add     x17, sp, #432
        str     x17, [x17]
        //  %r199 = alloca i32

        //  store i32 %r198, i32* %r199

        add     x18, sp, #16
        ldr     x18, [x18]
        str     x18, [x19]
        add     x19, sp, #440
        str     x19, [x19]
        //  %r201 = alloca i32

        //  store i32 %r200, i32* %r201

        add     x16, sp, #24
        ldr     x16, [x16]
        str     x16, [x17]
        add     x17, sp, #448
        str     x17, [x17]
        //  %r203 = alloca i32

        //  store i32 %r202, i32* %r203

        add     x18, sp, #32
        ldr     x18, [x18]
        str     x18, [x19]
        add     x19, sp, #456
        str     x19, [x19]
        //  %r205 = alloca i32

        //  store i32 %r204, i32* %r205

        add     x16, sp, #40
        ldr     x16, [x16]
        str     x16, [x17]
        add     x17, sp, #464
        str     x17, [x17]
        //  %r207 = alloca i32

        //  store i32 %r206, i32* %r207

        add     x18, sp, #48
        ldr     x18, [x18]
        str     x18, [x19]
        add     x19, sp, #472
        str     x19, [x19]
        //  %r209 = alloca i32

        //  store i32 %r208, i32* %r209

        add     x16, sp, #56
        ldr     x16, [x16]
        str     x16, [x17]
        add     x17, sp, #480
        str     x17, [x17]
        //  %r211 = alloca i32

        //  store i32 %r210, i32* %r211

        add     x18, sp, #72
        ldr     x18, [x18]
        str     x18, [x19]
        add     x19, sp, #488
        str     x19, [x19]
        //  %r213 = alloca i32

        //  store i32 %r212, i32* %r213

        add     x16, sp, #88
        ldr     x16, [x16]
        str     x16, [x17]
        add     x17, sp, #496
        str     x17, [x17]
        //  %r215 = alloca i32

        //  store i32 %r214, i32* %r215

        add     x18, sp, #104
        ldr     x18, [x18]
        str     x18, [x19]
        add     x19, sp, #504
        str     x19, [x19]
        //  %r217 = alloca i32

        //  store i32 %r216, i32* %r217

        add     x16, sp, #120
        ldr     x16, [x16]
        str     x16, [x17]
        add     x17, sp, #512
        str     x17, [x17]
        //  %r219 = alloca i32

        //  store i32 %r218, i32* %r219

        add     x18, sp, #136
        ldr     x18, [x18]
        str     x18, [x19]
        add     x19, sp, #520
        str     x19, [x19]
        //  %r221 = alloca i32

        //  store i32 %r220, i32* %r221

        add     x16, sp, #152
        ldr     x16, [x16]
        str     x16, [x15]
        //  %r223 = alloca i32

        //  store i32 %r222, i32* %r223

        str     x14, [x17]
        add     x17, sp, #528
        str     x17, [x17]
        //  %r225 = alloca i32

        //  store i32 %r224, i32* %r225

        add     x18, sp, #176
        ldr     x18, [x18]
        str     x18, [x19]
        add     x19, sp, #536
        str     x19, [x19]
        //  %r227 = alloca i32

        //  store i32 %r226, i32* %r227

        add     x16, sp, #192
        ldr     x16, [x16]
        str     x16, [x17]
        add     x17, sp, #544
        str     x17, [x17]
        //  %r229 = alloca i32

        //  store i32 %r228, i32* %r229

        add     x18, sp, #208
        ldr     x18, [x18]
        str     x18, [x19]
        add     x19, sp, #552
        str     x19, [x19]
        //  %r231 = alloca i32

        //  store i32 %r230, i32* %r231

        add     x16, sp, #224
        ldr     x16, [x16]
        str     x16, [x17]
        add     x17, sp, #560
        str     x17, [x17]
        //  %r233 = alloca i32

        //  store i32 %r232, i32* %r233

        add     x18, sp, #240
        ldr     x18, [x18]
        str     x18, [x19]
        add     x19, sp, #568
        str     x19, [x19]
        //  %r235 = alloca i32

        //  store i32 %r234, i32* %r235

        add     x16, sp, #264
        ldr     x16, [x16]
        str     x16, [x17]
        add     x17, sp, #576
        str     x17, [x17]
        //  %r237 = alloca i32

        //  store i32 %r236, i32* %r237

        add     x18, sp, #280
        ldr     x18, [x18]
        str     x18, [x19]
        add     x19, sp, #584
        str     x19, [x19]
        //  %r239 = alloca i32

        //  store i32 %r238, i32* %r239

        add     x16, sp, #296
        ldr     x16, [x16]
        str     x16, [x17]
        add     x17, sp, #592
        str     x17, [x17]
        //  %r241 = alloca i32

        //  store i32 %r240, i32* %r241

        add     x18, sp, #248
        ldr     x18, [x18]
        str     x18, [x19]
        add     x19, sp, #600
        str     x19, [x19]
        //  %r243 = alloca i32

        //  store i32 %r242, i32* %r243

        add     x16, sp, #328
        ldr     x16, [x16]
        str     x16, [x17]
        add     x17, sp, #608
        str     x17, [x17]
        //  %r245 = alloca i32

        //  store i32 %r244, i32* %r245

        add     x18, sp, #344
        ldr     x18, [x18]
        str     x18, [x19]
        add     x19, sp, #616
        str     x19, [x19]
        //  %r247 = alloca i32

        //  store i32 %r246, i32* %r247

        add     x16, sp, #360
        ldr     x16, [x16]
        str     x16, [x17]
        add     x17, sp, #624
        str     x17, [x17]
        //  %r249 = alloca i32

        //  store i32 %r248, i32* %r249

        add     x18, sp, #312
        ldr     x18, [x18]
        str     x18, [x19]
        add     x19, sp, #632
        str     x19, [x19]
        //  %r251 = alloca i32

        //  store i32 %r250, i32* %r251

        add     x16, sp, #384
        ldr     x16, [x16]
        str     x16, [x17]
        add     x17, sp, #640
        str     x17, [x17]
        //  %r253 = alloca i32

        //  store i32 %r252, i32* %r253

        add     x18, sp, #400
        ldr     x18, [x18]
        str     x18, [x13]
        //  %r255 = alloca i32

        //  store i32 %r254, i32* %r255

        str     x12, [x11]
        //  %r257 = alloca i32

        //  store i32 %r256, i32* %r257

        str     x10, [x9]
        //  br label %bb5


        b     bb5
        //bb5:

bb5:

        //  %r258 = load i32, i32* %r195

        add     x19, sp, #424
        ldr     x19, [x19]
        ldr     x12, [x19]
        //  %r259 = load i32, i32* %r197

        add     x16, sp, #432
        ldr     x16, [x16]
        ldr     x10, [x16]
        //  %r260 = add i32 %r258, %r259

        add     x12, x12, x10
        //  %r261 = load i32, i32* %r199

        add     x17, sp, #440
        ldr     x17, [x17]
        ldr     x10, [x17]
        //  %r262 = add i32 %r260, %r261

        add     x12, x12, x10
        //  %r263 = load i32, i32* %r201

        add     x18, sp, #448
        ldr     x18, [x18]
        ldr     x10, [x18]
        //  %r264 = add i32 %r262, %r263

        add     x12, x12, x10
        //  %r265 = load i32, i32* %r203

        add     x19, sp, #456
        ldr     x19, [x19]
        ldr     x10, [x19]
        //  %r266 = add i32 %r264, %r265

        add     x12, x12, x10
        //  %r267 = load i32, i32* %r205

        add     x16, sp, #464
        ldr     x16, [x16]
        ldr     x10, [x16]
        //  %r268 = add i32 %r266, %r267

        add     x12, x12, x10
        //  %r269 = load i32, i32* %r207

        add     x17, sp, #472
        ldr     x17, [x17]
        ldr     x10, [x17]
        //  %r270 = add i32 %r268, %r269

        add     x12, x12, x10
        //  %r271 = load i32, i32* %r209

        add     x18, sp, #480
        ldr     x18, [x18]
        ldr     x10, [x18]
        //  %r272 = add i32 %r270, %r271

        add     x12, x12, x10
        //  %r273 = load i32, i32* %r211

        add     x19, sp, #488
        ldr     x19, [x19]
        ldr     x10, [x19]
        //  %r274 = add i32 %r272, %r273

        add     x12, x12, x10
        //  %r275 = load i32, i32* %r213

        add     x16, sp, #496
        ldr     x16, [x16]
        ldr     x10, [x16]
        //  %r276 = add i32 %r274, %r275

        add     x12, x12, x10
        //  %r277 = load i32, i32* %r215

        add     x17, sp, #504
        ldr     x17, [x17]
        ldr     x10, [x17]
        //  %r278 = add i32 %r276, %r277

        add     x10, x12, x10
        //  %r279 = load i32, i32* %r217

        add     x18, sp, #512
        ldr     x18, [x18]
        ldr     x12, [x18]
        //  %r280 = add i32 %r278, %r279

        add     x10, x10, x12
        //  %r281 = load i32, i32* %r219

        add     x19, sp, #520
        ldr     x19, [x19]
        ldr     x12, [x19]
        //  %r282 = add i32 %r280, %r281

        add     x10, x10, x12
        //  %r283 = load i32, i32* %r221

        ldr     x12, [x15]
        //  %r284 = add i32 %r282, %r283

        add     x10, x10, x12
        //  %r285 = load i32, i32* %r223

        add     x16, sp, #528
        ldr     x16, [x16]
        ldr     x12, [x16]
        //  %r286 = add i32 %r284, %r285

        add     x10, x10, x12
        //  %r287 = load i32, i32* %r225

        add     x17, sp, #536
        ldr     x17, [x17]
        ldr     x12, [x17]
        //  %r288 = add i32 %r286, %r287

        add     x10, x10, x12
        //  %r289 = load i32, i32* %r227

        add     x18, sp, #544
        ldr     x18, [x18]
        ldr     x12, [x18]
        //  %r290 = add i32 %r288, %r289

        add     x10, x10, x12
        //  %r291 = load i32, i32* %r229

        add     x19, sp, #552
        ldr     x19, [x19]
        ldr     x12, [x19]
        //  %r292 = add i32 %r290, %r291

        add     x10, x10, x12
        //  %r293 = load i32, i32* %r231

        add     x16, sp, #560
        ldr     x16, [x16]
        ldr     x12, [x16]
        //  %r294 = sub i32 %r292, %r293

        sub     x10, x10, x12
        //  %r295 = load i32, i32* %r233

        add     x17, sp, #568
        ldr     x17, [x17]
        ldr     x12, [x17]
        //  %r296 = sub i32 %r294, %r295

        sub     x10, x10, x12
        //  %r297 = load i32, i32* %r235

        add     x18, sp, #576
        ldr     x18, [x18]
        ldr     x12, [x18]
        //  %r298 = sub i32 %r296, %r297

        sub     x10, x10, x12
        //  %r299 = load i32, i32* %r237

        add     x19, sp, #584
        ldr     x19, [x19]
        ldr     x12, [x19]
        //  %r300 = sub i32 %r298, %r299

        sub     x10, x10, x12
        //  %r301 = load i32, i32* %r239

        add     x16, sp, #592
        ldr     x16, [x16]
        ldr     x12, [x16]
        //  %r302 = sub i32 %r300, %r301

        sub     x10, x10, x12
        //  %r303 = load i32, i32* %r241

        add     x17, sp, #600
        ldr     x17, [x17]
        ldr     x12, [x17]
        //  %r304 = add i32 %r302, %r303

        add     x10, x10, x12
        //  %r305 = load i32, i32* %r243

        add     x18, sp, #608
        ldr     x18, [x18]
        ldr     x12, [x18]
        //  %r306 = add i32 %r304, %r305

        add     x10, x10, x12
        //  %r307 = load i32, i32* %r245

        add     x19, sp, #616
        ldr     x19, [x19]
        ldr     x12, [x19]
        //  %r308 = add i32 %r306, %r307

        add     x10, x10, x12
        //  %r309 = load i32, i32* %r247

        add     x16, sp, #624
        ldr     x16, [x16]
        ldr     x12, [x16]
        //  %r310 = add i32 %r308, %r309

        add     x12, x10, x12
        //  %r311 = load i32, i32* %r249

        add     x17, sp, #632
        ldr     x17, [x17]
        ldr     x10, [x17]
        //  %r312 = add i32 %r310, %r311

        add     x12, x12, x10
        //  %r313 = load i32, i32* %r251

        add     x18, sp, #640
        ldr     x18, [x18]
        ldr     x10, [x18]
        //  %r314 = add i32 %r312, %r313

        add     x12, x12, x10
        //  %r315 = load i32, i32* %r253

        ldr     x10, [x13]
        //  %r316 = add i32 %r314, %r315

        add     x12, x12, x10
        //  %r317 = load i32, i32* %r255

        ldr     x10, [x11]
        //  %r318 = add i32 %r316, %r317

        add     x10, x12, x10
        //  %r319 = load i32, i32* %r257

        ldr     x9, [x9]
        //  %r320 = add i32 %r318, %r319

        add     x9, x10, x9
        //  ret i32 %r320

        mov     x0, x9
        mov     sp, x29
        ret
        sub     sp, sp, #560
main:

        //bb7:

bb7:

        sub     sp, sp, #560
        //  call void @_sysy_starttime(i32 97)

        mov     x16, #0
        sub     sp, sp, x16
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
        //  store i32 0, i32* @a0

        mov     x10, #0
        adrp     x9, a0
        add     x9, x9, #:lo12:a0
        str     x10, [x9]
        //  store i32 1, i32* @a1

        mov     x10, #1
        adrp     x9, a1
        add     x9, x9, #:lo12:a1
        str     x10, [x9]
        //  store i32 2, i32* @a2

        mov     x10, #2
        adrp     x9, a2
        add     x9, x9, #:lo12:a2
        str     x10, [x9]
        //  store i32 3, i32* @a3

        mov     x10, #3
        adrp     x9, a3
        add     x9, x9, #:lo12:a3
        str     x10, [x9]
        //  store i32 4, i32* @a4

        mov     x10, #4
        adrp     x9, a4
        add     x9, x9, #:lo12:a4
        str     x10, [x9]
        //  store i32 5, i32* @a5

        mov     x10, #5
        adrp     x9, a5
        add     x9, x9, #:lo12:a5
        str     x10, [x9]
        //  store i32 6, i32* @a6

        mov     x10, #6
        adrp     x9, a6
        add     x9, x9, #:lo12:a6
        str     x10, [x9]
        //  store i32 7, i32* @a7

        mov     x10, #7
        adrp     x9, a7
        add     x9, x9, #:lo12:a7
        str     x10, [x9]
        //  store i32 8, i32* @a8

        mov     x10, #8
        adrp     x9, a8
        add     x9, x9, #:lo12:a8
        str     x10, [x9]
        //  store i32 9, i32* @a9

        mov     x10, #9
        adrp     x9, a9
        add     x9, x9, #:lo12:a9
        str     x10, [x9]
        //  store i32 0, i32* @a10

        mov     x10, #0
        adrp     x9, a10
        add     x9, x9, #:lo12:a10
        str     x10, [x9]
        //  store i32 1, i32* @a11

        mov     x10, #1
        adrp     x9, a11
        add     x9, x9, #:lo12:a11
        str     x10, [x9]
        //  store i32 2, i32* @a12

        mov     x10, #2
        adrp     x9, a12
        add     x9, x9, #:lo12:a12
        str     x10, [x9]
        //  store i32 3, i32* @a13

        mov     x10, #3
        adrp     x9, a13
        add     x9, x9, #:lo12:a13
        str     x10, [x9]
        //  store i32 4, i32* @a14

        mov     x10, #4
        adrp     x9, a14
        add     x9, x9, #:lo12:a14
        str     x10, [x9]
        //  store i32 5, i32* @a15

        mov     x10, #5
        adrp     x9, a15
        add     x9, x9, #:lo12:a15
        str     x10, [x9]
        //  store i32 6, i32* @a16

        mov     x9, #6
        adrp     x10, a16
        add     x10, x10, #:lo12:a16
        str     x9, [x10]
        //  store i32 7, i32* @a17

        mov     x9, #7
        adrp     x10, a17
        add     x10, x10, #:lo12:a17
        str     x9, [x10]
        //  store i32 8, i32* @a18

        mov     x9, #8
        adrp     x10, a18
        add     x10, x10, #:lo12:a18
        str     x9, [x10]
        //  store i32 9, i32* @a19

        mov     x9, #9
        adrp     x10, a19
        add     x10, x10, #:lo12:a19
        str     x9, [x10]
        //  store i32 0, i32* @a20

        mov     x9, #0
        adrp     x10, a20
        add     x10, x10, #:lo12:a20
        str     x9, [x10]
        //  store i32 1, i32* @a21

        mov     x9, #1
        adrp     x10, a21
        add     x10, x10, #:lo12:a21
        str     x9, [x10]
        //  store i32 2, i32* @a22

        mov     x9, #2
        adrp     x10, a22
        add     x10, x10, #:lo12:a22
        str     x9, [x10]
        //  store i32 3, i32* @a23

        mov     x10, #3
        adrp     x9, a23
        add     x9, x9, #:lo12:a23
        str     x10, [x9]
        //  store i32 4, i32* @a24

        mov     x10, #4
        adrp     x9, a24
        add     x9, x9, #:lo12:a24
        str     x10, [x9]
        //  store i32 5, i32* @a25

        mov     x10, #5
        adrp     x9, a25
        add     x9, x9, #:lo12:a25
        str     x10, [x9]
        //  store i32 6, i32* @a26

        mov     x10, #6
        adrp     x9, a26
        add     x9, x9, #:lo12:a26
        str     x10, [x9]
        //  store i32 7, i32* @a27

        mov     x10, #7
        adrp     x9, a27
        add     x9, x9, #:lo12:a27
        str     x10, [x9]
        //  store i32 8, i32* @a28

        mov     x10, #8
        adrp     x9, a28
        add     x9, x9, #:lo12:a28
        str     x10, [x9]
        //  store i32 9, i32* @a29

        mov     x10, #9
        adrp     x9, a29
        add     x9, x9, #:lo12:a29
        str     x10, [x9]
        //  store i32 0, i32* @a30

        mov     x10, #0
        adrp     x9, a30
        add     x9, x9, #:lo12:a30
        str     x10, [x9]
        //  store i32 1, i32* @a31

        mov     x9, #1
        adrp     x10, a31
        add     x10, x10, #:lo12:a31
        str     x9, [x10]
        //  store i32 4, i32* @a32

        mov     x9, #4
        adrp     x10, a32
        add     x10, x10, #:lo12:a32
        str     x9, [x10]
        //  store i32 5, i32* @a33

        mov     x9, #5
        adrp     x10, a33
        add     x10, x10, #:lo12:a33
        str     x9, [x10]
        //  store i32 6, i32* @a34

        mov     x9, #6
        adrp     x10, a34
        add     x10, x10, #:lo12:a34
        str     x9, [x10]
        //  store i32 7, i32* @a35

        mov     x9, #7
        adrp     x10, a35
        add     x10, x10, #:lo12:a35
        str     x9, [x10]
        //  store i32 8, i32* @a36

        mov     x9, #8
        adrp     x10, a36
        add     x10, x10, #:lo12:a36
        str     x9, [x10]
        //  store i32 9, i32* @a37

        mov     x9, #9
        adrp     x10, a37
        add     x10, x10, #:lo12:a37
        str     x9, [x10]
        //  store i32 0, i32* @a38

        mov     x9, #0
        adrp     x10, a38
        add     x10, x10, #:lo12:a38
        str     x9, [x10]
        //  store i32 1, i32* @a39

        mov     x9, #1
        adrp     x10, a39
        add     x10, x10, #:lo12:a39
        str     x9, [x10]
        //  %r321 = load i32, i32* @a0

        adrp     x9, a0
        add     x9, x9, #:lo12:a0
        ldr     x9, [x9]
        //  %r322 = load i32, i32* @a1

        adrp     x10, a1
        add     x10, x10, #:lo12:a1
        ldr     x10, [x10]
        //  %r323 = load i32, i32* @a2

        adrp     x11, a2
        add     x11, x11, #:lo12:a2
        ldr     x11, [x11]
        //  %r324 = load i32, i32* @a3

        adrp     x12, a3
        add     x12, x12, #:lo12:a3
        ldr     x12, [x12]
        //  %r325 = load i32, i32* @a4

        adrp     x13, a4
        add     x13, x13, #:lo12:a4
        ldr     x13, [x13]
        //  %r326 = load i32, i32* @a5

        adrp     x14, a5
        add     x14, x14, #:lo12:a5
        ldr     x14, [x14]
        //  %r327 = load i32, i32* @a6

        adrp     x15, a6
        add     x15, x15, #:lo12:a6
        ldr     x15, [x15]
        //  %r328 = load i32, i32* @a7

        add     x19, sp, #0
        ldr     x19, [x19]
        adrp     x19, a7
        add     x19, x19, #:lo12:a7
        add     x17, sp, #0
        ldr     x17, [x17]
        ldr     x16, [x17]
        add     x16, sp, #8
        str     x16, [x16]
        //  %r329 = call i32 @testParam8(i32 %r321, i32 %r322, i32 %r323, i32 %r324, i32 %r325, i32 %r326, i32 %r327, i32 %r328)

        mov     x0, x9
        mov     x1, x10
        mov     x2, x11
        mov     x3, x12
        mov     x4, x13
        mov     x5, x14
        mov     x6, x15
        add     x18, sp, #8
        ldr     x18, [x18]
        mov     x7, x18
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     testParam8
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        //  store i32 %r329, i32* @a0

        adrp     x10, a0
        add     x10, x10, #:lo12:a0
        str     x9, [x10]
        //  %r330 = load i32, i32* @a0

        adrp     x9, a0
        add     x9, x9, #:lo12:a0
        ldr     x9, [x9]
        //  call void @putint(i32 %r330)

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
        //  %r331 = load i32, i32* @a32

        adrp     x9, a32
        add     x9, x9, #:lo12:a32
        ldr     x19, [x9]
        add     x19, sp, #16
        str     x19, [x19]
        //  %r332 = load i32, i32* @a33

        adrp     x9, a33
        add     x9, x9, #:lo12:a33
        ldr     x16, [x9]
        add     x16, sp, #24
        str     x16, [x16]
        //  %r333 = load i32, i32* @a34

        adrp     x9, a34
        add     x9, x9, #:lo12:a34
        ldr     x17, [x9]
        add     x17, sp, #32
        str     x17, [x17]
        //  %r334 = load i32, i32* @a35

        adrp     x9, a35
        add     x9, x9, #:lo12:a35
        ldr     x18, [x9]
        add     x18, sp, #40
        str     x18, [x18]
        //  %r335 = load i32, i32* @a36

        adrp     x9, a36
        add     x9, x9, #:lo12:a36
        ldr     x19, [x9]
        add     x19, sp, #48
        str     x19, [x19]
        //  %r336 = load i32, i32* @a37

        adrp     x9, a37
        add     x9, x9, #:lo12:a37
        ldr     x16, [x9]
        add     x16, sp, #56
        str     x16, [x16]
        //  %r337 = load i32, i32* @a38

        adrp     x9, a38
        add     x9, x9, #:lo12:a38
        ldr     x17, [x9]
        add     x17, sp, #64
        str     x17, [x17]
        //  %r338 = load i32, i32* @a39

        add     x18, sp, #72
        ldr     x18, [x18]
        adrp     x18, a39
        add     x18, x18, #:lo12:a39
        add     x16, sp, #72
        ldr     x16, [x16]
        ldr     x19, [x16]
        add     x19, sp, #80
        str     x19, [x19]
        //  %r339 = load i32, i32* @a8

        add     x17, sp, #88
        ldr     x17, [x17]
        adrp     x17, a8
        add     x17, x17, #:lo12:a8
        add     x19, sp, #88
        ldr     x19, [x19]
        ldr     x18, [x19]
        add     x18, sp, #96
        str     x18, [x18]
        //  %r340 = load i32, i32* @a9

        add     x16, sp, #104
        ldr     x16, [x16]
        adrp     x16, a9
        add     x16, x16, #:lo12:a9
        add     x17, sp, #104
        ldr     x17, [x17]
        ldr     x15, [x17]
        //  %r341 = load i32, i32* @a10

        add     x18, sp, #112
        ldr     x18, [x18]
        adrp     x18, a10
        add     x18, x18, #:lo12:a10
        add     x19, sp, #112
        ldr     x19, [x19]
        ldr     x14, [x19]
        //  %r342 = load i32, i32* @a11

        add     x16, sp, #120
        ldr     x16, [x16]
        adrp     x16, a11
        add     x16, x16, #:lo12:a11
        add     x17, sp, #120
        ldr     x17, [x17]
        ldr     x13, [x17]
        //  %r343 = load i32, i32* @a12

        add     x18, sp, #128
        ldr     x18, [x18]
        adrp     x18, a12
        add     x18, x18, #:lo12:a12
        add     x19, sp, #128
        ldr     x19, [x19]
        ldr     x12, [x19]
        //  %r344 = load i32, i32* @a13

        add     x16, sp, #136
        ldr     x16, [x16]
        adrp     x16, a13
        add     x16, x16, #:lo12:a13
        add     x17, sp, #136
        ldr     x17, [x17]
        ldr     x11, [x17]
        //  %r345 = load i32, i32* @a14

        add     x18, sp, #144
        ldr     x18, [x18]
        adrp     x18, a14
        add     x18, x18, #:lo12:a14
        add     x19, sp, #144
        ldr     x19, [x19]
        ldr     x10, [x19]
        //  %r346 = load i32, i32* @a15

        add     x16, sp, #152
        ldr     x16, [x16]
        adrp     x16, a15
        add     x16, x16, #:lo12:a15
        add     x17, sp, #152
        ldr     x17, [x17]
        ldr     x9, [x17]
        //  %r347 = call i32 @testParam16(i32 %r331, i32 %r332, i32 %r333, i32 %r334, i32 %r335, i32 %r336, i32 %r337, i32 %r338, i32 %r339, i32 %r340, i32 %r341, i32 %r342, i32 %r343, i32 %r344, i32 %r345, i32 %r346)

        add     x18, sp, #16
        ldr     x18, [x18]
        mov     x0, x18
        add     x19, sp, #24
        ldr     x19, [x19]
        mov     x1, x19
        add     x16, sp, #32
        ldr     x16, [x16]
        mov     x2, x16
        add     x17, sp, #40
        ldr     x17, [x17]
        mov     x3, x17
        add     x18, sp, #48
        ldr     x18, [x18]
        mov     x4, x18
        add     x19, sp, #56
        ldr     x19, [x19]
        mov     x5, x19
        add     x16, sp, #64
        ldr     x16, [x16]
        mov     x6, x16
        add     x17, sp, #80
        ldr     x17, [x17]
        mov     x7, x17
        mov     x28, sp
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     sp, x28
        str     x9, [sp,#-80]
        str     x10, [sp,#-88]
        str     x11, [sp,#-96]
        str     x12, [sp,#-104]
        str     x13, [sp,#-112]
        str     x14, [sp,#-120]
        str     x15, [sp,#-128]
        add     x18, sp, #96
        ldr     x18, [x18]
        str     x18, [sp,#-136]
        sub     sp, sp, #136
        mov     x29, sp
        bl     testParam16
        add     sp, sp, #64
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        //  store i32 %r347, i32* @a0

        adrp     x10, a0
        add     x10, x10, #:lo12:a0
        str     x9, [x10]
        //  %r348 = load i32, i32* @a0

        adrp     x9, a0
        add     x9, x9, #:lo12:a0
        ldr     x9, [x9]
        //  call void @putint(i32 %r348)

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
        //  %r349 = load i32, i32* @a0

        adrp     x9, a0
        add     x9, x9, #:lo12:a0
        ldr     x10, [x9]
        //  %r350 = load i32, i32* @a1

        adrp     x9, a1
        add     x9, x9, #:lo12:a1
        ldr     x11, [x9]
        //  %r351 = load i32, i32* @a2

        adrp     x9, a2
        add     x9, x9, #:lo12:a2
        ldr     x12, [x9]
        //  %r352 = load i32, i32* @a3

        adrp     x9, a3
        add     x9, x9, #:lo12:a3
        ldr     x13, [x9]
        //  %r353 = load i32, i32* @a4

        adrp     x9, a4
        add     x9, x9, #:lo12:a4
        ldr     x14, [x9]
        //  %r354 = load i32, i32* @a5

        adrp     x9, a5
        add     x9, x9, #:lo12:a5
        ldr     x15, [x9]
        //  %r355 = load i32, i32* @a6

        adrp     x9, a6
        add     x9, x9, #:lo12:a6
        ldr     x19, [x9]
        add     x19, sp, #160
        str     x19, [x19]
        //  %r356 = load i32, i32* @a7

        add     x16, sp, #168
        ldr     x16, [x16]
        adrp     x16, a7
        add     x16, x16, #:lo12:a7
        add     x18, sp, #168
        ldr     x18, [x18]
        ldr     x17, [x18]
        add     x17, sp, #176
        str     x17, [x17]
        //  %r357 = load i32, i32* @a8

        add     x19, sp, #184
        ldr     x19, [x19]
        adrp     x19, a8
        add     x19, x19, #:lo12:a8
        add     x17, sp, #184
        ldr     x17, [x17]
        ldr     x16, [x17]
        add     x16, sp, #192
        str     x16, [x16]
        //  %r358 = load i32, i32* @a9

        add     x18, sp, #200
        ldr     x18, [x18]
        adrp     x18, a9
        add     x18, x18, #:lo12:a9
        add     x16, sp, #200
        ldr     x16, [x16]
        ldr     x19, [x16]
        add     x19, sp, #208
        str     x19, [x19]
        //  %r359 = load i32, i32* @a10

        add     x17, sp, #216
        ldr     x17, [x17]
        adrp     x17, a10
        add     x17, x17, #:lo12:a10
        add     x19, sp, #216
        ldr     x19, [x19]
        ldr     x18, [x19]
        add     x18, sp, #224
        str     x18, [x18]
        //  %r360 = load i32, i32* @a11

        add     x16, sp, #232
        ldr     x16, [x16]
        adrp     x16, a11
        add     x16, x16, #:lo12:a11
        add     x18, sp, #232
        ldr     x18, [x18]
        ldr     x17, [x18]
        add     x17, sp, #240
        str     x17, [x17]
        //  %r361 = load i32, i32* @a12

        add     x19, sp, #248
        ldr     x19, [x19]
        adrp     x19, a12
        add     x19, x19, #:lo12:a12
        add     x17, sp, #248
        ldr     x17, [x17]
        ldr     x16, [x17]
        add     x16, sp, #256
        str     x16, [x16]
        //  %r362 = load i32, i32* @a13

        add     x18, sp, #264
        ldr     x18, [x18]
        adrp     x18, a13
        add     x18, x18, #:lo12:a13
        add     x16, sp, #264
        ldr     x16, [x16]
        ldr     x19, [x16]
        add     x19, sp, #272
        str     x19, [x19]
        //  %r363 = load i32, i32* @a14

        add     x17, sp, #280
        ldr     x17, [x17]
        adrp     x17, a14
        add     x17, x17, #:lo12:a14
        add     x19, sp, #280
        ldr     x19, [x19]
        ldr     x18, [x19]
        add     x18, sp, #288
        str     x18, [x18]
        //  %r364 = load i32, i32* @a15

        add     x16, sp, #296
        ldr     x16, [x16]
        adrp     x16, a15
        add     x16, x16, #:lo12:a15
        add     x18, sp, #296
        ldr     x18, [x18]
        ldr     x17, [x18]
        add     x17, sp, #304
        str     x17, [x17]
        //  %r365 = load i32, i32* @a16

        add     x19, sp, #312
        ldr     x19, [x19]
        adrp     x19, a16
        add     x19, x19, #:lo12:a16
        add     x17, sp, #312
        ldr     x17, [x17]
        ldr     x16, [x17]
        add     x16, sp, #320
        str     x16, [x16]
        //  %r366 = load i32, i32* @a17

        add     x18, sp, #328
        ldr     x18, [x18]
        adrp     x18, a17
        add     x18, x18, #:lo12:a17
        add     x16, sp, #328
        ldr     x16, [x16]
        ldr     x19, [x16]
        add     x17, sp, #56
        ldr     x17, [x17]
        add     x19, sp, #17
        str     x19, [x19]
        //  %r367 = load i32, i32* @a18

        add     x18, sp, #344
        ldr     x18, [x18]
        adrp     x18, a18
        add     x18, x18, #:lo12:a18
        add     x16, sp, #344
        ldr     x16, [x16]
        ldr     x19, [x16]
        add     x19, sp, #13
        str     x19, [x19]
        //  %r368 = load i32, i32* @a19

        add     x17, sp, #360
        ldr     x17, [x17]
        adrp     x17, a19
        add     x17, x17, #:lo12:a19
        add     x19, sp, #360
        ldr     x19, [x19]
        ldr     x18, [x19]
        add     x16, sp, #368
        ldr     x16, [x16]
        add     x18, sp, #16
        str     x18, [x18]
        //  %r369 = load i32, i32* @a20

        add     x17, sp, #376
        ldr     x17, [x17]
        adrp     x17, a20
        add     x17, x17, #:lo12:a20
        add     x19, sp, #376
        ldr     x19, [x19]
        ldr     x18, [x19]
        add     x18, sp, #384
        str     x18, [x18]
        //  %r370 = load i32, i32* @a21

        add     x16, sp, #392
        ldr     x16, [x16]
        adrp     x16, a21
        add     x16, x16, #:lo12:a21
        add     x18, sp, #392
        ldr     x18, [x18]
        ldr     x17, [x18]
        add     x17, sp, #400
        str     x17, [x17]
        //  %r371 = load i32, i32* @a22

        add     x19, sp, #408
        ldr     x19, [x19]
        adrp     x19, a22
        add     x19, x19, #:lo12:a22
        add     x17, sp, #408
        ldr     x17, [x17]
        ldr     x16, [x17]
        add     x16, sp, #9
        str     x16, [x16]
        //  %r372 = load i32, i32* @a23

        add     x18, sp, #424
        ldr     x18, [x18]
        adrp     x18, a23
        add     x18, x18, #:lo12:a23
        add     x16, sp, #424
        ldr     x16, [x16]
        ldr     x19, [x16]
        add     x19, sp, #9
        str     x19, [x19]
        //  %r373 = load i32, i32* @a24

        add     x17, sp, #440
        ldr     x17, [x17]
        adrp     x17, a24
        add     x17, x17, #:lo12:a24
        add     x19, sp, #440
        ldr     x19, [x19]
        ldr     x18, [x19]
        add     x18, sp, #10
        str     x18, [x18]
        //  %r374 = load i32, i32* @a25

        add     x16, sp, #456
        ldr     x16, [x16]
        adrp     x16, a25
        add     x16, x16, #:lo12:a25
        add     x18, sp, #456
        ldr     x18, [x18]
        ldr     x17, [x18]
        add     x17, sp, #9
        str     x17, [x17]
        //  %r375 = load i32, i32* @a26

        add     x19, sp, #472
        ldr     x19, [x19]
        adrp     x19, a26
        add     x19, x19, #:lo12:a26
        add     x17, sp, #472
        ldr     x17, [x17]
        ldr     x16, [x17]
        add     x16, sp, #10
        str     x16, [x16]
        //  %r376 = load i32, i32* @a27

        add     x18, sp, #488
        ldr     x18, [x18]
        adrp     x18, a27
        add     x18, x18, #:lo12:a27
        add     x16, sp, #488
        ldr     x16, [x16]
        ldr     x19, [x16]
        add     x19, sp, #10
        str     x19, [x19]
        //  %r377 = load i32, i32* @a28

        add     x17, sp, #504
        ldr     x17, [x17]
        adrp     x17, a28
        add     x17, x17, #:lo12:a28
        add     x19, sp, #504
        ldr     x19, [x19]
        ldr     x18, [x19]
        add     x16, sp, #72
        ldr     x16, [x16]
        add     x18, sp, #16
        str     x18, [x18]
        //  %r378 = load i32, i32* @a29

        add     x17, sp, #520
        ldr     x17, [x17]
        adrp     x17, a29
        add     x17, x17, #:lo12:a29
        add     x19, sp, #520
        ldr     x19, [x19]
        ldr     x18, [x19]
        add     x18, sp, #9
        str     x18, [x18]
        //  %r379 = load i32, i32* @a30

        add     x16, sp, #536
        ldr     x16, [x16]
        adrp     x16, a30
        add     x16, x16, #:lo12:a30
        add     x18, sp, #536
        ldr     x18, [x18]
        ldr     x17, [x18]
        add     x19, sp, #392
        ldr     x19, [x19]
        add     x17, sp, #19
        str     x17, [x17]
        //  %r380 = load i32, i32* @a31

        add     x16, sp, #552
        ldr     x16, [x16]
        adrp     x16, a31
        add     x16, x16, #:lo12:a31
        add     x17, sp, #552
        ldr     x17, [x17]
        ldr     x9, [x17]
        //  %r381 = call i32 @testParam32(i32 %r349, i32 %r350, i32 %r351, i32 %r352, i32 %r353, i32 %r354, i32 %r355, i32 %r356, i32 %r357, i32 %r358, i32 %r359, i32 %r360, i32 %r361, i32 %r362, i32 %r363, i32 %r364, i32 %r365, i32 %r366, i32 %r367, i32 %r368, i32 %r369, i32 %r370, i32 %r371, i32 %r372, i32 %r373, i32 %r374, i32 %r375, i32 %r376, i32 %r377, i32 %r378, i32 %r379, i32 %r380)

        mov     x0, x10
        mov     x1, x11
        mov     x2, x12
        mov     x3, x13
        mov     x4, x14
        mov     x5, x15
        add     x18, sp, #160
        ldr     x18, [x18]
        mov     x6, x18
        add     x19, sp, #176
        ldr     x19, [x19]
        mov     x7, x19
        mov     x28, sp
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     sp, x28
        str     x9, [sp,#-80]
        add     x16, sp, #544
        ldr     x16, [x16]
        str     x16, [sp,#-88]
        add     x17, sp, #528
        ldr     x17, [x17]
        str     x17, [sp,#-96]
        add     x18, sp, #512
        ldr     x18, [x18]
        str     x18, [sp,#-104]
        add     x19, sp, #496
        ldr     x19, [x19]
        str     x19, [sp,#-112]
        add     x16, sp, #480
        ldr     x16, [x16]
        str     x16, [sp,#-120]
        add     x17, sp, #464
        ldr     x17, [x17]
        str     x17, [sp,#-128]
        add     x18, sp, #448
        ldr     x18, [x18]
        str     x18, [sp,#-136]
        add     x19, sp, #432
        ldr     x19, [x19]
        str     x19, [sp,#-144]
        add     x16, sp, #416
        ldr     x16, [x16]
        str     x16, [sp,#-152]
        add     x17, sp, #400
        ldr     x17, [x17]
        str     x17, [sp,#-160]
        add     x18, sp, #384
        ldr     x18, [x18]
        str     x18, [sp,#-168]
        add     x19, sp, #368
        ldr     x19, [x19]
        str     x19, [sp,#-176]
        add     x16, sp, #352
        ldr     x16, [x16]
        str     x16, [sp,#-184]
        add     x17, sp, #336
        ldr     x17, [x17]
        str     x17, [sp,#-192]
        add     x18, sp, #320
        ldr     x18, [x18]
        str     x18, [sp,#-200]
        add     x19, sp, #304
        ldr     x19, [x19]
        str     x19, [sp,#-208]
        add     x16, sp, #288
        ldr     x16, [x16]
        str     x16, [sp,#-216]
        add     x17, sp, #272
        ldr     x17, [x17]
        str     x17, [sp,#-224]
        add     x18, sp, #256
        ldr     x18, [x18]
        str     x18, [sp,#-232]
        add     x19, sp, #240
        ldr     x19, [x19]
        str     x19, [sp,#-240]
        add     x16, sp, #224
        ldr     x16, [x16]
        str     x16, [sp,#-248]
        add     x17, sp, #208
        ldr     x17, [x17]
        str     x17, [sp,#-256]
        mov     x27, #-264
        add     x18, sp, #192
        ldr     x18, [x18]
        str     x18, [sp,x27]
        sub     sp, sp, #264
        mov     x29, sp
        bl     testParam32
        add     sp, sp, #192
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        //  store i32 %r381, i32* @a0

        adrp     x10, a0
        add     x10, x10, #:lo12:a0
        str     x9, [x10]
        //  %r382 = load i32, i32* @a0

        adrp     x9, a0
        add     x9, x9, #:lo12:a0
        ldr     x9, [x9]
        //  call void @putint(i32 %r382)

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
        //  ret i32 0

        mov     x9, #0
        mov     x0, x9
        mov     sp, x29
        ret
