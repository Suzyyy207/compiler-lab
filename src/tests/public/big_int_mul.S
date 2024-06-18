.section .data
.global    len
len:
        .quad   20
.section .text
.global getch
.global getint
.global putch
.global putint
.global putarray
.global _sysy_starttime
.global _sysy_stoptime
.global main
main:

        //153:x29,#-1040

        //151:x29,#-520

        //152:x29,#-720

        //126:x29,#-320

        //105:x29,#-160

        //bb1:

bb1:

        //  %r261 = add i32 0, 0

        mov     x16, #1040
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
        //  %r262 = add i32 0, 0

        //  %r263 = add i32 0, 0

        //  %r264 = add i32 0, 0

        //  %r265 = add i32 0, 0

        //  %r266 = add i32 0, 0

        //  %r105 = alloca [ 20 x i32 ]

        //  %r106 = getelementptr [20 x i32 ], [20 x i32 ]* %r105, i32 0, i32 0

        mov     x10, #8
        mov     x9, #0
        mul     x10, x10, x9
        add     x9, x29, #-160
        add     x10, x9, x10
        //  store i32 1, i32* %r106

        mov     x9, #1
        str     x9, [x10]
        //  %r107 = getelementptr [20 x i32 ], [20 x i32 ]* %r105, i32 0, i32 1

        mov     x10, #8
        mov     x9, #1
        mul     x10, x10, x9
        add     x9, x29, #-160
        add     x10, x9, x10
        //  store i32 2, i32* %r107

        mov     x9, #2
        str     x9, [x10]
        //  %r108 = getelementptr [20 x i32 ], [20 x i32 ]* %r105, i32 0, i32 2

        mov     x10, #8
        mov     x9, #2
        mul     x10, x10, x9
        add     x9, x29, #-160
        add     x10, x9, x10
        //  store i32 3, i32* %r108

        mov     x9, #3
        str     x9, [x10]
        //  %r109 = getelementptr [20 x i32 ], [20 x i32 ]* %r105, i32 0, i32 3

        mov     x10, #8
        mov     x9, #3
        mul     x10, x10, x9
        add     x9, x29, #-160
        add     x10, x9, x10
        //  store i32 4, i32* %r109

        mov     x9, #4
        str     x9, [x10]
        //  %r110 = getelementptr [20 x i32 ], [20 x i32 ]* %r105, i32 0, i32 4

        mov     x10, #8
        mov     x9, #4
        mul     x10, x10, x9
        add     x9, x29, #-160
        add     x10, x9, x10
        //  store i32 5, i32* %r110

        mov     x9, #5
        str     x9, [x10]
        //  %r111 = getelementptr [20 x i32 ], [20 x i32 ]* %r105, i32 0, i32 5

        mov     x10, #8
        mov     x9, #5
        mul     x10, x10, x9
        add     x9, x29, #-160
        add     x10, x9, x10
        //  store i32 6, i32* %r111

        mov     x9, #6
        str     x9, [x10]
        //  %r112 = getelementptr [20 x i32 ], [20 x i32 ]* %r105, i32 0, i32 6

        mov     x10, #8
        mov     x9, #6
        mul     x10, x10, x9
        add     x9, x29, #-160
        add     x10, x9, x10
        //  store i32 7, i32* %r112

        mov     x9, #7
        str     x9, [x10]
        //  %r113 = getelementptr [20 x i32 ], [20 x i32 ]* %r105, i32 0, i32 7

        mov     x10, #8
        mov     x9, #7
        mul     x10, x10, x9
        add     x9, x29, #-160
        add     x9, x9, x10
        //  store i32 8, i32* %r113

        mov     x10, #8
        str     x10, [x9]
        //  %r114 = getelementptr [20 x i32 ], [20 x i32 ]* %r105, i32 0, i32 8

        mov     x10, #8
        mov     x9, #8
        mul     x10, x10, x9
        add     x9, x29, #-160
        add     x10, x9, x10
        //  store i32 9, i32* %r114

        mov     x9, #9
        str     x9, [x10]
        //  %r115 = getelementptr [20 x i32 ], [20 x i32 ]* %r105, i32 0, i32 9

        mov     x10, #8
        mov     x9, #9
        mul     x9, x10, x9
        add     x10, x29, #-160
        add     x9, x10, x9
        //  store i32 0, i32* %r115

        mov     x10, #0
        str     x10, [x9]
        //  %r116 = getelementptr [20 x i32 ], [20 x i32 ]* %r105, i32 0, i32 10

        mov     x9, #8
        mov     x10, #10
        mul     x9, x9, x10
        add     x10, x29, #-160
        add     x9, x10, x9
        //  store i32 1, i32* %r116

        mov     x10, #1
        str     x10, [x9]
        //  %r117 = getelementptr [20 x i32 ], [20 x i32 ]* %r105, i32 0, i32 11

        mov     x9, #8
        mov     x10, #11
        mul     x9, x9, x10
        add     x10, x29, #-160
        add     x9, x10, x9
        //  store i32 2, i32* %r117

        mov     x10, #2
        str     x10, [x9]
        //  %r118 = getelementptr [20 x i32 ], [20 x i32 ]* %r105, i32 0, i32 12

        mov     x9, #8
        mov     x10, #12
        mul     x9, x9, x10
        add     x10, x29, #-160
        add     x9, x10, x9
        //  store i32 3, i32* %r118

        mov     x10, #3
        str     x10, [x9]
        //  %r119 = getelementptr [20 x i32 ], [20 x i32 ]* %r105, i32 0, i32 13

        mov     x10, #8
        mov     x9, #13
        mul     x10, x10, x9
        add     x9, x29, #-160
        add     x10, x9, x10
        //  store i32 4, i32* %r119

        mov     x9, #4
        str     x9, [x10]
        //  %r120 = getelementptr [20 x i32 ], [20 x i32 ]* %r105, i32 0, i32 14

        mov     x10, #8
        mov     x9, #14
        mul     x10, x10, x9
        add     x9, x29, #-160
        add     x10, x9, x10
        //  store i32 5, i32* %r120

        mov     x9, #5
        str     x9, [x10]
        //  %r121 = getelementptr [20 x i32 ], [20 x i32 ]* %r105, i32 0, i32 15

        mov     x10, #8
        mov     x9, #15
        mul     x10, x10, x9
        add     x9, x29, #-160
        add     x10, x9, x10
        //  store i32 6, i32* %r121

        mov     x9, #6
        str     x9, [x10]
        //  %r122 = getelementptr [20 x i32 ], [20 x i32 ]* %r105, i32 0, i32 16

        mov     x10, #8
        mov     x9, #16
        mul     x9, x10, x9
        add     x10, x29, #-160
        add     x10, x10, x9
        //  store i32 7, i32* %r122

        mov     x9, #7
        str     x9, [x10]
        //  %r123 = getelementptr [20 x i32 ], [20 x i32 ]* %r105, i32 0, i32 17

        mov     x10, #8
        mov     x9, #17
        mul     x9, x10, x9
        add     x10, x29, #-160
        add     x10, x10, x9
        //  store i32 8, i32* %r123

        mov     x9, #8
        str     x9, [x10]
        //  %r124 = getelementptr [20 x i32 ], [20 x i32 ]* %r105, i32 0, i32 18

        mov     x9, #8
        mov     x10, #18
        mul     x10, x9, x10
        add     x9, x29, #-160
        add     x10, x9, x10
        //  store i32 9, i32* %r124

        mov     x9, #9
        str     x9, [x10]
        //  %r125 = getelementptr [20 x i32 ], [20 x i32 ]* %r105, i32 0, i32 19

        mov     x10, #8
        mov     x9, #19
        mul     x9, x10, x9
        add     x10, x29, #-160
        add     x10, x10, x9
        //  store i32 0, i32* %r125

        mov     x9, #0
        str     x9, [x10]
        //  %r126 = alloca [ 20 x i32 ]

        //  %r127 = getelementptr [20 x i32 ], [20 x i32 ]* %r126, i32 0, i32 0

        mov     x9, #8
        mov     x10, #0
        mul     x10, x9, x10
        add     x9, x29, #-320
        add     x10, x9, x10
        //  store i32 2, i32* %r127

        mov     x9, #2
        str     x9, [x10]
        //  %r128 = getelementptr [20 x i32 ], [20 x i32 ]* %r126, i32 0, i32 1

        mov     x10, #8
        mov     x9, #1
        mul     x10, x10, x9
        add     x9, x29, #-320
        add     x10, x9, x10
        //  store i32 3, i32* %r128

        mov     x9, #3
        str     x9, [x10]
        //  %r129 = getelementptr [20 x i32 ], [20 x i32 ]* %r126, i32 0, i32 2

        mov     x10, #8
        mov     x9, #2
        mul     x10, x10, x9
        add     x9, x29, #-320
        add     x10, x9, x10
        //  store i32 4, i32* %r129

        mov     x9, #4
        str     x9, [x10]
        //  %r130 = getelementptr [20 x i32 ], [20 x i32 ]* %r126, i32 0, i32 3

        mov     x10, #8
        mov     x9, #3
        mul     x10, x10, x9
        add     x9, x29, #-320
        add     x10, x9, x10
        //  store i32 2, i32* %r130

        mov     x9, #2
        str     x9, [x10]
        //  %r131 = getelementptr [20 x i32 ], [20 x i32 ]* %r126, i32 0, i32 4

        mov     x9, #8
        mov     x10, #4
        mul     x10, x9, x10
        add     x9, x29, #-320
        add     x10, x9, x10
        //  store i32 5, i32* %r131

        mov     x9, #5
        str     x9, [x10]
        //  %r132 = getelementptr [20 x i32 ], [20 x i32 ]* %r126, i32 0, i32 5

        mov     x10, #8
        mov     x9, #5
        mul     x10, x10, x9
        add     x9, x29, #-320
        add     x10, x9, x10
        //  store i32 7, i32* %r132

        mov     x9, #7
        str     x9, [x10]
        //  %r133 = getelementptr [20 x i32 ], [20 x i32 ]* %r126, i32 0, i32 6

        mov     x9, #8
        mov     x10, #6
        mul     x9, x9, x10
        add     x10, x29, #-320
        add     x9, x10, x9
        //  store i32 9, i32* %r133

        mov     x10, #9
        str     x10, [x9]
        //  %r134 = getelementptr [20 x i32 ], [20 x i32 ]* %r126, i32 0, i32 7

        mov     x9, #8
        mov     x10, #7
        mul     x9, x9, x10
        add     x10, x29, #-320
        add     x9, x10, x9
        //  store i32 9, i32* %r134

        mov     x10, #9
        str     x10, [x9]
        //  %r135 = getelementptr [20 x i32 ], [20 x i32 ]* %r126, i32 0, i32 8

        mov     x9, #8
        mov     x10, #8
        mul     x9, x9, x10
        add     x10, x29, #-320
        add     x9, x10, x9
        //  store i32 0, i32* %r135

        mov     x10, #0
        str     x10, [x9]
        //  %r136 = getelementptr [20 x i32 ], [20 x i32 ]* %r126, i32 0, i32 9

        mov     x9, #8
        mov     x10, #9
        mul     x9, x9, x10
        add     x10, x29, #-320
        add     x9, x10, x9
        //  store i32 1, i32* %r136

        mov     x10, #1
        str     x10, [x9]
        //  %r137 = getelementptr [20 x i32 ], [20 x i32 ]* %r126, i32 0, i32 10

        mov     x9, #8
        mov     x10, #10
        mul     x9, x9, x10
        add     x10, x29, #-320
        add     x9, x10, x9
        //  store i32 9, i32* %r137

        mov     x10, #9
        str     x10, [x9]
        //  %r138 = getelementptr [20 x i32 ], [20 x i32 ]* %r126, i32 0, i32 11

        mov     x9, #8
        mov     x10, #11
        mul     x9, x9, x10
        add     x10, x29, #-320
        add     x9, x10, x9
        //  store i32 8, i32* %r138

        mov     x10, #8
        str     x10, [x9]
        //  %r139 = getelementptr [20 x i32 ], [20 x i32 ]* %r126, i32 0, i32 12

        mov     x9, #8
        mov     x10, #12
        mul     x9, x9, x10
        add     x10, x29, #-320
        add     x9, x10, x9
        //  store i32 7, i32* %r139

        mov     x10, #7
        str     x10, [x9]
        //  %r140 = getelementptr [20 x i32 ], [20 x i32 ]* %r126, i32 0, i32 13

        mov     x9, #8
        mov     x10, #13
        mul     x9, x9, x10
        add     x10, x29, #-320
        add     x9, x10, x9
        //  store i32 6, i32* %r140

        mov     x10, #6
        str     x10, [x9]
        //  %r141 = getelementptr [20 x i32 ], [20 x i32 ]* %r126, i32 0, i32 14

        mov     x9, #8
        mov     x10, #14
        mul     x9, x9, x10
        add     x10, x29, #-320
        add     x9, x10, x9
        //  store i32 4, i32* %r141

        mov     x10, #4
        str     x10, [x9]
        //  %r142 = getelementptr [20 x i32 ], [20 x i32 ]* %r126, i32 0, i32 15

        mov     x9, #8
        mov     x10, #15
        mul     x9, x9, x10
        add     x10, x29, #-320
        add     x9, x10, x9
        //  store i32 3, i32* %r142

        mov     x10, #3
        str     x10, [x9]
        //  %r143 = getelementptr [20 x i32 ], [20 x i32 ]* %r126, i32 0, i32 16

        mov     x9, #8
        mov     x10, #16
        mul     x9, x9, x10
        add     x10, x29, #-320
        add     x9, x10, x9
        //  store i32 2, i32* %r143

        mov     x10, #2
        str     x10, [x9]
        //  %r144 = getelementptr [20 x i32 ], [20 x i32 ]* %r126, i32 0, i32 17

        mov     x9, #8
        mov     x10, #17
        mul     x9, x9, x10
        add     x10, x29, #-320
        add     x9, x10, x9
        //  store i32 1, i32* %r144

        mov     x10, #1
        str     x10, [x9]
        //  %r145 = getelementptr [20 x i32 ], [20 x i32 ]* %r126, i32 0, i32 18

        mov     x9, #8
        mov     x10, #18
        mul     x9, x9, x10
        add     x10, x29, #-320
        add     x9, x10, x9
        //  store i32 2, i32* %r145

        mov     x10, #2
        str     x10, [x9]
        //  %r146 = getelementptr [20 x i32 ], [20 x i32 ]* %r126, i32 0, i32 19

        mov     x9, #8
        mov     x10, #19
        mul     x9, x9, x10
        add     x10, x29, #-320
        add     x9, x10, x9
        //  store i32 2, i32* %r146

        mov     x10, #2
        str     x10, [x9]
        //  %r148 = load i32, i32* @len

        adrp     x9, len
        add     x9, x9, #:lo12:len
        ldr     x9, [x9]
        //  %r267 = add i32 0, 0

        //  %r268 = add i32 %r148, 0

        mov     x12, x9
        //  %r150 = load i32, i32* @len

        adrp     x9, len
        add     x9, x9, #:lo12:len
        ldr     x9, [x9]
        //  %r269 = add i32 0, 0

        //  %r270 = add i32 %r150, 0

        mov     x11, x9
        //  %r151 = alloca [ 25 x i32 ]

        //  %r152 = alloca [ 25 x i32 ]

        //  %r153 = alloca [ 40 x i32 ]

        //  %r154 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 0

        mov     x9, #8
        mov     x10, #0
        mul     x9, x9, x10
        add     x10, x29, #-1040
        add     x9, x10, x9
        //  store i32 0, i32* %r154

        mov     x10, #0
        str     x10, [x9]
        //  %r271 = add i32 0, 0

        mov     x9, #0
        mov     x13, x9
        //  br label %bb2


        b     bb2
        //bb2:

