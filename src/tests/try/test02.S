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
foo:

        //bb1:

bb1:

        //  %r134 = call i32 @getint()

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
        mov     x13, x0
        //  %r135 = getelementptr %Node, %Node* %r100, i32 0, i32 0

        mov     x14, #16
        mov     x11, #0
        mul     x11, x14, x11
        //  store i32 %r134, i32* %r102

        str     x13, [x10]
        //  %r136 = call i32 @getint()

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
        //  %r137 = getelementptr %Node, %Node* %r100, i32 0, i32 1

        mov     x10, #16
        mov     x13, #1
        mul     x10, x10, x13
        //  store i32 %r136, i32* %r104

        str     x11, [x12]
        //  ret void

        mov     sp, x29
        ret
baz:

        //bb2:

bb2:

        //  %r138 = call i32 @getint()

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
        mov     x12, x0
        //  %r107 = getelementptr %Node, %Node* %r105, i32 2

        mov     x14, #16
        mov     x10, #2
        mul     x10, x14, x10
        add     x14, x9, x10
        //  %r139 = getelementptr %Node, %Node* %r107, i32 0, i32 0

        mov     x10, #16
        mov     x15, #0
        mul     x10, x10, x15
        //  store i32 %r138, i32* %r108

        str     x12, [x13]
        //  %r140 = call i32 @getint()

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
        //  %r110 = getelementptr %Node, %Node* %r105, i32 2

        mov     x13, #16
        mov     x12, #2
        mul     x12, x13, x12
        add     x12, x9, x12
        //  %r141 = getelementptr %Node, %Node* %r110, i32 0, i32 1

        mov     x13, #16
        mov     x9, #1
        mul     x9, x13, x9
        //  store i32 %r140, i32* %r111

        str     x10, [x11]
        //  ret void

        mov     sp, x29
        ret
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

        //  %r142 = getelementptr %Node, %Node* %r112, i32 0, i32 0

        mov     x10, #16
        mov     x15, #0
        mul     x15, x10, x15
        add     x10, x29, #-16
        //  store i32 1, i32* %r113

        mov     x10, #1
        str     x16, [sp, #-8]!
        str     x10, [x17]
        str     x17, [sp, #-8]!
        //  %r143 = getelementptr %Node, %Node* %r112, i32 0, i32 1

        mov     x15, #16
        mov     x10, #1
        mul     x15, x15, x10
        add     x10, x29, #-16
        //  store i32 2, i32* %r114

        mov     x10, #2
        str     x10, [x9]
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
        ldr     x9, [x9]
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

        mov     x9, #16
        mov     x10, #0
        mul     x9, x9, x10
        adrp     x10, e
        add     x10, x10, #:lo12:e
        add     x9, x10, x9
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
        //  %r144 = getelementptr %Node, %Node* %r112, i32 0, i32 0

        str     x18, [sp, #-8]!
        mov     x19, #16
        str     x19, [sp, #-8]!
        mov     x9, #0
        mul     x10, x19, x9
        add     x9, x29, #-16
        //  %r118 = load i32, i32* %r117

        ldr     x9, [x14]
        //  %r145 = getelementptr %Node, %Node* %r112, i32 0, i32 1

        mov     x14, #16
        mov     x10, #1
        mul     x14, x14, x10
        add     x10, x29, #-16
        //  %r120 = load i32, i32* %r119

        ldr     x10, [x13]
        //  %r146 = add i32 %r118, %r120

        add     x9, x9, x10
        //  call void @putint(i32 %r146)

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
        //  %r147 = getelementptr %Node, %Node* @d, i32 0, i32 0

        mov     x10, #16
        mov     x9, #0
        mul     x9, x10, x9
        adrp     x10, d
        add     x10, x10, #:lo12:d
        //  %r123 = load i32, i32* %r122

        ldr     x10, [x12]
        //  %r148 = getelementptr %Node, %Node* @d, i32 0, i32 1

        mov     x9, #16
        mov     x12, #1
        mul     x9, x9, x12
        adrp     x12, d
        add     x12, x12, #:lo12:d
        //  %r125 = load i32, i32* %r124

        ldr     x9, [x11]
        //  %r149 = add i32 %r123, %r125

        add     x9, x10, x9
        //  call void @putint(i32 %r149)

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
        //  %r150 = getelementptr %Node, %Node* %r127, i32 0, i32 0

        mov     x10, #16
        mov     x11, #0
        mul     x10, x10, x11
        //  %r129 = load i32, i32* %r128

        str     x16, [sp, #-8]!
        ldr     x17, [sp], #8
        ldr     x9, [x17]
        //  %r130 = getelementptr [10 x %Node ], [10 x %Node ]* @e, i32 0, i32 2

        mov     x10, #16
        mov     x11, #2
        mul     x10, x10, x11
        adrp     x11, e
        add     x11, x11, #:lo12:e
        add     x10, x11, x10
        //  %r151 = getelementptr %Node, %Node* %r130, i32 0, i32 1

        mov     x11, #16
        mov     x12, #1
        mul     x11, x11, x12
        //  %r132 = load i32, i32* %r131

        str     x18, [sp, #-8]!
        ldr     x19, [sp], #8
        ldr     x10, [x19]
        //  %r152 = add i32 %r129, %r132

        add     x9, x9, x10
        //  call void @putint(i32 %r152)

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
