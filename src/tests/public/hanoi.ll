declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
define void @move( i32 %r100, i32 %r102 ) {
bb2:
  %r151 = add i32 0, 0
  %r152 = add i32 %r100, 0
  %r153 = add i32 0, 0
  %r154 = add i32 %r102, 0
  br label %bb1

bb1:
  call void @putint(i32 %r152)
  call void @putch(i32 32)
  call void @putint(i32 %r154)
  call void @putch(i32 44)
  call void @putch(i32 32)
  ret void
}

define void @hanoi( i32 %r108, i32 %r110, i32 %r112, i32 %r114 ) {
bb4:
  %r159 = add i32 0, 0
  %r160 = add i32 %r108, 0
  %r161 = add i32 0, 0
  %r162 = add i32 %r110, 0
  %r163 = add i32 0, 0
  %r164 = add i32 %r112, 0
  %r165 = add i32 0, 0
  %r166 = add i32 %r114, 0
  br label %bb3

bb3:
  %r167 = icmp eq i32 %r160, 1
  br i1 %r167, label %bb5, label %bb6

bb5:
  call void @move(i32 %r162, i32 %r166)
  br label %bb7

bb6:
  %r168 = sub i32 %r160, 1
  call void @hanoi(i32 %r168, i32 %r162, i32 %r166, i32 %r164)
  call void @move(i32 %r162, i32 %r166)
  %r169 = sub i32 %r160, 1
  call void @hanoi(i32 %r169, i32 %r164, i32 %r162, i32 %r166)
  br label %bb7

bb7:
  ret void
}

define i32 @main( ) {
bb8:
  call void @_sysy_starttime(i32 21)
  %r171 = call i32 @getint()
  %r172 = add i32 0, 0
  %r173 = add i32 %r171, 0
  br label %bb9

bb9:
  %r174 = phi i32 [ %r173, %bb8 ], [ %r178, %bb10 ]
  %r175 = icmp sgt i32 %r174, 0
  br i1 %r175, label %bb10, label %bb11

bb10:
  %r176 = call i32 @getint()
  call void @hanoi(i32 %r176, i32 1, i32 2, i32 3)
  call void @putch(i32 10)
  %r177 = sub i32 %r174, 1
  %r178 = add i32 %r177, 0
  br label %bb9

bb11:
  call void @_sysy_stoptime(i32 28)
  ret i32 0
}

