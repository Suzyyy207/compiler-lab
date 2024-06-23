declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
define i32 @canJump( i32* %r100, i32 %r101 ) {
bb2:
  %r183 = add i32 0, 0
  %r184 = add i32 0, 0
  %r185 = add i32 0, 0
  %r110 = alloca [ 10 x i32 ]
  %r186 = add i32 0, 0
  %r187 = add i32 %r101, 0
  br label %bb1

bb1:
  %r188 = icmp eq i32 %r187, 1
  br i1 %r188, label %bb3, label %bb4

bb3:
  ret i32 1
bb4:
  br label %bb5

bb5:
  %r105 = getelementptr i32, i32* %r100, i32 0
  %r106 = load i32, i32* %r105
  %r189 = sub i32 %r187, 2
  %r190 = icmp sgt i32 %r106, %r189
  br i1 %r190, label %bb6, label %bb7

bb6:
  ret i32 1
bb7:
  br label %bb8

bb8:
  %r191 = add i32 0, 0
  br label %bb9

bb9:
  %r192 = phi i32 [ %r191, %bb8 ], [ %r221, %bb10 ]
  %r193 = sub i32 %r187, 1
  %r194 = icmp slt i32 %r192, %r193
  br i1 %r194, label %bb10, label %bb11

bb10:
  %r117 = getelementptr [10 x i32 ], [10 x i32 ]* %r110, i32 0, i32 %r192
  store i32 0, i32* %r117
  %r220 = add i32 %r192, 1
  %r221 = add i32 %r220, 0
  br label %bb9

bb11:
  %r195 = sub i32 %r187, 1
  %r196 = add i32 %r195, 0
  %r124 = getelementptr [10 x i32 ], [10 x i32 ]* %r110, i32 0, i32 %r196
  store i32 1, i32* %r124
  %r197 = sub i32 %r187, 2
  %r198 = add i32 %r197, 0
  br label %bb12

bb12:
  %r199 = phi i32 [ %r198, %bb11 ], [ %r210, %bb20 ]
  %r200 = sub i32 0, 1
  %r201 = icmp sgt i32 %r199, %r200
  br i1 %r201, label %bb13, label %bb14

bb13:
  %r132 = getelementptr i32, i32* %r100, i32 %r199
  %r133 = load i32, i32* %r132
  %r202 = sub i32 %r187, 1
  %r203 = sub i32 %r202, %r199
  %r204 = icmp slt i32 %r133, %r203
  br i1 %r204, label %bb15, label %bb16

bb15:
  %r140 = getelementptr i32, i32* %r100, i32 %r199
  %r141 = load i32, i32* %r140
  %r219 = add i32 %r141, 0
  br label %bb17

bb16:
  %r216 = sub i32 %r187, 1
  %r217 = sub i32 %r216, %r199
  %r218 = add i32 %r217, 0
  br label %bb17

bb17:
  %r205 = phi i32 [ %r219, %bb15 ], [ %r218, %bb16 ]
  br label %bb18

bb18:
  %r206 = phi i32 [ %r205, %bb17 ], [ %r215, %bb23 ]
  %r207 = sub i32 0, 1
  %r208 = icmp sgt i32 %r206, %r207
  br i1 %r208, label %bb19, label %bb20

bb19:
  %r211 = add i32 %r199, %r206
  %r212 = add i32 %r211, 0
  %r153 = getelementptr [10 x i32 ], [10 x i32 ]* %r110, i32 0, i32 %r212
  %r154 = load i32, i32* %r153
  %r213 = icmp ne i32 %r154, 0
  br i1 %r213, label %bb21, label %bb22

bb21:
  %r157 = getelementptr [10 x i32 ], [10 x i32 ]* %r110, i32 0, i32 %r199
  store i32 1, i32* %r157
  br label %bb23

bb22:
  br label %bb23

bb23:
  %r214 = sub i32 %r206, 1
  %r215 = add i32 %r214, 0
  br label %bb18

bb20:
  %r209 = sub i32 %r199, 1
  %r210 = add i32 %r209, 0
  br label %bb12

bb14:
  %r162 = getelementptr [10 x i32 ], [10 x i32 ]* %r110, i32 0, i32 0
  %r163 = load i32, i32* %r162
  ret i32 %r163
}

define i32 @main( ) {
bb24:
  call void @_sysy_starttime(i32 42)
  %r223 = add i32 0, 0
  %r165 = alloca [ 10 x i32 ]
  %r166 = getelementptr [10 x i32 ], [10 x i32 ]* %r165, i32 0, i32 0
  store i32 3, i32* %r166
  %r167 = getelementptr [10 x i32 ], [10 x i32 ]* %r165, i32 0, i32 1
  store i32 3, i32* %r167
  %r168 = getelementptr [10 x i32 ], [10 x i32 ]* %r165, i32 0, i32 2
  store i32 9, i32* %r168
  %r169 = getelementptr [10 x i32 ], [10 x i32 ]* %r165, i32 0, i32 3
  store i32 0, i32* %r169
  %r170 = getelementptr [10 x i32 ], [10 x i32 ]* %r165, i32 0, i32 4
  store i32 0, i32* %r170
  %r171 = getelementptr [10 x i32 ], [10 x i32 ]* %r165, i32 0, i32 5
  store i32 1, i32* %r171
  %r172 = getelementptr [10 x i32 ], [10 x i32 ]* %r165, i32 0, i32 6
  store i32 1, i32* %r172
  %r173 = getelementptr [10 x i32 ], [10 x i32 ]* %r165, i32 0, i32 7
  store i32 5, i32* %r173
  %r174 = getelementptr [10 x i32 ], [10 x i32 ]* %r165, i32 0, i32 8
  store i32 7, i32* %r174
  %r175 = getelementptr [10 x i32 ], [10 x i32 ]* %r165, i32 0, i32 9
  store i32 8, i32* %r175
  %r224 = add i32 10, 0
  %r225 = call i32 @canJump(i32* %r165, i32 %r224)
  %r226 = add i32 %r225, 0
  call void @_sysy_stoptime(i32 49)
  ret i32 %r226
}

