declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
define void @move( i32 %r100, i32 %r102 ) {
bb2:
  %r101 = alloca i32
  store i32 %r100, i32* %r101
  %r103 = alloca i32
  store i32 %r102, i32* %r103
  br label %bb1

bb1:
  %r104 = load i32, i32* %r101
  %r105 = load i32, i32* %r101
  call void @putint(i32 %r105)
  call void @putch(i32 32)
  %r106 = load i32, i32* %r103
  %r107 = load i32, i32* %r103
  call void @putint(i32 %r107)
  call void @putch(i32 44)
  call void @putch(i32 32)
  ret void
}

define void @hanoi( i32 %r108, i32 %r110, i32 %r112, i32 %r114 ) {
bb4:
  %r109 = alloca i32
  store i32 %r108, i32* %r109
  %r111 = alloca i32
  store i32 %r110, i32* %r111
  %r113 = alloca i32
  store i32 %r112, i32* %r113
  %r115 = alloca i32
  store i32 %r114, i32* %r115
  br label %bb3

bb3:
  %r116 = load i32, i32* %r109
  %r117 = icmp eq i32 %r116, 1
  br i1 %r117, label %bb5, label %bb6

bb5:
  %r118 = load i32, i32* %r111
  %r119 = load i32, i32* %r111
  %r120 = load i32, i32* %r115
  %r121 = load i32, i32* %r115
  call void @move(i32 %r119, i32 %r121)
  br label %bb7

bb6:
  %r122 = load i32, i32* %r109
  %r123 = sub i32 %r122, 1
  %r124 = load i32, i32* %r111
  %r125 = load i32, i32* %r111
  %r126 = load i32, i32* %r115
  %r127 = load i32, i32* %r115
  %r128 = load i32, i32* %r113
  %r129 = load i32, i32* %r113
  call void @hanoi(i32 %r123, i32 %r125, i32 %r127, i32 %r129)
  %r130 = load i32, i32* %r111
  %r131 = load i32, i32* %r111
  %r132 = load i32, i32* %r115
  %r133 = load i32, i32* %r115
  call void @move(i32 %r131, i32 %r133)
  %r134 = load i32, i32* %r109
  %r135 = sub i32 %r134, 1
  %r136 = load i32, i32* %r113
  %r137 = load i32, i32* %r113
  %r138 = load i32, i32* %r111
  %r139 = load i32, i32* %r111
  %r140 = load i32, i32* %r115
  %r141 = load i32, i32* %r115
  call void @hanoi(i32 %r135, i32 %r137, i32 %r139, i32 %r141)
  br label %bb7

bb7:
  ret void
}

define i32 @main( ) {
bb8:
  %r143 = call i32 @getint()
  %r142 = alloca i32
  store i32 %r143, i32* %r142
  br label %bb9

bb9:
  %r144 = load i32, i32* %r142
  %r145 = icmp sgt i32 %r144, 0
  br i1 %r145, label %bb10, label %bb11

bb10:
  %r146 = call i32 @getint()
  call void @hanoi(i32 %r146, i32 1, i32 2, i32 3)
  call void @putch(i32 10)
  %r147 = load i32, i32* %r142
  %r148 = sub i32 %r147, 1
  store i32 %r148, i32* %r142
  br label %bb9

bb11:
  ret i32 0
}

