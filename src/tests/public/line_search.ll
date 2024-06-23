declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
define i32 @main( ) {
bb1:
  %r155 = add i32 0, 0
  %r156 = add i32 0, 0
  %r157 = add i32 0, 0
  %r158 = add i32 0, 0
  %r159 = add i32 0, 0
  %r160 = add i32 0, 0
  %r161 = add i32 0, 0
  call void @_sysy_starttime(i32 3)
  %r162 = add i32 0, 0
  %r163 = add i32 0, 0
  %r102 = alloca [ 10 x i32 ]
  %r164 = add i32 0, 0
  %r165 = add i32 0, 0
  br label %bb2

bb2:
  %r166 = phi i32 [ %r165, %bb1 ], [ %r197, %bb3 ]
  %r167 = icmp slt i32 %r166, 10
  br i1 %r167, label %bb3, label %bb4

bb3:
  %r195 = add i32 %r166, 1
  %r108 = getelementptr [10 x i32 ], [10 x i32 ]* %r102, i32 0, i32 %r166
  store i32 %r195, i32* %r108
  %r196 = add i32 %r166, 1
  %r197 = add i32 %r196, 0
  br label %bb2

bb4:
  %r168 = add i32 10, 0
  %r169 = call i32 @getint()
  %r170 = add i32 %r169, 0
  %r171 = sub i32 %r168, 1
  %r172 = add i32 %r171, 0
  %r173 = add i32 0, 0
  %r174 = add i32 %r172, %r173
  %r175 = sdiv i32 %r174, 2
  %r176 = add i32 %r175, 0
  %r177 = add i32 0, 0
  %r178 = add i32 0, 0
  %r179 = add i32 0, 0
  br label %bb5

bb5:
  %r180 = phi i32 [ %r177, %bb4 ], [ %r189, %bb11 ]
  %r181 = phi i32 [ %r179, %bb4 ], [ %r190, %bb11 ]
  %r182 = phi i32 [ %r178, %bb4 ], [ %r192, %bb11 ]
  %r183 = icmp slt i32 %r182, 10
  br i1 %r183, label %bb8, label %bb7

bb8:
  %r187 = icmp eq i32 %r180, 0
  br i1 %r187, label %bb6, label %bb7

bb6:
  %r131 = getelementptr [10 x i32 ], [10 x i32 ]* %r102, i32 0, i32 %r182
  %r132 = load i32, i32* %r131
  %r188 = icmp eq i32 %r132, %r170
  br i1 %r188, label %bb9, label %bb10

bb9:
  %r193 = add i32 1, 0
  %r194 = add i32 %r182, 0
  br label %bb11

bb10:
  br label %bb11

bb11:
  %r189 = phi i32 [ %r193, %bb9 ], [ %r180, %bb10 ]
  %r190 = phi i32 [ %r194, %bb9 ], [ %r181, %bb10 ]
  %r191 = add i32 %r182, 1
  %r192 = add i32 %r191, 0
  br label %bb5

bb7:
  %r184 = icmp eq i32 %r180, 1
  br i1 %r184, label %bb12, label %bb13

bb12:
  call void @putint(i32 %r181)
  br label %bb14

bb13:
  %r186 = add i32 0, 0
  call void @putint(i32 %r186)
  br label %bb14

bb14:
  %r185 = add i32 10, 0
  call void @putch(i32 %r185)
  call void @_sysy_stoptime(i32 53)
  ret i32 0
}