bb2:

        //  %r272 = phi i32 [ %r271, %bb1 ], [ %r327, %bb3 ]

        //  %r273 = icmp slt i32 %r272, %r268

        cmp     x13, x12
        //  br i1 %r273, label %bb3, label %bb4


        b.lt     bb3
        b     bb4
        //bb3:

bb3:

        //  %r159 = getelementptr [20 x i32 ], [20 x i32 ]* %r105, i32 0, i32 %r272

        mov     x9, #8
        mul     x9, x9, x13
        add     x10, x29, #-160
        add     x9, x10, x9
        //  %r160 = load i32, i32* %r159

        ldr     x10, [x9]
        //  %r162 = getelementptr [25 x i32 ], [25 x i32 ]* %r151, i32 0, i32 %r272

        mov     x9, #8
        mul     x9, x9, x13
        add     x14, x29, #-520
        add     x9, x14, x9
        //  store i32 %r160, i32* %r162

        str     x10, [x9]
        //  %r326 = add i32 %r272, 1

        mov     x9, #1
        add     x9, x13, x9
        //  %r327 = add i32 %r326, 0

        mov     x9, x9
        mov     x13, x9
        //  br label %bb2


        b     bb2
        //bb4:

bb4:

        //  %r274 = add i32 0, 0

        mov     x9, #0
        mov     x9, x9
        //  br label %bb5


        b     bb5
        //bb5:

