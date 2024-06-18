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

