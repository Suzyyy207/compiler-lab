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
  %r189 = add i32 0, 0
  %r190 = add i32 %r100, 0
  br label %bb1

bb1:
  store i32 %r190, i32* @a
  %r103 = load i32, i32* @a
  ret i32 %r103
}

define i32 @set_b( i32 %r104 ) {
bb4:
  %r192 = add i32 0, 0
  %r193 = add i32 %r104, 0
  br label %bb3

bb3:
  store i32 %r193, i32* @b
  %r107 = load i32, i32* @b
  ret i32 %r107
}

define i32 @set_d( i32 %r108 ) {
bb6:
  %r195 = add i32 0, 0
  %r196 = add i32 %r108, 0
  br label %bb5

bb5:
  store i32 %r196, i32* @d
  %r111 = load i32, i32* @d
  ret i32 %r111
}

define i32 @main( ) {
bb7:
  %r203 = add i32 0, 0
  %r204 = add i32 0, 0
  %r205 = add i32 0, 0
  %r206 = add i32 0, 0
  %r207 = add i32 0, 0
  %r208 = add i32 0, 0
  call void @_sysy_starttime(i32 97)
  store i32 2, i32* @a
  store i32 3, i32* @b
  %r209 = call i32 @set_a(i32 0)
  %r210 = icmp ne i32 %r209, 0
  br i1 %r210, label %bb11, label %bb9

bb11:
  %r241 = call i32 @set_b(i32 1)
  %r242 = icmp ne i32 %r241, 0
  br i1 %r242, label %bb8, label %bb9

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
  %r211 = call i32 @set_a(i32 0)
  %r212 = icmp ne i32 %r211, 0
  br i1 %r212, label %bb15, label %bb13

bb15:
  %r239 = call i32 @set_b(i32 1)
  %r240 = icmp ne i32 %r239, 0
  br i1 %r240, label %bb12, label %bb13

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
  %r213 = add i32 1, 0
  store i32 2, i32* @d
  %r214 = icmp sge i32 %r213, 1
  br i1 %r214, label %bb19, label %bb17

bb19:
  %r237 = call i32 @set_d(i32 3)
  %r238 = icmp ne i32 %r237, 0
  br i1 %r238, label %bb16, label %bb17

bb16:
  br label %bb18

bb17:
  br label %bb18

bb18:
  %r132 = load i32, i32* @d
  call void @putint(i32 %r132)
  call void @putch(i32 32)
  %r215 = icmp sle i32 %r213, 1
  br i1 %r215, label %bb20, label %bb23

bb23:
  %r235 = call i32 @set_d(i32 4)
  %r236 = icmp ne i32 %r235, 0
  br i1 %r236, label %bb20, label %bb21

bb20:
  br label %bb22

bb21:
  br label %bb22

bb22:
  %r138 = load i32, i32* @d
  call void @putint(i32 %r138)
  call void @putch(i32 10)
  call void @putch(i32 10)
  %r216 = add i32 0, 0
  %r217 = add i32 1, 0
  %r218 = add i32 2, 0
  %r219 = add i32 3, 0
  %r220 = add i32 4, 0
  br label %bb24

bb24:
  %r221 = icmp ne i32 %r216, 0
  br i1 %r221, label %bb27, label %bb26

bb27:
  %r234 = icmp ne i32 %r217, 0
  br i1 %r234, label %bb25, label %bb26

bb25:
  call void @putch(i32 32)
  br label %bb24

bb26:
  %r222 = icmp ne i32 %r216, 0
  br i1 %r222, label %bb28, label %bb31

bb31:
  %r233 = icmp ne i32 %r217, 0
  br i1 %r233, label %bb28, label %bb29

bb28:
  call void @putch(i32 67)
  br label %bb30

bb29:
  br label %bb30

bb30:
  %r223 = icmp sge i32 %r216, %r217
  br i1 %r223, label %bb32, label %bb35

bb35:
  %r232 = icmp sle i32 %r217, %r216
  br i1 %r232, label %bb32, label %bb33

bb32:
  call void @putch(i32 72)
  br label %bb34

bb33:
  br label %bb34

bb34:
  %r224 = icmp sge i32 %r218, %r217
  br i1 %r224, label %bb39, label %bb37

bb39:
  %r231 = icmp ne i32 %r220, %r219
  br i1 %r231, label %bb36, label %bb37

bb36:
  call void @putch(i32 73)
  br label %bb38

bb37:
  br label %bb38

bb38:
  %r225 = icmp ne i32 %r217, 0
  br i1 %r225, label %bb44, label %bb43

bb44:
  %r230 = icmp slt i32 %r219, %r219
  br i1 %r230, label %bb40, label %bb43

bb43:
  %r229 = icmp sge i32 %r220, %r220
  br i1 %r229, label %bb40, label %bb41

bb40:
  call void @putch(i32 74)
  br label %bb42

bb41:
  br label %bb42

bb42:
  %r226 = icmp ne i32 %r217, 0
  br i1 %r226, label %bb45, label %bb48

bb48:
  %r227 = icmp slt i32 %r219, %r219
  br i1 %r227, label %bb49, label %bb46

bb49:
  %r228 = icmp sge i32 %r220, %r220
  br i1 %r228, label %bb45, label %bb46

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