bb5:

        //  %r275 = phi i32 [ %r274, %bb4 ], [ %r325, %bb6 ]

        //  %r276 = icmp slt i32 %r275, %r270

        cmp     x9, x11
        //  br i1 %r276, label %bb6, label %bb7


        b.lt     bb6
        b     bb7
        //bb6:

bb6:

        //  %r169 = getelementptr [20 x i32 ], [20 x i32 ]* %r126, i32 0, i32 %r275

        mov     x10, #8
        mul     x10, x10, x9
        add     x13, x29, #-320
        add     x10, x13, x10
        //  %r170 = load i32, i32* %r169

        ldr     x13, [x10]
        //  %r172 = getelementptr [25 x i32 ], [25 x i32 ]* %r152, i32 0, i32 %r275

        mov     x10, #8
        mul     x10, x10, x9
        add     x14, x29, #-720
        add     x10, x14, x10
        //  store i32 %r170, i32* %r172

        str     x13, [x10]
        //  %r324 = add i32 %r275, 1

        mov     x10, #1
        add     x9, x9, x10
        //  %r325 = add i32 %r324, 0

        mov     x9, x9
        mov     x9, x9
        //  br label %bb5


        b     bb5
        //bb7:

bb7:

        //  %r277 = add i32 %r268, %r270

        add     x9, x12, x11
        //  %r278 = sub i32 %r277, 1

        mov     x10, #1
        sub     x9, x9, x10
        //  %r279 = add i32 %r278, 0

        mov     x13, x9
        //  %r280 = add i32 0, 0

        mov     x9, #0
        mov     x9, x9
        //  br label %bb8


        b     bb8
        //bb8:

