declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
%Node = type { i32, i32 }
@d = global %Node zeroinitializer
@e = global [ 10 x %Node ] zeroinitializer
define void @foo( %Node* %r100 ) {
bb1:
  %r134 = call i32 @getint()
  %r135 = getelementptr %Node, %Node* %r100, i32 0, i32 0
  store i32 %r134, i32* %r102
  %r136 = call i32 @getint()
  %r137 = getelementptr %Node, %Node* %r100, i32 0, i32 1
  store i32 %r136, i32* %r104
  ret void
}

define void @baz( %Node* %r105 ) {
bb2:
  %r138 = call i32 @getint()
  %r107 = getelementptr %Node, %Node* %r105, i32 2
  %r139 = getelementptr %Node, %Node* %r107, i32 0, i32 0
  store i32 %r138, i32* %r108
  %r140 = call i32 @getint()
  %r110 = getelementptr %Node, %Node* %r105, i32 2
  %r141 = getelementptr %Node, %Node* %r110, i32 0, i32 1
  store i32 %r140, i32* %r111
  ret void
}

define i32 @main( ) {
bb3:
  call void @_sysy_starttime(i32 13)
  %r112 = alloca %Node
  %r142 = getelementptr %Node, %Node* %r112, i32 0, i32 0
  store i32 1, i32* %r113
  %r143 = getelementptr %Node, %Node* %r112, i32 0, i32 1
  store i32 2, i32* %r114
  %r115 = getelementptr %Node, %Node* %r112, i32 0, i32 0
  call void @foo(%Node* %r115)
  call void @foo(%Node* @d)
  %r116 = getelementptr [10 x %Node ], [10 x %Node ]* @e, i32 0, i32 0
  call void @baz(%Node* %r116)
  %r144 = getelementptr %Node, %Node* %r112, i32 0, i32 0
  %r118 = load i32, i32* %r117
  %r145 = getelementptr %Node, %Node* %r112, i32 0, i32 1
  %r120 = load i32, i32* %r119
  %r146 = add i32 %r118, %r120
  call void @putint(i32 %r146)
  %r147 = getelementptr %Node, %Node* @d, i32 0, i32 0
  %r123 = load i32, i32* %r122
  %r148 = getelementptr %Node, %Node* @d, i32 0, i32 1
  %r125 = load i32, i32* %r124
  %r149 = add i32 %r123, %r125
  call void @putint(i32 %r149)
  %r127 = getelementptr [10 x %Node ], [10 x %Node ]* @e, i32 0, i32 2
  %r150 = getelementptr %Node, %Node* %r127, i32 0, i32 0
  %r129 = load i32, i32* %r128
  %r130 = getelementptr [10 x %Node ], [10 x %Node ]* @e, i32 0, i32 2
  %r151 = getelementptr %Node, %Node* %r130, i32 0, i32 1
  %r132 = load i32, i32* %r131
  %r152 = add i32 %r129, %r132
  call void @putint(i32 %r152)
  call void @_sysy_stoptime(i32 19)
  ret i32 0
}

