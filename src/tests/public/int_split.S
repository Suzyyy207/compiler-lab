.section .data
.global    N
.global    newline
N:
        .quad   0
newline:
        .quad   0
.section .text
.global getch
.global getint
.global putch
.global putint
.global putarray
.global _sysy_starttime
.global _sysy_stoptime
.global mod
.global split
.global main
        sub     sp, sp, #0
mod:

        //103:x29,#-16

        //101:x29,#-8

        //bb2:

bb2:

        //  %r101 = alloca i32

        mov     x16, #16
        sub     sp, sp, x16
        mov     x9, x0
        mov     x11, x1
        //  store i32 %r100, i32* %r101

        str     x9, [x10]
        //  %r103 = alloca i32

        //  store i32 %r102, i32* %r103

        str     x11, [x12]
        //  br label %bb1


        b     bb1
        //bb1:

bb1:

        //  %r104 = load i32, i32* %r101

        ldr     x9, [x10]
        //  %r105 = load i32, i32* %r101

        ldr     x10, [x10]
        //  %r106 = load i32, i32* %r103

        ldr     x11, [x12]
        //  %r107 = sdiv i32 %r105, %r106

        sdiv     x10, x10, x11
        //  %r108 = load i32, i32* %r103

        ldr     x11, [x12]
        //  %r109 = mul i32 %r107, %r108

        mul     x10, x10, x11
        //  %r110 = sub i32 %r104, %r109

        sub     x9, x9, x10
        //  ret i32 %r110

        mov     x0, x9
        mov     sp, x29
        ret
        sub     sp, sp, #0
split:

        //112:x29,#-16

        //114:x29,#-8

        //bb4:

bb4:

        //  %r114 = alloca i32

        mov     x16, #16
        sub     sp, sp, x16
        mov     x12, x0
        mov     x10, x1
        //  %r112 = alloca i32

        //  store i32 %r111, i32* %r112

        str     x12, [x11]
        //  br label %bb3


        b     bb3
        //bb3:

bb3:

        //  %r115 = load i32, i32* @N

        adrp     x12, N
        add     x12, x12, #:lo12:N
        ldr     x13, [x12]
        //  %r116 = sub i32 %r115, 1

        mov     x12, #1
        sub     x12, x13, x12
        //  store i32 %r116, i32* %r114

        str     x12, [x9]
        //  br label %bb5


        b     bb5
        //bb5:

bb5:

        //  %r117 = load i32, i32* %r114

        ldr     x13, [x9]
        //  %r118 = sub i32 0, 1

        mov     x14, #0
        mov     x12, #1
        sub     x12, x14, x12
        //  %r119 = icmp ne i32 %r117, %r118

        cmp     x13, x12
        //  br i1 %r119, label %bb6, label %bb7


        b.ne     bb6
        b     bb7
        //bb6:

bb6:

        //  %r120 = load i32, i32* %r112

        ldr     x12, [x11]
        //  %r121 = call i32 @mod(i32 %r120, i32 10)

        mov     x0, x12
        mov     x1, #10
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     mod
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x13, x0
        //  %r122 = load i32, i32* %r114

        ldr     x12, [x9]
        //  %r123 = getelementptr i32, i32* %r113, i32 %r122

        mov     x14, #8
        mul     x12, x14, x12
        add     x12, x10, x12
        //  store i32 %r121, i32* %r123

        str     x13, [x12]
        //  %r124 = load i32, i32* %r112

        ldr     x13, [x11]
        //  %r125 = sdiv i32 %r124, 10

        mov     x12, #10
        sdiv     x12, x13, x12
        //  store i32 %r125, i32* %r112

        str     x12, [x11]
        //  %r126 = load i32, i32* %r114

        ldr     x13, [x9]
        //  %r127 = sub i32 %r126, 1

        mov     x12, #1
        sub     x12, x13, x12
        //  store i32 %r127, i32* %r114

        str     x12, [x9]
        //  br label %bb5


        b     bb5
        //bb7:

bb7:

        //  ret i32 0

        mov     x9, #0
        mov     x0, x9
        mov     sp, x29
        ret
        sub     sp, sp, #0
main:

        //133:x29,#-56

        //130:x29,#-48

        //129:x29,#-16

        //128:x29,#-8

        //bb8:

bb8:

        //  call void @_sysy_starttime(i32 26)

        mov     x16, #64
        sub     sp, sp, x16
        mov     x0, #26
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
        //  store i32 4, i32* @N

        mov     x11, #4
        adrp     x14, N
        add     x14, x14, #:lo12:N
        str     x11, [x14]
        //  store i32 10, i32* @newline

        mov     x11, #10
        adrp     x14, newline
        add     x14, x14, #:lo12:newline
        str     x11, [x14]
        //  %r128 = alloca i32

        //  %r129 = alloca i32

        //  %r130 = alloca [ 4 x i32 ]

        //  store i32 1478, i32* %r129

        mov     x11, #1478
        str     x11, [x13]
        //  %r131 = load i32, i32* %r129

        ldr     x11, [x13]
        //  %r132 = call i32 @split(i32 %r131, i32* %r130)

        mov     x0, x11
        mov     x1, x12
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     split
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x11, x0
        //  store i32 %r132, i32* %r129

        str     x11, [x13]
        //  %r133 = alloca i32

        //  store i32 0, i32* %r128

        mov     x11, #0
        str     x11, [x10]
        //  br label %bb9


        b     bb9
        //bb9:

bb9:

        //  %r134 = load i32, i32* %r128

        ldr     x11, [x10]
        //  %r135 = icmp slt i32 %r134, 4

        mov     x12, #4
        cmp     x11, x12
        //  br i1 %r135, label %bb10, label %bb11


        b.lt     bb10
        b     bb11
        //bb10:

bb10:

        //  %r136 = load i32, i32* %r128

        ldr     x11, [x10]
        //  %r137 = getelementptr [4 x i32 ], [4 x i32 ]* %r130, i32 0, i32 %r136

        mov     x12, #8
        mul     x12, x12, x11
        add     x11, x29, #-48
        add     x11, x11, x12
        //  %r138 = load i32, i32* %r137

        ldr     x11, [x11]
        //  store i32 %r138, i32* %r133

        str     x11, [x9]
        //  %r139 = load i32, i32* %r133

        //  %r140 = load i32, i32* %r133

        ldr     x11, [x9]
        //  call void @putint(i32 %r140)

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
        //  %r141 = load i32, i32* @newline

        adrp     x11, newline
        add     x11, x11, #:lo12:newline
        ldr     x11, [x11]
        //  call void @putch(i32 %r141)

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
        //  %r142 = load i32, i32* %r128

        ldr     x11, [x10]
        //  %r143 = add i32 %r142, 1

        mov     x12, #1
        add     x11, x11, x12
        //  store i32 %r143, i32* %r128

        str     x11, [x10]
        //  br label %bb9


        b     bb9
        //bb11:

bb11:

        //  call void @_sysy_stoptime(i32 42)

        mov     x0, #42
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
