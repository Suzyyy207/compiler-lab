declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
define i32 @quickread( ) {
bb1:
  %r100 = alloca i32
  store i32 0, i32* %r100
  %r101 = alloca i32
  store i32 0, i32* %r101
  %r102 = load i32, i32* %r101
  %r103 = icmp ne i32 %r102, 0
  br i1 %r103, label %bb2, label %bb3

bb2:
  %r104 = load i32, i32* %r100
  %r105 = sub i32 0, %r104
  ret i32 %r105
  br label %bb4

bb3:
  %r106 = load i32, i32* %r100
  ret i32 %r106
  br label %bb4

bb4:
  ret i32 0
}

declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
define i32 @quickread( ) {
bb1:
  %r107 = add i32 0, 0
  %r108 = add i32 0, 0
  %r103 = icmp ne i32 %r108, 0
  br i1 %r103, label %bb2, label %bb3

bb2:
  %r105 = sub i32 0, %r107
  ret i32 %r105
  br label %bb4

bb3:
  ret i32 %r107
  br label %bb4

bb4:
  ret i32 0
}

