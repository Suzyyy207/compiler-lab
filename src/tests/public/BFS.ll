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
define i32 @quickread( ) {
bb1:
  %r263 = call i32 @getch()
  %r264 = add i32 0, 0
  %r265 = add i32 %r263, 0
  %r266 = add i32 0, 0
  %r267 = add i32 0, 0
  %r268 = add i32 0, 0
  %r269 = add i32 0, 0
  br label %bb2

bb2:
  %r270 = phi i32 [ %r265, %bb1 ], [ %r276, %bb8 ]
  %r271 = phi i32 [ %r269, %bb1 ], [ %r274, %bb8 ]
  %r272 = icmp slt i32 %r270, 48
  br i1 %r272, label %bb3, label %bb5

bb5:
  %r278 = icmp sgt i32 %r270, 57
  br i1 %r278, label %bb3, label %bb4

bb3:
  %r273 = icmp eq i32 %r270, 45
  br i1 %r273, label %bb6, label %bb7

bb6:
  %r277 = add i32 1, 0
  br label %bb8

bb7:
  br label %bb8

bb8:
  %r274 = phi i32 [ %r277, %bb6 ], [ %r271, %bb7 ]
  %r275 = call i32 @getch()
  %r276 = add i32 %r275, 0
  br label %bb2

bb4:
  br label %bb9

bb9:
  %r279 = phi i32 [ %r270, %bb4 ], [ %r290, %bb10 ]
  %r280 = phi i32 [ %r267, %bb4 ], [ %r288, %bb10 ]
  %r281 = icmp sge i32 %r279, 48
  br i1 %r281, label %bb12, label %bb11

bb12:
  %r284 = icmp sle i32 %r279, 57
  br i1 %r284, label %bb10, label %bb11

bb10:
  %r285 = mul i32 %r280, 10
  %r286 = add i32 %r285, %r279
  %r287 = sub i32 %r286, 48
  %r288 = add i32 %r287, 0
  %r289 = call i32 @getch()
  %r290 = add i32 %r289, 0
  br label %bb9

bb11:
  %r282 = icmp ne i32 %r271, 0
  br i1 %r282, label %bb13, label %bb14

bb13:
  %r283 = sub i32 0, %r280
  ret i32 %r283
bb14:
  ret i32 %r280
}

define void @addedge( i32 %r128, i32 %r130 ) {
bb17:
  %r293 = add i32 0, 0
  %r294 = add i32 %r128, 0
  %r295 = add i32 0, 0
  %r296 = add i32 %r130, 0
  br label %bb16

bb16:
  %r133 = load i32, i32* @cnt
  %r134 = getelementptr [5005 x i32 ], [5005 x i32 ]* @to, i32 0, i32 %r133
  store i32 %r296, i32* %r134
  %r136 = getelementptr [1005 x i32 ], [1005 x i32 ]* @head, i32 0, i32 %r294
  %r137 = load i32, i32* %r136
  %r138 = load i32, i32* @cnt
  %r139 = getelementptr [5005 x i32 ], [5005 x i32 ]* @next, i32 0, i32 %r138
  store i32 %r137, i32* %r139
  %r140 = load i32, i32* @cnt
  %r142 = getelementptr [1005 x i32 ], [1005 x i32 ]* @head, i32 0, i32 %r294
  store i32 %r140, i32* %r142
  %r143 = load i32, i32* @cnt
  %r297 = add i32 %r143, 1
  store i32 %r297, i32* @cnt
  %r146 = load i32, i32* @cnt
  %r147 = getelementptr [5005 x i32 ], [5005 x i32 ]* @to, i32 0, i32 %r146
  store i32 %r294, i32* %r147
  %r149 = getelementptr [1005 x i32 ], [1005 x i32 ]* @head, i32 0, i32 %r296
  %r150 = load i32, i32* %r149
  %r151 = load i32, i32* @cnt
  %r152 = getelementptr [5005 x i32 ], [5005 x i32 ]* @next, i32 0, i32 %r151
  store i32 %r150, i32* %r152
  %r153 = load i32, i32* @cnt
  %r155 = getelementptr [1005 x i32 ], [1005 x i32 ]* @head, i32 0, i32 %r296
  store i32 %r153, i32* %r155
  %r156 = load i32, i32* @cnt
  %r298 = add i32 %r156, 1
  store i32 %r298, i32* @cnt
  ret void
}

