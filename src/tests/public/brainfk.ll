declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
@TAPE_LEN = global i32 65536
@BUFFER_LEN = global i32 32768
@tape = global [ 65536 x i32 ] zeroinitializer
@program = global [ 32768 x i32 ] zeroinitializer
@ptr = global i32 0
define void @read_program( ) {
bb1:
  %r185 = add i32 0, 0
  %r186 = add i32 0, 0
  %r187 = call i32 @getint()
  %r188 = add i32 0, 0
  %r189 = add i32 %r187, 0
  br label %bb2

bb2:
  %r190 = phi i32 [ %r186, %bb1 ], [ %r194, %bb3 ]
  %r191 = icmp slt i32 %r190, %r189
  br i1 %r191, label %bb3, label %bb4

bb3:
  %r192 = call i32 @getch()
  %r108 = getelementptr [32768 x i32 ], [32768 x i32 ]* @program, i32 0, i32 %r190
  store i32 %r192, i32* %r108
  %r193 = add i32 %r190, 1
  %r194 = add i32 %r193, 0
  br label %bb2

bb4:
  %r112 = getelementptr [32768 x i32 ], [32768 x i32 ]* @program, i32 0, i32 %r190
  store i32 0, i32* %r112
  ret void
}

define void @interpret( i32* %r113 ) {
bb5:
  %r198 = add i32 0, 0
  %r199 = add i32 0, 0
  %r200 = add i32 0, 0
  %r201 = add i32 0, 0
  br label %bb6

bb6:
  %r202 = phi i32 [ %r201, %bb5 ], [ %r214, %bb29 ]
  %r118 = getelementptr i32, i32* %r113, i32 %r202
  %r119 = load i32, i32* %r118
  %r203 = icmp ne i32 %r119, 0
  br i1 %r203, label %bb7, label %bb8

bb7:
  %r122 = getelementptr i32, i32* %r113, i32 %r202
  %r123 = load i32, i32* %r122
  %r204 = add i32 %r123, 0
  %r205 = icmp eq i32 %r204, 62
  br i1 %r205, label %bb9, label %bb10

bb9:
  %r126 = load i32, i32* @ptr
  %r235 = add i32 %r126, 1
  store i32 %r235, i32* @ptr
  br label %bb11

bb10:
  br label %bb11

bb11:
  %r206 = icmp eq i32 %r204, 60
  br i1 %r206, label %bb12, label %bb13

bb12:
  %r130 = load i32, i32* @ptr
  %r234 = sub i32 %r130, 1
  store i32 %r234, i32* @ptr
  br label %bb14

bb13:
  br label %bb14

bb14:
  %r207 = icmp eq i32 %r204, 43
  br i1 %r207, label %bb15, label %bb16

bb15:
  %r134 = load i32, i32* @ptr
  %r135 = getelementptr [65536 x i32 ], [65536 x i32 ]* @tape, i32 0, i32 %r134
  %r136 = load i32, i32* %r135
  %r233 = add i32 %r136, 1
  %r138 = load i32, i32* @ptr
  %r139 = getelementptr [65536 x i32 ], [65536 x i32 ]* @tape, i32 0, i32 %r138
  store i32 %r233, i32* %r139
  br label %bb17

bb16:
  br label %bb17

bb17:
  %r208 = icmp eq i32 %r204, 45
  br i1 %r208, label %bb18, label %bb19

bb18:
  %r142 = load i32, i32* @ptr
  %r143 = getelementptr [65536 x i32 ], [65536 x i32 ]* @tape, i32 0, i32 %r142
  %r144 = load i32, i32* %r143
  %r232 = sub i32 %r144, 1
  %r146 = load i32, i32* @ptr
  %r147 = getelementptr [65536 x i32 ], [65536 x i32 ]* @tape, i32 0, i32 %r146
  store i32 %r232, i32* %r147
  br label %bb20

bb19:
  br label %bb20

bb20:
  %r209 = icmp eq i32 %r204, 46
  br i1 %r209, label %bb21, label %bb22

bb21:
  %r150 = load i32, i32* @ptr
  %r151 = getelementptr [65536 x i32 ], [65536 x i32 ]* @tape, i32 0, i32 %r150
  %r152 = load i32, i32* %r151
  call void @putch(i32 %r152)
  br label %bb23

bb22:
  br label %bb23

bb23:
  %r210 = icmp eq i32 %r204, 44
  br i1 %r210, label %bb24, label %bb25

bb24:
  %r231 = call i32 @getch()
  %r156 = load i32, i32* @ptr
  %r157 = getelementptr [65536 x i32 ], [65536 x i32 ]* @tape, i32 0, i32 %r156
  store i32 %r231, i32* %r157
  br label %bb26

bb25:
  br label %bb26

bb26:
  %r211 = icmp eq i32 %r204, 93
  br i1 %r211, label %bb30, label %bb28

bb30:
  %r161 = load i32, i32* @ptr
  %r162 = getelementptr [65536 x i32 ], [65536 x i32 ]* @tape, i32 0, i32 %r161
  %r163 = load i32, i32* %r162
  %r215 = icmp ne i32 %r163, 0
  br i1 %r215, label %bb27, label %bb28

bb27:
  %r216 = add i32 1, 0
  br label %bb31

bb31:
  %r217 = phi i32 [ %r216, %bb27 ], [ %r226, %bb39 ]
  %r218 = phi i32 [ %r202, %bb27 ], [ %r221, %bb39 ]
  %r219 = icmp sgt i32 %r217, 0
  br i1 %r219, label %bb32, label %bb33

bb32:
  %r220 = sub i32 %r218, 1
  %r221 = add i32 %r220, 0
  %r170 = getelementptr i32, i32* %r113, i32 %r221
  %r171 = load i32, i32* %r170
  %r222 = add i32 %r171, 0
  %r223 = icmp eq i32 %r222, 91
  br i1 %r223, label %bb34, label %bb35

bb34:
  %r229 = sub i32 %r217, 1
  %r230 = add i32 %r229, 0
  br label %bb36

bb35:
  br label %bb36

bb36:
  %r224 = phi i32 [ %r230, %bb34 ], [ %r217, %bb35 ]
  %r225 = icmp eq i32 %r222, 93
  br i1 %r225, label %bb37, label %bb38

bb37:
  %r227 = add i32 %r224, 1
  %r228 = add i32 %r227, 0
  br label %bb39

bb38:
  br label %bb39

bb39:
  %r226 = phi i32 [ %r228, %bb37 ], [ %r224, %bb38 ]
  br label %bb31

bb33:
  br label %bb29

bb28:
  br label %bb29

bb29:
  %r212 = phi i32 [ %r218, %bb33 ], [ %r202, %bb28 ]
  %r213 = add i32 %r212, 1
  %r214 = add i32 %r213, 0
  br label %bb6

bb8:
  ret void
}

define i32 @main( ) {
bb40:
  call void @_sysy_starttime(i32 76)
  call void @read_program()
  %r182 = getelementptr [32768 x i32 ], [32768 x i32 ]* @program, i32 0, i32 0
  call void @interpret(i32* %r182)
  call void @putch(i32 10)
  call void @_sysy_stoptime(i32 80)
  ret i32 0
}

