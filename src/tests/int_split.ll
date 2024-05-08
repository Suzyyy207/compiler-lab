declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
@N = global i32 0
@newline = global i32 0
define i32 @mod( i32 %r100, i32 %r101 ) {
bb1:
  %r102 = sdiv i32 %r100, %r101
  %r103 = mul i32 %r102, %r101
  %r104 = sub i32 %r100, %r103
  ret i32 %r104
}

define i32 @split( i32 %r105, i32* %r106 ) {
bb2:
  %r107 = alloca i32
  %r108 = load i32, i32* @N
  %r109 = sub i32 %r108, 1
  store i32 %r109, i32* %r107
  br label %bb3

bb3:
  %r110 = load i32, i32* %r107
  %r111 = sub i32 0, 1
  %r112 = icmp ne i32 %r110, %r111
  br i1 %r112, label %bb4, label %bb5

bb4:
  %r113 = call i32 @mod(i32 %r105, i32 10)
  %r114 = load i32, i32* %r107
  %r115 = getelementptr i32, i32* %r106, i32 %r114
  store i32 %r113, i32* %r115
  %r116 = sdiv i32 %r105, 10
  store i32 %r116, i32* %r105
  %r117 = load i32, i32* %r107
  %r118 = sub i32 %r117, 1
  store i32 %r118, i32* %r107
  br label %bb3

bb5:
  ret i32 0
}

define i32 @main( ) {
bb6:
  store i32 4, i32* @N
  store i32 10, i32* @newline
  %r119 = alloca i32
  %r120 = alloca i32
  %r121 = alloca [ 4 x i32 ]
  store i32 1478, i32* %r120
  %r122 = load i32, i32* %r120
  %r123 = call i32 @split(i32 %r122, i32* %r121)
  store i32 %r123, i32* %r120
  %r124 = alloca i32
  store i32 0, i32* %r119
  br label %bb7

bb7:
  %r125 = load i32, i32* %r119
  %r126 = icmp slt i32 %r125, 4
  br i1 %r126, label %bb8, label %bb9

bb8:
  %r127 = load i32, i32* %r119
  %r128 = getelementptr [4 x i32 ], [4 x i32 ]* %r121, i32 0, i32 %r127
  %r129 = load i32, i32* %r128
  store i32 %r129, i32* %r124
  %r130 = load i32, i32* %r124
  call void @putint(i32 %r130)
  %r131 = load i32, i32* @newline
  call void @putch(i32 %r131)
  %r132 = load i32, i32* %r119
  %r133 = add i32 %r132, 1
  store i32 %r133, i32* %r119
  br label %bb7

bb9:
  ret i32 0
}

