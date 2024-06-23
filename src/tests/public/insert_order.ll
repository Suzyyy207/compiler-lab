declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
@N = global i32 0
define i32 @insert( i32* %r100, i32 %r101 ) {
bb2:
  %r165 = add i32 0, 0
  %r166 = add i32 0, 0
  %r167 = add i32 0, 0
  %r168 = add i32 0, 0
  %r169 = add i32 %r101, 0
  br label %bb1

bb1:
  %r170 = add i32 0, 0
  br label %bb3

bb3:
  %r171 = phi i32 [ %r170, %bb1 ], [ %r182, %bb4 ]
  %r108 = getelementptr i32, i32* %r100, i32 %r171
  %r109 = load i32, i32* %r108
  %r172 = icmp sgt i32 %r169, %r109
  br i1 %r172, label %bb6, label %bb5

bb6:
  %r112 = load i32, i32* @N
  %r180 = icmp slt i32 %r171, %r112
  br i1 %r180, label %bb4, label %bb5

bb4:
  %r181 = add i32 %r171, 1
  %r182 = add i32 %r181, 0
  br label %bb3

bb5:
  %r116 = load i32, i32* @N
  %r173 = add i32 %r116, 0
  br label %bb7

bb7:
  %r174 = phi i32 [ %r173, %bb5 ], [ %r179, %bb8 ]
  %r175 = icmp sgt i32 %r174, %r171
  br i1 %r175, label %bb8, label %bb9

bb8:
  %r176 = sub i32 %r174, 1
  %r177 = add i32 %r176, 0
  %r124 = getelementptr i32, i32* %r100, i32 %r177
  %r125 = load i32, i32* %r124
  %r127 = getelementptr i32, i32* %r100, i32 %r174
  store i32 %r125, i32* %r127
  %r130 = getelementptr i32, i32* %r100, i32 %r171
  store i32 %r169, i32* %r130
  %r178 = sub i32 %r174, 1
  %r179 = add i32 %r178, 0
  br label %bb7

bb9:
  ret i32 0
}

define i32 @main( ) {
bb10:
  call void @_sysy_starttime(i32 27)
  store i32 10, i32* @N
  %r133 = alloca [ 11 x i32 ]
  %r134 = getelementptr [11 x i32 ], [11 x i32 ]* %r133, i32 0, i32 0
  store i32 1, i32* %r134
  %r135 = getelementptr [11 x i32 ], [11 x i32 ]* %r133, i32 0, i32 1
  store i32 3, i32* %r135
  %r136 = getelementptr [11 x i32 ], [11 x i32 ]* %r133, i32 0, i32 2
  store i32 4, i32* %r136
  %r137 = getelementptr [11 x i32 ], [11 x i32 ]* %r133, i32 0, i32 3
  store i32 7, i32* %r137
  %r138 = getelementptr [11 x i32 ], [11 x i32 ]* %r133, i32 0, i32 4
  store i32 8, i32* %r138
  %r139 = getelementptr [11 x i32 ], [11 x i32 ]* %r133, i32 0, i32 5
  store i32 11, i32* %r139
  %r140 = getelementptr [11 x i32 ], [11 x i32 ]* %r133, i32 0, i32 6
  store i32 13, i32* %r140
  %r141 = getelementptr [11 x i32 ], [11 x i32 ]* %r133, i32 0, i32 7
  store i32 18, i32* %r141
  %r142 = getelementptr [11 x i32 ], [11 x i32 ]* %r133, i32 0, i32 8
  store i32 56, i32* %r142
  %r143 = getelementptr [11 x i32 ], [11 x i32 ]* %r133, i32 0, i32 9
  store i32 78, i32* %r143
  %r185 = add i32 0, 0
  %r186 = add i32 0, 0
  %r187 = add i32 0, 0
  %r188 = call i32 @getint()
  %r189 = add i32 %r188, 0
  %r190 = call i32 @insert(i32* %r133, i32 %r189)
  %r191 = add i32 %r190, 0
  br label %bb11

bb11:
  %r192 = phi i32 [ %r187, %bb10 ], [ %r197, %bb12 ]
  %r150 = load i32, i32* @N
  %r193 = icmp slt i32 %r192, %r150
  br i1 %r193, label %bb12, label %bb13

bb12:
  %r153 = getelementptr [11 x i32 ], [11 x i32 ]* %r133, i32 0, i32 %r192
  %r154 = load i32, i32* %r153
  %r194 = add i32 %r154, 0
  call void @putint(i32 %r194)
  %r195 = add i32 10, 0
  call void @putch(i32 %r195)
  %r196 = add i32 %r192, 1
  %r197 = add i32 %r196, 0
  br label %bb11

bb13:
  call void @_sysy_stoptime(i32 54)
  ret i32 0
}

