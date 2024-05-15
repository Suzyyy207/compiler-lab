declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
define i32 @main( ) {
bb1:
  %r163 = add i32 0, 0
  %r164 = add i32 0, 0
  %r165 = add i32 0, 0
  %r166 = add i32 0, 0
  %r167 = add i32 0, 0
  call void @_sysy_starttime(i32 3)
  %r168 = add i32 0, 0
  %r169 = add i32 0, 0
  %r102 = alloca [ 10 x i32 ]
  %r170 = add i32 0, 0
  %r171 = add i32 0, 0
  br label %bb2

bb2:
  %r172 = phi i32 [ %r171, %bb1 ], [ %r203, %bb3 ]
  %r173 = icmp slt i32 %r172, 10
  br i1 %r173, label %bb3, label %bb4

bb3:
  %r201 = add i32 %r172, 1
  %r108 = getelementptr [10 x i32 ], [10 x i32 ]* %r102, i32 0, i32 %r172
  store i32 %r201, i32* %r108
  %r202 = add i32 %r172, 1
  %r203 = add i32 %r202, 0
  br label %bb2

bb4:
  %r174 = add i32 10, 0
  %r175 = call i32 @getint()
  %r176 = add i32 %r175, 0
  %r177 = sub i32 %r174, 1
  %r178 = add i32 %r177, 0
  %r179 = add i32 0, 0
  %r180 = add i32 %r178, %r179
  %r181 = sdiv i32 %r180, 2
  %r182 = add i32 %r181, 0
  br label %bb5

bb5:
  %r183 = phi i32 [ %r178, %bb4 ], [ %r195, %bb11 ]
  %r184 = phi i32 [ %r179, %bb4 ], [ %r196, %bb11 ]
  %r185 = phi i32 [ %r182, %bb4 ], [ %r193, %bb11 ]
  %r125 = getelementptr [10 x i32 ], [10 x i32 ]* %r102, i32 0, i32 %r185
  %r126 = load i32, i32* %r125
  %r186 = icmp ne i32 %r126, %r176
  br i1 %r186, label %bb8, label %bb7

bb8:
  %r190 = icmp slt i32 %r184, %r183
  br i1 %r190, label %bb6, label %bb7

bb6:
  %r191 = add i32 %r183, %r184
  %r192 = sdiv i32 %r191, 2
  %r193 = add i32 %r192, 0
  %r138 = getelementptr [10 x i32 ], [10 x i32 ]* %r102, i32 0, i32 %r193
  %r139 = load i32, i32* %r138
  %r194 = icmp slt i32 %r176, %r139
  br i1 %r194, label %bb9, label %bb10

bb9:
  %r199 = sub i32 %r193, 1
  %r200 = add i32 %r199, 0
  br label %bb11

bb10:
  %r197 = add i32 %r193, 1
  %r198 = add i32 %r197, 0
  br label %bb11

bb11:
  %r195 = phi i32 [ %r200, %bb9 ], [ %r183, %bb10 ]
  %r196 = phi i32 [ %r184, %bb9 ], [ %r198, %bb10 ]
  br label %bb5

bb7:
  %r147 = getelementptr [10 x i32 ], [10 x i32 ]* %r102, i32 0, i32 %r185
  %r148 = load i32, i32* %r147
  %r187 = icmp eq i32 %r176, %r148
  br i1 %r187, label %bb12, label %bb13

bb12:
  call void @putint(i32 %r176)
  br label %bb14

bb13:
  %r189 = add i32 0, 0
  call void @putint(i32 %r189)
  br label %bb14

bb14:
  %r188 = add i32 10, 0
  call void @putch(i32 %r188)
  call void @_sysy_stoptime(i32 49)
  ret i32 0
}