bb8:

        //  %r281 = phi i32 [ %r280, %bb7 ], [ %r323, %bb9 ]

        //  %r282 = icmp sle i32 %r281, %r279

        cmp     x9, x13
        //  br i1 %r282, label %bb9, label %bb10


        b.le     bb9
        b     bb10
        //bb9:

bb9:

        //  %r183 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 %r281

        mov     x10, #8
        mul     x10, x10, x9
        add     x14, x29, #-1040
        add     x10, x14, x10
        //  store i32 0, i32* %r183

        mov     x14, #0
        str     x14, [x10]
        //  %r322 = add i32 %r281, 1

        mov     x10, #1
        add     x9, x9, x10
        //  %r323 = add i32 %r322, 0

        mov     x9, x9
        mov     x9, x9
        //  br label %bb8


        b     bb8
        //bb10:

bb10:

        //  %r283 = add i32 0, 0

        //  %r284 = sub i32 %r270, 1

        mov     x9, #1
        sub     x9, x11, x9
        //  %r285 = add i32 %r284, 0

        mov     x9, x9
        mov     x10, x13
        mov     x9, x9
        //  br label %bb11


        b     bb11
        //bb11:

bb11:

        //  %r286 = phi i32 [ %r279, %bb10 ], [ %r307, %bb16 ]

        //  %r287 = phi i32 [ %r285, %bb10 ], [ %r309, %bb16 ]

        //  %r288 = sub i32 0, 1

        mov     x13, #0
        mov     x14, #1
        sub     x13, x13, x14
        //  %r289 = icmp sgt i32 %r287, %r288

        cmp     x9, x13
        //  br i1 %r289, label %bb12, label %bb13


        b.gt     bb12
        b     bb13
        //bb12:

