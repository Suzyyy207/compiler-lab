.section .data
.global    d
.global    e
d:
        .zero   16
e:
        .zero   160
.section .text
.global getch
.global getint
.global putch
.global putint
.global putarray
.global _sysy_starttime
.global _sysy_stoptime
.global foo
.global baz
.global main
        sub     sp, sp, #0
foo:

        //bb1:

bb1:

        //  %r101 = call i32 @getint()

        mov     x16, #0
        sub     sp, sp, x16
        mov     x9, x0
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
        //  %r102 = getelementptr %Node, %Node* %r100, i32 0, i32 0

        mov     x11, #16
        mov     x12, #0
        mul     x11, x11, x12
        add     x11, x9, x11
        //  store i32 %r101, i32* %r102

        str     x10, [x11]
        //  %r103 = call i32 @getint()

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
        //  %r104 = getelementptr %Node, %Node* %r100, i32 0, i32 1

        mov     x10, #16
        mov     x12, #1
        mul     x10, x10, x12
        add     x9, x9, x10
        //  store i32 %r103, i32* %r104

        str     x11, [x9]
        //  ret void

        mov     sp, x29
        ret
        sub     sp, sp, #0
baz:

        //bb2:

bb2:

        //  %r106 = call i32 @getint()

        mov     x16, #0
        sub     sp, sp, x16
        mov     x10, x0
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
        //  %r107 = getelementptr %Node, %Node* %r105, i32 2

        mov     x12, #16
        mov     x11, #2
        mul     x11, x12, x11
        add     x12, x10, x11
        //  %r108 = getelementptr %Node, %Node* %r107, i32 0, i32 0

        mov     x11, #16
        mov     x13, #0
        mul     x11, x11, x13
        add     x11, x12, x11
        //  store i32 %r106, i32* %r108

        str     x9, [x11]
        //  %r109 = call i32 @getint()

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
        //  %r110 = getelementptr %Node, %Node* %r105, i32 2

        mov     x9, #16
        mov     x12, #2
        mul     x9, x9, x12
        add     x9, x10, x9
        //  %r111 = getelementptr %Node, %Node* %r110, i32 0, i32 1

        mov     x10, #16
        mov     x12, #1
        mul     x10, x10, x12
        add     x9, x9, x10
        //  store i32 %r109, i32* %r111

        str     x11, [x9]
        //  ret void

        mov     sp, x29
        ret
        sub     sp, sp, #0
main:

        //112:x29,#-16

        //bb3:

bb3:

        //  call void @_sysy_starttime(i32 13)

        mov     x16, #16
        sub     sp, sp, x16
        mov     x0, #13
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
        //  %r112 = alloca %Node

        //  %r113 = getelementptr %Node, %Node* %r112, i32 0, i32 0

        mov     x10, #16
        mov     x9, #0
        mul     x9, x10, x9
        add     x10, x29, #-16
        add     x9, x10, x9
        //  store i32 1, i32* %r113

        mov     x10, #1
        str     x10, [x9]
        //  %r114 = getelementptr %Node, %Node* %r112, i32 0, i32 1

        mov     x9, #16
        mov     x10, #1
        mul     x10, x9, x10
        add     x9, x29, #-16
        add     x10, x9, x10
        //  store i32 2, i32* %r114

        mov     x9, #2
        str     x9, [x10]
        //  %r115 = getelementptr %Node, %Node* %r112, i32 0, i32 0

        mov     x10, #16
        mov     x9, #0
        mul     x10, x10, x9
        add     x9, x29, #-16
        add     x9, x9, x10
        //  call void @foo(%Node* %r115)

        mov     x0, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     foo
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        //  call void @foo(%Node* @d)

        adrp     x9, d
        add     x9, x9, #:lo12:d
        mov     x0, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     foo
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        //  %r116 = getelementptr [10 x %Node ], [10 x %Node ]* @e, i32 0, i32 0

        mov     x10, #16
        mov     x9, #0
        mul     x10, x10, x9
        adrp     x9, e
        add     x9, x9, #:lo12:e
        add     x9, x9, x10
        //  call void @baz(%Node* %r116)

        mov     x0, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     baz
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        //  %r117 = getelementptr %Node, %Node* %r112, i32 0, i32 0

        mov     x9, #16
        mov     x10, #0
        mul     x10, x9, x10
        add     x9, x29, #-16
        add     x9, x9, x10
        //  %r118 = load i32, i32* %r117

        ldr     x11, [x9]
        //  %r119 = getelementptr %Node, %Node* %r112, i32 0, i32 1

        mov     x10, #16
        mov     x9, #1
        mul     x10, x10, x9
        add     x9, x29, #-16
        add     x9, x9, x10
        //  %r120 = load i32, i32* %r119

        ldr     x9, [x9]
        //  %r121 = add i32 %r118, %r120

        add     x9, x11, x9
        //  call void @putint(i32 %r121)

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
        //  %r122 = getelementptr %Node, %Node* @d, i32 0, i32 0

        mov     x10, #16
        mov     x9, #0
        mul     x10, x10, x9
        adrp     x9, d
        add     x9, x9, #:lo12:d
        add     x9, x9, x10
        //  %r123 = load i32, i32* %r122

        ldr     x11, [x9]
        //  %r124 = getelementptr %Node, %Node* @d, i32 0, i32 1

        mov     x10, #16
        mov     x9, #1
        mul     x9, x10, x9
        adrp     x10, d
        add     x10, x10, #:lo12:d
        add     x9, x10, x9
        //  %r125 = load i32, i32* %r124

        ldr     x9, [x9]
        //  %r126 = add i32 %r123, %r125

        add     x9, x11, x9
        //  call void @putint(i32 %r126)

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
        //  %r127 = getelementptr [10 x %Node ], [10 x %Node ]* @e, i32 0, i32 2

        mov     x9, #16
        mov     x10, #2
        mul     x9, x9, x10
        adrp     x10, e
        add     x10, x10, #:lo12:e
        add     x9, x10, x9
        //  %r128 = getelementptr %Node, %Node* %r127, i32 0, i32 0

        mov     x10, #16
        mov     x11, #0
        mul     x10, x10, x11
        add     x9, x9, x10
        //  %r129 = load i32, i32* %r128

        ldr     x9, [x9]
        //  %r130 = getelementptr [10 x %Node ], [10 x %Node ]* @e, i32 0, i32 2

        mov     x10, #16
        mov     x11, #2
        mul     x10, x10, x11
        adrp     x11, e
        add     x11, x11, #:lo12:e
        add     x10, x11, x10
        //  %r131 = getelementptr %Node, %Node* %r130, i32 0, i32 1

        mov     x11, #16
        mov     x12, #1
        mul     x11, x11, x12
        add     x10, x10, x11
        //  %r132 = load i32, i32* %r131

        ldr     x10, [x10]
        //  %r133 = add i32 %r129, %r132

        add     x9, x9, x10
        //  call void @putint(i32 %r133)

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
        //  call void @_sysy_stoptime(i32 19)

        mov     x0, #19
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