define void @init( ) {
bb18:
  %r300 = add i32 0, 0
  %r301 = add i32 0, 0
  br label %bb19

bb19:
  %r302 = phi i32 [ %r301, %bb18 ], [ %r306, %bb20 ]
  %r303 = icmp slt i32 %r302, 1005
  br i1 %r303, label %bb20, label %bb21

bb20:
  %r304 = sub i32 0, 1
  %r163 = getelementptr [1005 x i32 ], [1005 x i32 ]* @head, i32 0, i32 %r302
  store i32 %r304, i32* %r163
  %r305 = add i32 %r302, 1
  %r306 = add i32 %r305, 0
  br label %bb19

bb21:
  ret void
}

define void @inqueue( i32 %r166 ) {
bb23:
  %r308 = add i32 0, 0
  %r309 = add i32 %r166, 0
  br label %bb22

bb22:
  %r169 = getelementptr [1005 x i32 ], [1005 x i32 ]* @inq, i32 0, i32 %r309
  store i32 1, i32* %r169
  %r170 = load i32, i32* @tail
  %r310 = add i32 %r170, 1
  store i32 %r310, i32* @tail
  %r173 = load i32, i32* @tail
  %r174 = getelementptr [1005 x i32 ], [1005 x i32 ]* @que, i32 0, i32 %r173
  store i32 %r309, i32* %r174
  ret void
}

define i32 @popqueue( ) {
bb24:
  %r175 = load i32, i32* @h
  %r312 = add i32 %r175, 1
  store i32 %r312, i32* @h
  %r178 = load i32, i32* @h
  %r179 = getelementptr [1005 x i32 ], [1005 x i32 ]* @que, i32 0, i32 %r178
  %r180 = load i32, i32* %r179
  %r313 = add i32 0, 0
  %r314 = add i32 %r180, 0
  %r181 = load i32, i32* @h
  %r182 = getelementptr [1005 x i32 ], [1005 x i32 ]* @que, i32 0, i32 %r181
  %r183 = load i32, i32* %r182
  ret i32 %r183
}

