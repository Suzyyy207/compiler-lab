declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
@ascii_0 = global i32 48
define i32 @my_getint( ) {
bb1:
  %r172 = add i32 0, 0
  %r173 = add i32 0, 0
  %r174 = add i32 0, 0
  br label %bb2

bb2:
  %r175 = phi i32 [ %r174, %bb1 ], [ %r191, %bb5 ]
  %r176 = icmp sgt i32 1, 0
  br i1 %r176, label %bb3, label %bb4

bb3:
  %r189 = call i32 @getch()
  %r104 = load i32, i32* @ascii_0
  %r190 = sub i32 %r189, %r104
  %r191 = add i32 %r190, 0
  %r192 = icmp slt i32 %r191, 0
  br i1 %r192, label %bb5, label %bb8

bb8:
  %r193 = icmp sgt i32 %r191, 9
  br i1 %r193, label %bb5, label %bb6

bb5:
  br label %bb2

bb6:
  br label %bb4

bb4:
  %r177 = phi i32 [ %r175, %bb2 ], [ %r191, %bb6 ]
  %r178 = add i32 %r177, 0
  br label %bb9

bb9:
  %r179 = phi i32 [ %r178, %bb4 ], [ %r188, %bb14 ]
  %r180 = icmp sgt i32 1, 0
  br i1 %r180, label %bb10, label %bb11

bb10:
  %r181 = call i32 @getch()
  %r114 = load i32, i32* @ascii_0
  %r182 = sub i32 %r181, %r114
  %r183 = add i32 %r182, 0
  %r184 = icmp sge i32 %r183, 0
  br i1 %r184, label %bb15, label %bb13

bb15:
  %r185 = icmp sle i32 %r183, 9
  br i1 %r185, label %bb12, label %bb13

bb12:
  %r186 = mul i32 %r179, 10
  %r187 = add i32 %r186, %r183
  %r188 = add i32 %r187, 0
  br label %bb14

bb13:
  br label %bb11

bb14:
  br label %bb9

bb11:
  ret i32 %r179
}

define i32 @mod( i32 %r126, i32 %r128 ) {
bb17:
  %r196 = add i32 0, 0
  %r197 = add i32 %r126, 0
  %r198 = add i32 0, 0
  %r199 = add i32 %r128, 0
  br label %bb16

bb16:
  %r200 = sdiv i32 %r197, %r199
  %r201 = mul i32 %r200, %r199
  %r202 = sub i32 %r197, %r201
  ret i32 %r202
}

define void @my_putint( i32 %r137 ) {
bb19:
  %r205 = add i32 0, 0
  %r139 = alloca [ 16 x i32 ]
  %r206 = add i32 0, 0
  %r207 = add i32 %r137, 0
  br label %bb18

bb18:
  %r208 = add i32 0, 0
  br label %bb20

bb20:
  %r209 = phi i32 [ %r207, %bb18 ], [ %r219, %bb21 ]
  %r210 = phi i32 [ %r208, %bb18 ], [ %r221, %bb21 ]
  %r211 = icmp sgt i32 %r209, 0
  br i1 %r211, label %bb21, label %bb22

bb21:
  %r216 = call i32 @mod(i32 %r209, i32 10)
  %r145 = load i32, i32* @ascii_0
  %r217 = add i32 %r216, %r145
  %r148 = getelementptr [16 x i32 ], [16 x i32 ]* %r139, i32 0, i32 %r210
  store i32 %r217, i32* %r148
  %r218 = sdiv i32 %r209, 10
  %r219 = add i32 %r218, 0
  %r220 = add i32 %r210, 1
  %r221 = add i32 %r220, 0
  br label %bb20

bb22:
  br label %bb23

bb23:
  %r212 = phi i32 [ %r210, %bb22 ], [ %r215, %bb24 ]
  %r213 = icmp sgt i32 %r212, 0
  br i1 %r213, label %bb24, label %bb25

bb24:
  %r214 = sub i32 %r212, 1
  %r215 = add i32 %r214, 0
  %r158 = getelementptr [16 x i32 ], [16 x i32 ]* %r139, i32 0, i32 %r215
  %r159 = load i32, i32* %r158
  call void @putch(i32 %r159)
  br label %bb23

bb25:
  ret void
}

define i32 @main( ) {
bb26:
  %r224 = add i32 0, 0
  call void @_sysy_starttime(i32 51)
  %r225 = call i32 @my_getint()
  %r226 = add i32 0, 0
  %r227 = add i32 %r225, 0
  br label %bb27

bb27:
  %r228 = phi i32 [ %r227, %bb26 ], [ %r233, %bb28 ]
  %r229 = icmp sgt i32 %r228, 0
  br i1 %r229, label %bb28, label %bb29

bb28:
  %r230 = call i32 @my_getint()
  %r231 = add i32 %r230, 0
  call void @my_putint(i32 %r231)
  call void @putch(i32 10)
  %r232 = sub i32 %r228, 1
  %r233 = add i32 %r232, 0
  br label %bb27

bb29:
  call void @_sysy_stoptime(i32 58)
  ret i32 0
}

