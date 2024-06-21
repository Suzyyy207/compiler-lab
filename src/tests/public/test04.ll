declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
@a = global i32 1
define i32 @foo( i32 %r100 ) {
bb2:
  %r101 = alloca i32
  store i32 %r100, i32* %r101
  br label %bb1

bb1:
  %r102 = load i32, i32* %r101
  store i32 %r102, i32* @a
  ret i32 1
}

define i32 @main( ) {
bb3:
  call void @_sysy_starttime(i32 9)
  %r103 = alloca i32
  store i32 1, i32* %r103
  %r105 = call i32 @foo(i32 2)
  %r106 = icmp sgt i32 %r105, 0
  br i1 %r106, label %bb4, label %bb7

bb7:
  %r107 = call i32 @foo(i32 3)
  %r108 = icmp sgt i32 %r107, 0
  br i1 %r108, label %bb4, label %bb5

bb4:
  store i32 2, i32* %r103
  br label %bb6

bb5:
  br label %bb6

bb6:
  %r109 = load i32, i32* @a
  call void @putint(i32 %r109)
  %r110 = load i32, i32* %r103
  %r111 = load i32, i32* %r103
  call void @putint(i32 %r111)
  call void @_sysy_stoptime(i32 17)
  ret i32 0
}