define i32 @same( i32 %r184, i32 %r186 ) {
bb26:
  %r321 = add i32 0, 0
  %r322 = add i32 0, 0
  %r323 = add i32 0, 0
  %r324 = add i32 0, 0
  %r325 = add i32 0, 0
  %r326 = add i32 %r184, 0
  %r327 = add i32 0, 0
  %r328 = add i32 %r186, 0
  br label %bb25

bb25:
  store i32 0, i32* @h
  store i32 0, i32* @tail
  call void @inqueue(i32 %r326)
  %r329 = add i32 0, 0
  %r330 = add i32 0, 0
  %r331 = add i32 0, 0
  %r332 = add i32 0, 0
  br label %bb27

bb27:
  %r333 = phi i32 [ %r329, %bb25 ], [ %r344, %bb35 ]
  %r194 = load i32, i32* @h
  %r195 = load i32, i32* @tail
  %r334 = icmp slt i32 %r194, %r195
  br i1 %r334, label %bb28, label %bb29

bb28:
  %r341 = call i32 @popqueue()
  %r342 = add i32 %r341, 0
  %r343 = icmp eq i32 %r342, %r328
  br i1 %r343, label %bb30, label %bb31

bb30:
  %r352 = add i32 1, 0
  br label %bb32

bb31:
  br label %bb32

bb32:
  %r344 = phi i32 [ %r352, %bb30 ], [ %r333, %bb31 ]
  %r202 = getelementptr [1005 x i32 ], [1005 x i32 ]* @head, i32 0, i32 %r342
  %r203 = load i32, i32* %r202
  %r345 = add i32 %r203, 0
  br label %bb33

bb33:
  %r346 = phi i32 [ %r345, %bb32 ], [ %r351, %bb38 ]
  %r347 = sub i32 0, 1
  %r348 = icmp ne i32 %r346, %r347
  br i1 %r348, label %bb34, label %bb35

bb34:
  %r208 = getelementptr [5005 x i32 ], [5005 x i32 ]* @to, i32 0, i32 %r346
  %r209 = load i32, i32* %r208
  %r349 = add i32 %r209, 0
  %r211 = getelementptr [1005 x i32 ], [1005 x i32 ]* @inq, i32 0, i32 %r349
  %r212 = load i32, i32* %r211
  %r350 = icmp eq i32 %r212, 0
  br i1 %r350, label %bb36, label %bb37

bb36:
  %r215 = getelementptr [5005 x i32 ], [5005 x i32 ]* @to, i32 0, i32 %r346
  %r216 = load i32, i32* %r215
  call void @inqueue(i32 %r216)
  br label %bb38

bb37:
  br label %bb38

bb38:
  %r218 = getelementptr [5005 x i32 ], [5005 x i32 ]* @next, i32 0, i32 %r346
  %r219 = load i32, i32* %r218
  %r351 = add i32 %r219, 0
  br label %bb33

bb35:
  br label %bb27

bb29:
  %r335 = add i32 0, 0
  br label %bb39

bb39:
  %r336 = phi i32 [ %r335, %bb29 ], [ %r340, %bb40 ]
  %r221 = load i32, i32* @tail
  %r337 = icmp sle i32 %r336, %r221
  br i1 %r337, label %bb40, label %bb41

bb40:
  %r224 = getelementptr [1005 x i32 ], [1005 x i32 ]* @que, i32 0, i32 %r336
  %r225 = load i32, i32* %r224
  %r338 = add i32 %r225, 0
  %r227 = getelementptr [1005 x i32 ], [1005 x i32 ]* @inq, i32 0, i32 %r338
  store i32 0, i32* %r227
  %r339 = add i32 %r336, 1
  %r340 = add i32 %r339, 0
  br label %bb39

bb41:
  ret i32 %r333
}

define i32 @main( ) {
bb42:
  %r356 = call i32 @quickread()
  store i32 %r356, i32* @n
  %r357 = call i32 @quickread()
  store i32 %r357, i32* @m
  call void @_sysy_starttime(i32 97)
  call void @init()
  %r358 = add i32 0, 0
  %r359 = add i32 0, 0
  %r360 = add i32 0, 0
  %r361 = add i32 0, 0
  %r362 = add i32 0, 0
  %r363 = add i32 0, 0
  br label %bb43

bb43:
  %r236 = load i32, i32* @m
  %r364 = icmp ne i32 %r236, 0
  br i1 %r364, label %bb44, label %bb45

bb44:
  %r365 = call i32 @getch()
  %r366 = add i32 %r365, 0
  br label %bb46

bb46:
  %r367 = phi i32 [ %r366, %bb44 ], [ %r382, %bb47 ]
  %r368 = icmp ne i32 %r367, 81
  br i1 %r368, label %bb49, label %bb48

bb49:
  %r380 = icmp ne i32 %r367, 85
  br i1 %r380, label %bb47, label %bb48

bb47:
  %r381 = call i32 @getch()
  %r382 = add i32 %r381, 0
  br label %bb46

bb48:
  %r369 = icmp eq i32 %r367, 81
  br i1 %r369, label %bb50, label %bb51

bb50:
  %r375 = call i32 @quickread()
  %r376 = add i32 %r375, 0
  %r377 = call i32 @quickread()
  %r378 = add i32 %r377, 0
  %r379 = call i32 @same(i32 %r376, i32 %r378)
  call void @putint(i32 %r379)
  call void @putch(i32 10)
  br label %bb52

bb51:
  %r371 = call i32 @quickread()
  %r372 = add i32 %r371, 0
  %r373 = call i32 @quickread()
  %r374 = add i32 %r373, 0
  call void @addedge(i32 %r372, i32 %r374)
  br label %bb52

bb52:
  %r258 = load i32, i32* @m
  %r370 = sub i32 %r258, 1
  store i32 %r370, i32* @m
  br label %bb43

bb45:
  call void @_sysy_stoptime(i32 117)
  ret i32 0
}

