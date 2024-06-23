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
@vis = global [ 1005 x i32 ] zeroinitializer
define i32 @quickread( ) {
bb1:
  %r238 = call i32 @getch()
  %r239 = add i32 0, 0
  %r240 = add i32 %r238, 0
  %r241 = add i32 0, 0
  %r242 = add i32 0, 0
  %r243 = add i32 0, 0
  %r244 = add i32 0, 0
  br label %bb2

bb2:
  %r245 = phi i32 [ %r240, %bb1 ], [ %r251, %bb8 ]
  %r246 = phi i32 [ %r244, %bb1 ], [ %r249, %bb8 ]
  %r247 = icmp slt i32 %r245, 48
  br i1 %r247, label %bb3, label %bb5

bb5:
  %r253 = icmp sgt i32 %r245, 57
  br i1 %r253, label %bb3, label %bb4

bb3:
  %r248 = icmp eq i32 %r245, 45
  br i1 %r248, label %bb6, label %bb7

bb6:
  %r252 = add i32 1, 0
  br label %bb8

bb7:
  br label %bb8

bb8:
  %r249 = phi i32 [ %r252, %bb6 ], [ %r246, %bb7 ]
  %r250 = call i32 @getch()
  %r251 = add i32 %r250, 0
  br label %bb2

bb4:
  br label %bb9

bb9:
  %r254 = phi i32 [ %r245, %bb4 ], [ %r265, %bb10 ]
  %r255 = phi i32 [ %r242, %bb4 ], [ %r263, %bb10 ]
  %r256 = icmp sge i32 %r254, 48
  br i1 %r256, label %bb12, label %bb11

bb12:
  %r259 = icmp sle i32 %r254, 57
  br i1 %r259, label %bb10, label %bb11

bb10:
  %r260 = mul i32 %r255, 10
  %r261 = add i32 %r260, %r254
  %r262 = sub i32 %r261, 48
  %r263 = add i32 %r262, 0
  %r264 = call i32 @getch()
  %r265 = add i32 %r264, 0
  br label %bb9

bb11:
  %r257 = icmp ne i32 %r246, 0
  br i1 %r257, label %bb13, label %bb14

bb13:
  %r258 = sub i32 0, %r255
  ret i32 %r258
bb14:
  ret i32 %r255
}

define void @addedge( i32 %r128, i32 %r130 ) {
bb17:
  %r268 = add i32 0, 0
  %r269 = add i32 %r128, 0
  %r270 = add i32 0, 0
  %r271 = add i32 %r130, 0
  br label %bb16

bb16:
  %r133 = load i32, i32* @cnt
  %r134 = getelementptr [5005 x i32 ], [5005 x i32 ]* @to, i32 0, i32 %r133
  store i32 %r271, i32* %r134
  %r136 = getelementptr [1005 x i32 ], [1005 x i32 ]* @head, i32 0, i32 %r269
  %r137 = load i32, i32* %r136
  %r138 = load i32, i32* @cnt
  %r139 = getelementptr [5005 x i32 ], [5005 x i32 ]* @next, i32 0, i32 %r138
  store i32 %r137, i32* %r139
  %r140 = load i32, i32* @cnt
  %r142 = getelementptr [1005 x i32 ], [1005 x i32 ]* @head, i32 0, i32 %r269
  store i32 %r140, i32* %r142
  %r143 = load i32, i32* @cnt
  %r272 = add i32 %r143, 1
  store i32 %r272, i32* @cnt
  %r146 = load i32, i32* @cnt
  %r147 = getelementptr [5005 x i32 ], [5005 x i32 ]* @to, i32 0, i32 %r146
  store i32 %r269, i32* %r147
  %r149 = getelementptr [1005 x i32 ], [1005 x i32 ]* @head, i32 0, i32 %r271
  %r150 = load i32, i32* %r149
  %r151 = load i32, i32* @cnt
  %r152 = getelementptr [5005 x i32 ], [5005 x i32 ]* @next, i32 0, i32 %r151
  store i32 %r150, i32* %r152
  %r153 = load i32, i32* @cnt
  %r155 = getelementptr [1005 x i32 ], [1005 x i32 ]* @head, i32 0, i32 %r271
  store i32 %r153, i32* %r155
  %r156 = load i32, i32* @cnt
  %r273 = add i32 %r156, 1
  store i32 %r273, i32* @cnt
  ret void
}

define void @init( ) {
bb18:
  %r275 = add i32 0, 0
  %r276 = add i32 0, 0
  br label %bb19

bb19:
  %r277 = phi i32 [ %r276, %bb18 ], [ %r281, %bb20 ]
  %r278 = icmp slt i32 %r277, 1005
  br i1 %r278, label %bb20, label %bb21

bb20:
  %r279 = sub i32 0, 1
  %r163 = getelementptr [1005 x i32 ], [1005 x i32 ]* @head, i32 0, i32 %r277
  store i32 %r279, i32* %r163
  %r280 = add i32 %r277, 1
  %r281 = add i32 %r280, 0
  br label %bb19

bb21:
  ret void
}

