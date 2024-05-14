declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
@n = global i32 0
@m = global i32 0
@to = global [ 5005 x i32 ] zeroinitializer
@next = global [ 5005 x i32 ] zeroinitializer
@head = global [ 1005 x i32 ] zeroinitializer
@cnt = global i32 0
@que = global [ 1005 x i32 ] zeroinitializer
@h = global i32 0
@tail = global i32 0
@inq = global [ 1005 x i32 ] zeroinitializer
define void @addedge( i32 %r100, i32 %r102 ) {
bb2:
  %r132 = add i32 0, 0
  %r133 = add i32 %r100, 0
  %r134 = add i32 0, 0
  %r135 = add i32 %r102, 0
  br label %bb1

bb1:
  %r105 = load i32, i32* @cnt
  %r106 = getelementptr [5005 x i32 ], [5005 x i32 ]* @to, i32 0, i32 %r105
  store i32 %r131, i32* %r106
  %r108 = getelementptr [1005 x i32 ], [1005 x i32 ]* @head, i32 0, i32 %r133
  %r109 = load i32, i32* %r108
  %r110 = load i32, i32* @cnt
  %r111 = getelementptr [5005 x i32 ], [5005 x i32 ]* @next, i32 0, i32 %r110
  store i32 %r109, i32* %r111
  %r112 = load i32, i32* @cnt
  %r114 = getelementptr [1005 x i32 ], [1005 x i32 ]* @head, i32 0, i32 %r133
  store i32 %r112, i32* %r114
  %r115 = load i32, i32* @cnt
  %r136 = add i32 %r115, 1
  store i32 %r116, i32* @cnt
  %r118 = load i32, i32* @cnt
  %r119 = getelementptr [5005 x i32 ], [5005 x i32 ]* @to, i32 0, i32 %r118
  store i32 %r130, i32* %r119
  %r121 = getelementptr [1005 x i32 ], [1005 x i32 ]* @head, i32 0, i32 %r135
  %r122 = load i32, i32* %r121
  %r123 = load i32, i32* @cnt
  %r124 = getelementptr [5005 x i32 ], [5005 x i32 ]* @next, i32 0, i32 %r123
  store i32 %r122, i32* %r124
  %r125 = load i32, i32* @cnt
  %r127 = getelementptr [1005 x i32 ], [1005 x i32 ]* @head, i32 0, i32 %r135
  store i32 %r125, i32* %r127
  %r128 = load i32, i32* @cnt
  %r137 = add i32 %r128, 1
  store i32 %r129, i32* @cnt
  ret void
}

