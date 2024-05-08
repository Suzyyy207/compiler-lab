declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
@N = global i32 0
@newline = global i32 0
define i32 @factor( i32 %r100 ) {
bb1:
  %r101 = alloca i32
  %r102 = alloca i32
  store i32 0, i32* %r102
  store i32 1, i32* %r101
  br label %bb2

bb2:
  %r103 = load i32, i32* %r101
  %r104 = add i32 %r100, 1
  %r105 = icmp slt i32 %r103, %r104
  br i1 %r105, label %bb3, label %bb4

bb3:
  %r106 = load i32, i32* %r101
  %r107 = sdiv i32 %r100, %r106
  %r108 = load i32, i32* %r101
  %r109 = mul i32 %r107, %r108
  %r110 = icmp eq i32 %r109, %r100
  br i1 %r110, label %bb5, label %bb6

bb5:
  %r111 = load i32, i32* %r102
  %r112 = load i32, i32* %r101
  %r113 = add i32 %r111, %r112
  store i32 %r113, i32* %r102
  br label %bb7

bb7:
  %r114 = load i32, i32* %r101
  %r115 = add i32 %r114, 1
  store i32 %r115, i32* %r101
  br label %bb2

bb4:
  %r116 = load i32, i32* %r102
  ret i32 %r116
}

define i32 @main( ) {
bb8:
  call void @_sysy_starttime(i32 24)
  store i32 4, i32* @N
  store i32 10, i32* @newline
  %r117 = alloca i32
  %r118 = alloca i32
  store i32 1478, i32* %r118
  %r119 = alloca i32
  call void @_sysy_stoptime(i32 31)
  %r120 = load i32, i32* %r118
  %r121 = call i32 @factor(i32 %r120)
  ret i32 %r121
}

