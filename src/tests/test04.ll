declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
@a = global i32 1
define i32 @foo( i32 %r100 ) {
bb1:
  store i32 %r100, i32* @a
  ret i32 1
}

define i32 @main( ) {
bb2:
  call void @_sysy_starttime(i32 9)
  %r101 = alloca i32
  store i32 1, i32* %r101
  %r102 = alloca i32
  %r103 = call i32 @foo(i32 2)
  %r104 = icmp sgt i32 %r103, 0
  br i1 %r104, label %bb3, label %bb6

bb6:
  %r105 = call i32 @foo(i32 3)
  %r106 = icmp sgt i32 %r105, 0
  br i1 %r106, label %bb3, label %bb4

bb3:
  store i32 2, i32* %r101
  br label %bb5

bb5:
  %r107 = load i32, i32* @a
  call void @putint(i32 %r107)
  %r108 = load i32, i32* %r101
  call void @putint(i32 %r108)
  call void @_sysy_stoptime(i32 17)
  ret i32 0
}

