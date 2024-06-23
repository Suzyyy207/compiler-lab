declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
@N = global i32 0
@newline = global i32 0
define i32 @mod( i32 %r100, i32 %r102 ) {
bb2:
  %r146 = add i32 0, 0
  %r147 = add i32 %r100, 0
  %r148 = add i32 0, 0
  %r149 = add i32 %r102, 0
  br label %bb1

bb1:
  %r150 = sdiv i32 %r147, %r149
  %r151 = mul i32 %r150, %r149
  %r152 = sub i32 %r147, %r151
  ret i32 %r152
}

define i32 @split( i32 %r111, i32* %r113 ) {
bb4:
  %r155 = add i32 0, 0
  %r156 = add i32 0, 0
  %r157 = add i32 %r111, 0
  br label %bb3

bb3:
  %r115 = load i32, i32* @N
  %r158 = sub i32 %r115, 1
  %r159 = add i32 %r158, 0
  br label %bb5

bb5:
  %r160 = phi i32 [ %r157, %bb3 ], [ %r166, %bb6 ]
  %r161 = phi i32 [ %r159, %bb3 ], [ %r168, %bb6 ]
  %r162 = sub i32 0, 1
  %r163 = icmp ne i32 %r161, %r162
  br i1 %r163, label %bb6, label %bb7

bb6:
  %r164 = call i32 @mod(i32 %r160, i32 10)
  %r123 = getelementptr i32, i32* %r113, i32 %r161
  store i32 %r164, i32* %r123
  %r165 = sdiv i32 %r160, 10
  %r166 = add i32 %r165, 0
  %r167 = sub i32 %r161, 1
  %r168 = add i32 %r167, 0
  br label %bb5

bb7:
  ret i32 0
}

define i32 @main( ) {
bb8:
  call void @_sysy_starttime(i32 26)
  store i32 4, i32* @N
  store i32 10, i32* @newline
  %r172 = add i32 0, 0
  %r173 = add i32 0, 0
  %r130 = alloca [ 4 x i32 ]
  %r174 = add i32 1478, 0
  %r175 = call i32 @split(i32 %r174, i32* %r130)
  %r176 = add i32 %r175, 0
  %r177 = add i32 0, 0
  %r178 = add i32 0, 0
  br label %bb9

bb9:
  %r179 = phi i32 [ %r178, %bb8 ], [ %r183, %bb10 ]
  %r180 = icmp slt i32 %r179, 4
  br i1 %r180, label %bb10, label %bb11

bb10:
  %r137 = getelementptr [4 x i32 ], [4 x i32 ]* %r130, i32 0, i32 %r179
  %r138 = load i32, i32* %r137
  %r181 = add i32 %r138, 0
  call void @putint(i32 %r181)
  %r141 = load i32, i32* @newline
  call void @putch(i32 %r141)
  %r182 = add i32 %r179, 1
  %r183 = add i32 %r182, 0
  br label %bb9

bb11:
  call void @_sysy_stoptime(i32 42)
  ret i32 0
}