define void @clear( ) {
bb22:
  %r283 = add i32 0, 0
  %r284 = add i32 1, 0
  br label %bb23

bb23:
  %r285 = phi i32 [ %r284, %bb22 ], [ %r288, %bb24 ]
  %r168 = load i32, i32* @n
  %r286 = icmp sle i32 %r285, %r168
  br i1 %r286, label %bb24, label %bb25

bb24:
  %r171 = getelementptr [1005 x i32 ], [1005 x i32 ]* @vis, i32 0, i32 %r285
  store i32 0, i32* %r171
  %r287 = add i32 %r285, 1
  %r288 = add i32 %r287, 0
  br label %bb23

bb25:
  ret void
}

define i32 @same( i32 %r174, i32 %r176 ) {
bb27:
  %r293 = add i32 0, 0
  %r294 = add i32 0, 0
  %r295 = add i32 0, 0
  %r296 = add i32 %r174, 0
  %r297 = add i32 0, 0
  %r298 = add i32 %r176, 0
  br label %bb26

bb26:
  %r179 = getelementptr [1005 x i32 ], [1005 x i32 ]* @vis, i32 0, i32 %r296
  store i32 1, i32* %r179
  %r299 = icmp eq i32 %r296, %r298
  br i1 %r299, label %bb28, label %bb29

bb28:
  ret i32 1
bb29:
  br label %bb30

bb30:
  %r185 = getelementptr [1005 x i32 ], [1005 x i32 ]* @head, i32 0, i32 %r296
  %r186 = load i32, i32* %r185
  %r300 = add i32 %r186, 0
  br label %bb31

bb31:
  %r301 = phi i32 [ %r300, %bb30 ], [ %r306, %bb36 ]
  %r302 = sub i32 0, 1
  %r303 = icmp ne i32 %r301, %r302
  br i1 %r303, label %bb32, label %bb33

bb32:
  %r192 = getelementptr [5005 x i32 ], [5005 x i32 ]* @to, i32 0, i32 %r301
  %r193 = load i32, i32* %r192
  %r304 = add i32 %r193, 0
  %r196 = getelementptr [1005 x i32 ], [1005 x i32 ]* @vis, i32 0, i32 %r304
  %r197 = load i32, i32* %r196
  %r305 = icmp eq i32 %r197, 0
  br i1 %r305, label %bb37, label %bb35

bb37:
  %r307 = call i32 @same(i32 %r304, i32 %r298)
  %r308 = icmp ne i32 %r307, 0
  br i1 %r308, label %bb34, label %bb35

bb34:
  ret i32 1
bb35:
  br label %bb36

bb36:
  %r204 = getelementptr [5005 x i32 ], [5005 x i32 ]* @next, i32 0, i32 %r301
  %r205 = load i32, i32* %r204
  %r306 = add i32 %r205, 0
  br label %bb31

bb33:
  ret i32 0
}

define i32 @main( ) {
bb38:
  call void @_sysy_starttime(i32 74)
  %r312 = call i32 @quickread()
  store i32 %r312, i32* @n
  %r313 = call i32 @quickread()
  store i32 %r313, i32* @m
  call void @init()
  %r314 = add i32 0, 0
  %r315 = add i32 0, 0
  %r316 = add i32 0, 0
  %r317 = add i32 0, 0
  %r318 = add i32 0, 0
  %r319 = add i32 0, 0
  br label %bb39

bb39:
  %r211 = load i32, i32* @m
  %r320 = icmp ne i32 %r211, 0
  br i1 %r320, label %bb40, label %bb41

bb40:
  %r321 = call i32 @getch()
  %r322 = add i32 %r321, 0
  br label %bb42

bb42:
  %r323 = phi i32 [ %r322, %bb40 ], [ %r338, %bb43 ]
  %r324 = icmp ne i32 %r323, 81
  br i1 %r324, label %bb45, label %bb44

bb45:
  %r336 = icmp ne i32 %r323, 85
  br i1 %r336, label %bb43, label %bb44

bb43:
  %r337 = call i32 @getch()
  %r338 = add i32 %r337, 0
  br label %bb42

bb44:
  %r325 = icmp eq i32 %r323, 81
  br i1 %r325, label %bb46, label %bb47

bb46:
  %r331 = call i32 @quickread()
  %r332 = add i32 %r331, 0
  %r333 = call i32 @quickread()
  %r334 = add i32 %r333, 0
  call void @clear()
  %r335 = call i32 @same(i32 %r332, i32 %r334)
  call void @putint(i32 %r335)
  call void @putch(i32 10)
  br label %bb48

bb47:
  %r327 = call i32 @quickread()
  %r328 = add i32 %r327, 0
  %r329 = call i32 @quickread()
  %r330 = add i32 %r329, 0
  call void @addedge(i32 %r328, i32 %r330)
  br label %bb48

bb48:
  %r233 = load i32, i32* @m
  %r326 = sub i32 %r233, 1
  store i32 %r326, i32* @m
  br label %bb39

bb41:
  call void @_sysy_stoptime(i32 96)
  ret i32 0
}

