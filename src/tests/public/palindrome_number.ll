declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
define i32 @mod( i32 %r100, i32 %r102 ) {
bb2:
  %r152 = add i32 0, 0
  %r153 = add i32 %r100, 0
  %r154 = add i32 0, 0
  %r155 = add i32 %r102, 0
  br label %bb1

bb1:
  %r156 = sdiv i32 %r153, %r155
  %r157 = mul i32 %r156, %r155
  %r158 = sub i32 %r153, %r157
  ret i32 %r158
}

define i32 @palindrome( i32 %r111 ) {
bb4:
  %r162 = add i32 0, 0
  %r163 = add i32 0, 0
  %r113 = alloca [ 4 x i32 ]
  %r164 = add i32 0, 0
  %r165 = add i32 %r111, 0
  br label %bb3

bb3:
  %r166 = add i32 0, 0
  br label %bb5

bb5:
  %r167 = phi i32 [ %r166, %bb3 ], [ %r179, %bb6 ]
  %r168 = phi i32 [ %r165, %bb3 ], [ %r177, %bb6 ]
  %r169 = icmp slt i32 %r167, 4
  br i1 %r169, label %bb6, label %bb7

bb6:
  %r175 = call i32 @mod(i32 %r168, i32 10)
  %r121 = getelementptr [4 x i32 ], [4 x i32 ]* %r113, i32 0, i32 %r167
  store i32 %r175, i32* %r121
  %r176 = sdiv i32 %r168, 10
  %r177 = add i32 %r176, 0
  %r178 = add i32 %r167, 1
  %r179 = add i32 %r178, 0
  br label %bb5

bb7:
  %r127 = getelementptr [4 x i32 ], [4 x i32 ]* %r113, i32 0, i32 0
  %r128 = load i32, i32* %r127
  %r129 = getelementptr [4 x i32 ], [4 x i32 ]* %r113, i32 0, i32 3
  %r130 = load i32, i32* %r129
  %r170 = icmp eq i32 %r128, %r130
  br i1 %r170, label %bb11, label %bb9

bb11:
  %r132 = getelementptr [4 x i32 ], [4 x i32 ]* %r113, i32 0, i32 1
  %r133 = load i32, i32* %r132
  %r134 = getelementptr [4 x i32 ], [4 x i32 ]* %r113, i32 0, i32 2
  %r135 = load i32, i32* %r134
  %r173 = icmp eq i32 %r133, %r135
  br i1 %r173, label %bb8, label %bb9

bb8:
  %r174 = add i32 1, 0
  br label %bb10

bb9:
  %r172 = add i32 0, 0
  br label %bb10

bb10:
  %r171 = phi i32 [ %r174, %bb8 ], [ %r172, %bb9 ]
  ret i32 %r171
}

define i32 @main( ) {
bb12:
  call void @_sysy_starttime(i32 30)
  %r182 = add i32 0, 0
  %r183 = add i32 1221, 0
  %r184 = add i32 0, 0
  %r185 = call i32 @palindrome(i32 %r183)
  %r186 = add i32 %r185, 0
  %r187 = icmp eq i32 %r186, 1
  br i1 %r187, label %bb13, label %bb14

bb13:
  call void @putint(i32 %r183)
  br label %bb15

bb14:
  %r189 = add i32 0, 0
  call void @putint(i32 %r189)
  br label %bb15

bb15:
  %r188 = add i32 10, 0
  call void @putch(i32 %r188)
  call void @_sysy_stoptime(i32 47)
  ret i32 0
}

