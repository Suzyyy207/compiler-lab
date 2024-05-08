declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
define i32 @main( ) {
bb1:
  %r122 = alloca i32
  %r120 = alloca i32
  %r118 = alloca i32
  %r116 = alloca i32
  %r114 = alloca i32
  %r110 = alloca i32
  %r101 = alloca i32
  call void @_sysy_starttime(i32 2)
  %r100 = alloca i32
  store i32 0, i32* %r100
  %r102 = alloca i32
  %r104 = icmp slt i32 1, 9
  br i1 %r104, label %bb4, label %bb3

bb4:
  %r105 = load i32, i32* %r100
  %r106 = icmp sgt i32 %r105, 0
  br i1 %r106, label %bb2, label %bb3

bb2:
  store i32 1, i32* %r102
  br label %bb5

bb3:
  store i32 0, i32* %r102
  br label %bb5

bb5:
  %r107 = load i32, i32* %r102
  store i32 %r107, i32* %r101
  br label %bb6

bb6:
  %r108 = load i32, i32* %r100
  %r109 = icmp slt i32 %r108, 1000000
  br i1 %r109, label %bb7, label %bb8

bb7:
  store i32 0, i32* %r110
  %r111 = load i32, i32* %r100
  %r112 = add i32 %r111, 1
  store i32 %r112, i32* %r100
  br label %bb6

bb8:
  %r113 = load i32, i32* %r101
  call void @putint(i32 %r113)
  call void @_sysy_stoptime(i32 10)
  ret i32 0
  store i32 1, i32* %r114
  %r115 = load i32, i32* %r114
  ret i32 %r115
  store i32 2, i32* %r116
  %r117 = load i32, i32* %r116
  ret i32 %r117
  store i32 3, i32* %r118
  %r119 = load i32, i32* %r118
  ret i32 %r119
  store i32 4, i32* %r120
  %r121 = load i32, i32* %r120
  ret i32 %r121
  store i32 5, i32* %r122
  ret i32 0
}

