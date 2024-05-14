declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
define i32 @quickread( ) {
bb1:
  %r101 = call i32 @getch()
  %r100 = alloca i32
  store i32 %r101, i32* %r100
  %r102 = alloca i32
  store i32 0, i32* %r102
  %r103 = load i32, i32* %r100
  %r104 = icmp sgt i32 %r103, 1
  br i1 %r104, label %bb2, label %bb3

bb2:
  store i32 1, i32* %r102
  br label %bb4

bb3:
  store i32 2, i32* %r102
  br label %bb4

bb4:
  %r105 = load i32, i32* %r102
  store i32 %r105, i32* %r100
  ret i32 0
}