bb12:

        //  %r192 = getelementptr [25 x i32 ], [25 x i32 ]* %r152, i32 0, i32 %r287

        mov     x13, #8
        mul     x13, x13, x9
        add     x14, x29, #-720
        add     x13, x14, x13
        //  %r193 = load i32, i32* %r192

        ldr     x13, [x13]
        //  %r298 = add i32 %r193, 0

        mov     x15, x13
        //  %r299 = sub i32 %r268, 1

        mov     x13, #1
        sub     x13, x12, x13
        //  %r300 = add i32 %r299, 0

        mov     x13, x13
        str     x16, [sp, #-8]!
        mov     x17, x10
        str     x17, [sp, #-8]!
        str     x18, [sp, #-8]!
        mov     x19, x13
        str     x19, [sp, #-8]!
        //  br label %bb14


        b     bb14
        //bb14:

bb14:

        //  %r301 = phi i32 [ %r286, %bb12 ], [ %r317, %bb19 ]

        //  %r302 = phi i32 [ %r300, %bb12 ], [ %r315, %bb19 ]

        //  %r303 = sub i32 0, 1

        mov     x10, #0
        str     x16, [sp, #-8]!
        mov     x17, #1
        str     x17, [sp, #-8]!
        sub     x10, x10, x17
        //  %r304 = icmp sgt i32 %r302, %r303

        ldr     x18, [sp], #8
        cmp     x18, x10
        //  br i1 %r304, label %bb15, label %bb16


        b.gt     bb15
        b     bb16
        //bb15:

bb15:

        //  %r200 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 %r301

        mov     x10, #8
        ldr     x19, [sp], #8
        mul     x10, x10, x19
        str     x16, [sp, #-8]!
        add     x17, x29, #-1040
        str     x17, [sp, #-8]!
        add     x10, x17, x10
        //  %r201 = load i32, i32* %r200

        ldr     x10, [x10]
        //  %r204 = getelementptr [25 x i32 ], [25 x i32 ]* %r151, i32 0, i32 %r302

        str     x18, [sp, #-8]!
        mov     x19, #8
        str     x19, [sp, #-8]!
        ldr     x16, [sp], #8
        str     x17, [sp, #-8]!
        mul     x18, x19, x16
        str     x18, [sp, #-8]!
        str     x19, [sp, #-8]!
        add     x16, x29, #-520
        str     x16, [sp, #-8]!
        add     x13, x16, x18
        //  %r205 = load i32, i32* %r204

        ldr     x13, [x13]
        //  %r310 = mul i32 %r298, %r205

        mul     x13, x15, x13
        //  %r311 = add i32 %r201, %r310

        add     x10, x10, x13
        //  %r312 = add i32 %r311, 0

        str     x17, [sp, #-8]!
        mov     x18, x10
        str     x18, [sp, #-8]!
        //  %r313 = icmp sge i32 %r312, 10

        str     x19, [sp, #-8]!
        mov     x16, #10
        str     x16, [sp, #-8]!
        ldr     x17, [sp], #8
        cmp     x17, x16
        //  br i1 %r313, label %bb17, label %bb18


        b.ge     bb17
        b     bb18
        //bb17:

bb17:

        //  %r212 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 %r301

        str     x18, [sp, #-8]!
        mov     x19, #8
        str     x19, [sp, #-8]!
        ldr     x16, [sp], #8
        str     x17, [sp, #-8]!
        mul     x18, x19, x16
        str     x18, [sp, #-8]!
        str     x19, [sp, #-8]!
        add     x16, x29, #-1040
        str     x16, [sp, #-8]!
        add     x10, x16, x18
        //  store i32 %r312, i32* %r212

        ldr     x17, [sp], #8
        str     x17, [x10]
        //  %r318 = sub i32 %r301, 1

        str     x18, [sp, #-8]!
        mov     x19, #1
        str     x19, [sp, #-8]!
        ldr     x16, [sp], #8
        str     x17, [sp, #-8]!
        sub     x18, x16, x19
        str     x18, [sp, #-8]!
        //  %r319 = add i32 %r318, 0

        ldr     x19, [sp], #8
        mov     x13, x19
        //  %r217 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 %r319

        str     x16, [sp, #-8]!
        mov     x17, #8
        str     x17, [sp, #-8]!
        str     x18, [sp, #-8]!
        mul     x19, x17, x13
        str     x19, [sp, #-8]!
        str     x16, [sp, #-8]!
        add     x17, x29, #-1040
        str     x17, [sp, #-8]!
        add     x10, x17, x19
        //  %r218 = load i32, i32* %r217

        ldr     x10, [x10]
        //  %r320 = sdiv i32 %r312, 10

        str     x18, [sp, #-8]!
        mov     x19, #10
        str     x19, [sp, #-8]!
        ldr     x16, [sp], #8
        sdiv     x14, x16, x19
        //  %r321 = add i32 %r218, %r320

        str     x17, [sp, #-8]!
        add     x18, x10, x14
        str     x18, [sp, #-8]!
        //  %r223 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 %r319

        str     x19, [sp, #-8]!
        mov     x16, #8
        str     x16, [sp, #-8]!
        str     x17, [sp, #-8]!
        mul     x18, x16, x13
        str     x18, [sp, #-8]!
        str     x19, [sp, #-8]!
        add     x16, x29, #-1040
        str     x16, [sp, #-8]!
        add     x10, x16, x18
        //  store i32 %r321, i32* %r223

        ldr     x17, [sp], #8
        str     x17, [x10]
        //  br label %bb19


        b     bb19
        //bb18:

bb18:

        //  %r226 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 %r301

        str     x18, [sp, #-8]!
        mov     x19, #8
        str     x19, [sp, #-8]!
        ldr     x16, [sp], #8
        str     x17, [sp, #-8]!
        mul     x18, x19, x16
        str     x18, [sp, #-8]!
        str     x19, [sp, #-8]!
        add     x16, x29, #-1040
        str     x16, [sp, #-8]!
        add     x10, x16, x18
        //  store i32 %r312, i32* %r226

        ldr     x17, [sp], #8
        str     x17, [x10]
        //  br label %bb19


        b     bb19
        //bb19:

bb19:

        //  %r314 = sub i32 %r302, 1

        mov     x10, #1
        ldr     x18, [sp], #8
        sub     x10, x18, x10
        //  %r315 = add i32 %r314, 0

        mov     x10, x10
        //  %r316 = sub i32 %r301, 1

        mov     x13, #1
        ldr     x19, [sp], #8
        sub     x13, x19, x13
        //  %r317 = add i32 %r316, 0

        mov     x13, x13
        mov     x17, x13
        mov     x19, x10
        //  br label %bb14


        b     bb14
        //bb16:

bb16:

        //  %r305 = add i32 %r301, %r268

        ldr     x16, [sp], #8
        add     x10, x16, x12
        //  %r306 = sub i32 %r305, 1

        mov     x13, #1
        sub     x10, x10, x13
        //  %r307 = add i32 %r306, 0

        mov     x10, x10
        //  %r308 = sub i32 %r287, 1

        mov     x13, #1
        sub     x9, x9, x13
        //  %r309 = add i32 %r308, 0

        mov     x9, x9
        mov     x10, x10
        mov     x9, x9
        //  br label %bb11


        b     bb11
        //bb13:

bb13:

        //  %r237 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 0

        mov     x9, #8
        mov     x10, #0
        mul     x9, x9, x10
        add     x10, x29, #-1040
        add     x9, x10, x9
        //  %r238 = load i32, i32* %r237

        ldr     x9, [x9]
        //  %r290 = icmp ne i32 %r238, 0

        mov     x10, #0
        cmp     x9, x10
        //  br i1 %r290, label %bb20, label %bb21


        b.ne     bb20
        b     bb21
        //bb20:

bb20:

        //  %r240 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 0

        mov     x9, #8
        mov     x10, #0
        mul     x9, x9, x10
        add     x10, x29, #-1040
        add     x9, x10, x9
        //  %r241 = load i32, i32* %r240

        ldr     x9, [x9]
        //  call void @putint(i32 %r241)

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
        //  br label %bb22


        b     bb22
        //bb21:

bb21:

        //  br label %bb22


        b     bb22
        //bb22:

bb22:

        //  %r291 = add i32 1, 0

        mov     x9, #1
        mov     x10, x9
        //  br label %bb23


        b     bb23
        //bb23:

bb23:

        //  %r292 = phi i32 [ %r291, %bb22 ], [ %r297, %bb24 ]

        //  %r293 = add i32 %r268, %r270

        add     x9, x12, x11
        //  %r294 = sub i32 %r293, 1

        mov     x13, #1
        sub     x9, x9, x13
        //  %r295 = icmp sle i32 %r292, %r294

        cmp     x10, x9
        //  br i1 %r295, label %bb24, label %bb25


        b.le     bb24
        b     bb25
        //bb24:

bb24:

        //  %r249 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 %r292

        mov     x9, #8
        mul     x9, x9, x10
        add     x13, x29, #-1040
        add     x9, x13, x9
        //  %r250 = load i32, i32* %r249

        ldr     x9, [x9]
        //  call void @putint(i32 %r250)

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
        //  %r296 = add i32 %r292, 1

        mov     x9, #1
        add     x9, x10, x9
        //  %r297 = add i32 %r296, 0

        mov     x9, x9
        mov     x10, x9
        //  br label %bb23


        b     bb23
        //bb25:

bb25:

        //  call void @_sysy_stoptime(i32 117)

        mov     x0, #9
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
