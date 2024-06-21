declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
@a = global i32 0
@b = global i32 0
@d = global i32 0
define i32 @set_a( i32 %r100 ) {
bb2:
  %r101 = alloca i32
  store i32 %r100, i32* %r101
  br label %bb1

bb1:
  %r102 = load i32, i32* %r101
  store i32 %r102, i32* @a
  %r103 = load i32, i32* @a
  ret i32 %r103
}

define i32 @set_b( i32 %r104 ) {
bb4:
  %r105 = alloca i32
  store i32 %r104, i32* %r105
  br label %bb3

bb3:
  %r106 = load i32, i32* %r105
  store i32 %r106, i32* @b
  %r107 = load i32, i32* @b
  ret i32 %r107
}

define i32 @set_d( i32 %r108 ) {
bb6:
  %r109 = alloca i32
  store i32 %r108, i32* %r109
  br label %bb5

bb5:
  %r110 = load i32, i32* %r109
  store i32 %r110, i32* @d
  %r111 = load i32, i32* @d
  ret i32 %r111
}

define i32 @main( ) {
bb7:
  %r143 = alloca i32
  %r142 = alloca i32
  %r141 = alloca i32
  %r140 = alloca i32
  %r139 = alloca i32
  %r126 = alloca i32
  call void @_sysy_starttime(i32 97)
  store i32 2, i32* @a
  store i32 3, i32* @b
  %r113 = call i32 @set_a(i32 0)
  %r114 = icmp ne i32 %r113, 0
  br i1 %r114, label %bb11, label %bb9

bb11:
  %r115 = call i32 @set_b(i32 1)
  %r116 = icmp ne i32 %r115, 0
  br i1 %r116, label %bb8, label %bb9

bb8:
  br label %bb10

bb9:
  br label %bb10

bb10:
  %r117 = load i32, i32* @a
  call void @putint(i32 %r117)
  call void @putch(i32 32)
  %r118 = load i32, i32* @b
  call void @putint(i32 %r118)
  call void @putch(i32 32)
  store i32 2, i32* @a
  store i32 3, i32* @b
  %r120 = call i32 @set_a(i32 0)
  %r121 = icmp ne i32 %r120, 0
  br i1 %r121, label %bb15, label %bb13

bb15:
  %r122 = call i32 @set_b(i32 1)
  %r123 = icmp ne i32 %r122, 0
  br i1 %r123, label %bb12, label %bb13

bb12:
  br label %bb14

bb13:
  br label %bb14

bb14:
  %r124 = load i32, i32* @a
  call void @putint(i32 %r124)
  call void @putch(i32 32)
  %r125 = load i32, i32* @b
  call void @putint(i32 %r125)
  call void @putch(i32 10)
  store i32 1, i32* %r126
  store i32 2, i32* @d
  %r128 = load i32, i32* %r126
  %r129 = icmp sge i32 %r128, 1
  br i1 %r129, label %bb19, label %bb17

bb19:
  %r130 = call i32 @set_d(i32 3)
  %r131 = icmp ne i32 %r130, 0
  br i1 %r131, label %bb16, label %bb17

bb16:
  br label %bb18

bb17:
  br label %bb18

bb18:
  %r132 = load i32, i32* @d
  call void @putint(i32 %r132)
  call void @putch(i32 32)
  %r134 = load i32, i32* %r126
  %r135 = icmp sle i32 %r134, 1
  br i1 %r135, label %bb20, label %bb23

bb23:
  %r136 = call i32 @set_d(i32 4)
  %r137 = icmp ne i32 %r136, 0
  br i1 %r137, label %bb20, label %bb21

bb20:
  br label %bb22

bb21:
  br label %bb22

bb22:
  %r138 = load i32, i32* @d
  call void @putint(i32 %r138)
  call void @putch(i32 10)
  call void @putch(i32 10)
  store i32 0, i32* %r139
  store i32 1, i32* %r140
  store i32 2, i32* %r141
  store i32 3, i32* %r142
  store i32 4, i32* %r143
  br label %bb24

bb24:
  %r145 = load i32, i32* %r139
  %r146 = icmp ne i32 %r145, 0
  br i1 %r146, label %bb27, label %bb26

bb27:
  %r147 = load i32, i32* %r140
  %r148 = icmp ne i32 %r147, 0
  br i1 %r148, label %bb25, label %bb26

bb25:
  call void @putch(i32 32)
  br label %bb24

bb26:
  %r150 = load i32, i32* %r139
  %r151 = icmp ne i32 %r150, 0
  br i1 %r151, label %bb28, label %bb31

bb31:
  %r152 = load i32, i32* %r140
  %r153 = icmp ne i32 %r152, 0
  br i1 %r153, label %bb28, label %bb29

bb28:
  call void @putch(i32 67)
  br label %bb30

bb29:
  br label %bb30

bb30:
  %r155 = load i32, i32* %r139
  %r156 = load i32, i32* %r140
  %r157 = icmp sge i32 %r155, %r156
  br i1 %r157, label %bb32, label %bb35

bb35:
  %r158 = load i32, i32* %r140
  %r159 = load i32, i32* %r139
  %r160 = icmp sle i32 %r158, %r159
  br i1 %r160, label %bb32, label %bb33

bb32:
  call void @putch(i32 72)
  br label %bb34

bb33:
  br label %bb34

bb34:
  %r162 = load i32, i32* %r141
  %r163 = load i32, i32* %r140
  %r164 = icmp sge i32 %r162, %r163
  br i1 %r164, label %bb39, label %bb37

bb39:
  %r165 = load i32, i32* %r143
  %r166 = load i32, i32* %r142
  %r167 = icmp ne i32 %r165, %r166
  br i1 %r167, label %bb36, label %bb37

bb36:
  call void @putch(i32 73)
  br label %bb38

bb37:
  br label %bb38

bb38:
  %r170 = load i32, i32* %r140
  %r171 = icmp ne i32 %r170, 0
  br i1 %r171, label %bb44, label %bb43

bb44:
  %r172 = load i32, i32* %r142
  %r173 = load i32, i32* %r142
  %r174 = icmp slt i32 %r172, %r173
  br i1 %r174, label %bb40, label %bb43

bb43:
  %r175 = load i32, i32* %r143
  %r176 = load i32, i32* %r143
  %r177 = icmp sge i32 %r175, %r176
  br i1 %r177, label %bb40, label %bb41

bb40:
  call void @putch(i32 74)
  br label %bb42

bb41:
  br label %bb42

bb42:
  %r179 = load i32, i32* %r140
  %r180 = icmp ne i32 %r179, 0
  br i1 %r180, label %bb45, label %bb48

bb48:
  %r182 = load i32, i32* %r142
  %r183 = load i32, i32* %r142
  %r184 = icmp slt i32 %r182, %r183
  br i1 %r184, label %bb49, label %bb46

bb49:
  %r185 = load i32, i32* %r143
  %r186 = load i32, i32* %r143
  %r187 = icmp sge i32 %r185, %r186
  br i1 %r187, label %bb45, label %bb46

bb45:
  call void @putch(i32 75)
  br label %bb47

bb46:
  br label %bb47

bb47:
  call void @putch(i32 10)
  call void @_sysy_stoptime(i32 117)
  ret i32 0
}

