declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
@base = global i32 16
@a = global [ 30000010 x i32 ] zeroinitializer
@ans = global i32 0
define i32 @getMaxNum( i32 %r100, i32* %r102 ) {
bb2:
  %r382 = add i32 0, 0
  %r383 = add i32 0, 0
  %r384 = add i32 0, 0
  %r385 = add i32 %r100, 0
  br label %bb1

bb1:
  %r386 = add i32 0, 0
  %r387 = add i32 0, 0
  br label %bb3

bb3:
  %r388 = phi i32 [ %r386, %bb1 ], [ %r392, %bb8 ]
  %r389 = phi i32 [ %r387, %bb1 ], [ %r394, %bb8 ]
  %r390 = icmp slt i32 %r389, %r385
  br i1 %r390, label %bb4, label %bb5

bb4:
  %r109 = getelementptr i32, i32* %r102, i32 %r389
  %r110 = load i32, i32* %r109
  %r391 = icmp sgt i32 %r110, %r388
  br i1 %r391, label %bb6, label %bb7

bb6:
  %r114 = getelementptr i32, i32* %r102, i32 %r389
  %r115 = load i32, i32* %r114
  %r395 = add i32 %r115, 0
  br label %bb8

bb7:
  br label %bb8

bb8:
  %r392 = phi i32 [ %r395, %bb6 ], [ %r388, %bb7 ]
  %r393 = add i32 %r389, 1
  %r394 = add i32 %r393, 0
  br label %bb3

bb5:
  ret i32 %r388
}

define i32 @getNumPos( i32 %r119, i32 %r121 ) {
bb10:
  %r400 = add i32 0, 0
  %r401 = add i32 0, 0
  %r402 = add i32 0, 0
  %r403 = add i32 %r119, 0
  %r404 = add i32 0, 0
  %r405 = add i32 %r121, 0
  br label %bb9

bb9:
  %r406 = add i32 1, 0
  %r407 = add i32 0, 0
  br label %bb11

bb11:
  %r408 = phi i32 [ %r407, %bb9 ], [ %r417, %bb12 ]
  %r409 = phi i32 [ %r403, %bb9 ], [ %r415, %bb12 ]
  %r410 = icmp slt i32 %r408, %r405
  br i1 %r410, label %bb12, label %bb13

bb12:
  %r129 = load i32, i32* @base
  %r414 = sdiv i32 %r409, %r129
  %r415 = add i32 %r414, 0
  %r416 = add i32 %r408, 1
  %r417 = add i32 %r416, 0
  br label %bb11

bb13:
  %r135 = load i32, i32* @base
  %r411 = sdiv i32 %r409, %r135
  %r137 = load i32, i32* @base
  %r412 = mul i32 %r411, %r137
  %r413 = sub i32 %r409, %r412
  ret i32 %r413
}

define void @radixSort( i32 %r140, i32* %r142, i32 %r143, i32 %r145 ) {
bb15:
  %r433 = add i32 0, 0
  %r434 = add i32 0, 0
  %r435 = add i32 0, 0
  %r436 = add i32 0, 0
  %r437 = add i32 0, 0
  %r438 = add i32 0, 0
  %r439 = add i32 0, 0
  %r440 = add i32 0, 0
  %r441 = add i32 0, 0
  %r442 = add i32 0, 0
  %r443 = add i32 0, 0
  %r444 = add i32 0, 0
  %r149 = alloca [ 16 x i32 ]
  %r148 = alloca [ 16 x i32 ]
  %r147 = alloca [ 16 x i32 ]
  %r445 = add i32 0, 0
  %r446 = add i32 %r140, 0
  %r447 = add i32 0, 0
  %r448 = add i32 %r143, 0
  %r449 = add i32 0, 0
  %r450 = add i32 %r145, 0
  br label %bb14

bb14:
  %r451 = add i32 0, 0
  br label %bb16

bb16:
  %r452 = phi i32 [ %r451, %bb14 ], [ %r516, %bb17 ]
  %r152 = load i32, i32* @base
  %r453 = icmp slt i32 %r452, %r152
  br i1 %r453, label %bb17, label %bb18

bb17:
  %r155 = getelementptr [16 x i32 ], [16 x i32 ]* %r147, i32 0, i32 %r452
  store i32 0, i32* %r155
  %r157 = getelementptr [16 x i32 ], [16 x i32 ]* %r148, i32 0, i32 %r452
  store i32 0, i32* %r157
  %r159 = getelementptr [16 x i32 ], [16 x i32 ]* %r149, i32 0, i32 %r452
  store i32 0, i32* %r159
  %r515 = add i32 %r452, 1
  %r516 = add i32 %r515, 0
  br label %bb16

bb18:
  %r454 = sub i32 0, 1
  %r455 = icmp eq i32 %r446, %r454
  br i1 %r455, label %bb19, label %bb22

bb22:
  %r456 = add i32 %r448, 1
  %r457 = icmp sge i32 %r456, %r450
  br i1 %r457, label %bb19, label %bb20

bb19:
  ret void
bb20:
  br label %bb21

bb21:
  %r458 = add i32 %r448, 0
  br label %bb23

bb23:
  %r459 = phi i32 [ %r458, %bb21 ], [ %r514, %bb24 ]
  %r460 = icmp slt i32 %r459, %r450
  br i1 %r460, label %bb24, label %bb25

bb24:
  %r177 = getelementptr i32, i32* %r142, i32 %r459
  %r178 = load i32, i32* %r177
  %r508 = call i32 @getNumPos(i32 %r178, i32 %r446)
  %r509 = add i32 %r508, 0
  %r183 = getelementptr i32, i32* %r142, i32 %r459
  %r184 = load i32, i32* %r183
  %r510 = call i32 @getNumPos(i32 %r184, i32 %r446)
  %r511 = add i32 %r510, 0
  %r188 = getelementptr [16 x i32 ], [16 x i32 ]* %r149, i32 0, i32 %r509
  %r189 = load i32, i32* %r188
  %r512 = add i32 %r189, 1
  %r192 = getelementptr [16 x i32 ], [16 x i32 ]* %r149, i32 0, i32 %r511
  store i32 %r512, i32* %r192
  %r513 = add i32 %r459, 1
  %r514 = add i32 %r513, 0
  br label %bb23

bb25:
  %r196 = getelementptr [16 x i32 ], [16 x i32 ]* %r147, i32 0, i32 0
  store i32 %r448, i32* %r196
  %r198 = getelementptr [16 x i32 ], [16 x i32 ]* %r149, i32 0, i32 0
  %r199 = load i32, i32* %r198
  %r461 = add i32 %r448, %r199
  %r201 = getelementptr [16 x i32 ], [16 x i32 ]* %r148, i32 0, i32 0
  store i32 %r461, i32* %r201
  %r462 = add i32 1, 0
  br label %bb26

bb26:
  %r463 = phi i32 [ %r462, %bb25 ], [ %r507, %bb27 ]
  %r203 = load i32, i32* @base
  %r464 = icmp slt i32 %r463, %r203
  br i1 %r464, label %bb27, label %bb28

bb27:
  %r503 = sub i32 %r463, 1
  %r504 = add i32 %r503, 0
  %r209 = getelementptr [16 x i32 ], [16 x i32 ]* %r148, i32 0, i32 %r504
  %r210 = load i32, i32* %r209
  %r212 = getelementptr [16 x i32 ], [16 x i32 ]* %r147, i32 0, i32 %r463
  store i32 %r210, i32* %r212
  %r214 = getelementptr [16 x i32 ], [16 x i32 ]* %r147, i32 0, i32 %r463
  %r215 = load i32, i32* %r214
  %r217 = getelementptr [16 x i32 ], [16 x i32 ]* %r149, i32 0, i32 %r463
  %r218 = load i32, i32* %r217
  %r505 = add i32 %r215, %r218
  %r221 = getelementptr [16 x i32 ], [16 x i32 ]* %r148, i32 0, i32 %r463
  store i32 %r505, i32* %r221
  %r506 = add i32 %r463, 1
  %r507 = add i32 %r506, 0
  br label %bb26

bb28:
  %r465 = add i32 0, 0
  br label %bb29

bb29:
  %r466 = phi i32 [ %r465, %bb28 ], [ %r482, %bb34 ]
  %r225 = load i32, i32* @base
  %r467 = icmp slt i32 %r466, %r225
  br i1 %r467, label %bb30, label %bb31

bb30:
  br label %bb32

bb32:
  %r228 = getelementptr [16 x i32 ], [16 x i32 ]* %r147, i32 0, i32 %r466
  %r229 = load i32, i32* %r228
  %r231 = getelementptr [16 x i32 ], [16 x i32 ]* %r148, i32 0, i32 %r466
  %r232 = load i32, i32* %r231
  %r480 = icmp slt i32 %r229, %r232
  br i1 %r480, label %bb33, label %bb34

bb33:
  %r236 = getelementptr [16 x i32 ], [16 x i32 ]* %r147, i32 0, i32 %r466
  %r237 = load i32, i32* %r236
  %r483 = add i32 %r237, 0
  %r240 = getelementptr i32, i32* %r142, i32 %r483
  %r241 = load i32, i32* %r240
  %r484 = add i32 %r241, 0
  br label %bb35

bb35:
  %r485 = phi i32 [ %r484, %bb33 ], [ %r494, %bb36 ]
  %r486 = call i32 @getNumPos(i32 %r485, i32 %r446)
  %r487 = icmp ne i32 %r486, %r466
  br i1 %r487, label %bb36, label %bb37

bb36:
  %r490 = add i32 %r485, 0
  %r491 = call i32 @getNumPos(i32 %r490, i32 %r446)
  %r492 = add i32 %r491, 0
  %r254 = getelementptr [16 x i32 ], [16 x i32 ]* %r147, i32 0, i32 %r492
  %r255 = load i32, i32* %r254
  %r493 = add i32 %r255, 0
  %r257 = getelementptr i32, i32* %r142, i32 %r493
  %r258 = load i32, i32* %r257
  %r494 = add i32 %r258, 0
  %r495 = call i32 @getNumPos(i32 %r490, i32 %r446)
  %r496 = add i32 %r495, 0
  %r263 = getelementptr [16 x i32 ], [16 x i32 ]* %r147, i32 0, i32 %r496
  %r264 = load i32, i32* %r263
  %r497 = add i32 %r264, 0
  %r267 = getelementptr i32, i32* %r142, i32 %r497
  store i32 %r490, i32* %r267
  %r498 = call i32 @getNumPos(i32 %r490, i32 %r446)
  %r499 = add i32 %r498, 0
  %r500 = call i32 @getNumPos(i32 %r490, i32 %r446)
  %r501 = add i32 %r500, 0
  %r276 = getelementptr [16 x i32 ], [16 x i32 ]* %r147, i32 0, i32 %r499
  %r277 = load i32, i32* %r276
  %r502 = add i32 %r277, 1
  %r280 = getelementptr [16 x i32 ], [16 x i32 ]* %r147, i32 0, i32 %r501
  store i32 %r502, i32* %r280
  br label %bb35

bb37:
  %r283 = getelementptr [16 x i32 ], [16 x i32 ]* %r147, i32 0, i32 %r466
  %r284 = load i32, i32* %r283
  %r488 = add i32 %r284, 0
  %r287 = getelementptr i32, i32* %r142, i32 %r488
  store i32 %r485, i32* %r287
  %r289 = getelementptr [16 x i32 ], [16 x i32 ]* %r147, i32 0, i32 %r466
  %r290 = load i32, i32* %r289
  %r489 = add i32 %r290, 1
  %r293 = getelementptr [16 x i32 ], [16 x i32 ]* %r147, i32 0, i32 %r466
  store i32 %r489, i32* %r293
  br label %bb32

bb34:
  %r481 = add i32 %r466, 1
  %r482 = add i32 %r481, 0
  br label %bb29

bb31:
  %r468 = add i32 %r448, 0
  %r298 = getelementptr [16 x i32 ], [16 x i32 ]* %r147, i32 0, i32 0
  store i32 %r448, i32* %r298
  %r300 = getelementptr [16 x i32 ], [16 x i32 ]* %r149, i32 0, i32 0
  %r301 = load i32, i32* %r300
  %r469 = add i32 %r448, %r301
  %r303 = getelementptr [16 x i32 ], [16 x i32 ]* %r148, i32 0, i32 0
  store i32 %r469, i32* %r303
  %r470 = add i32 0, 0
  br label %bb38

bb38:
  %r471 = phi i32 [ %r470, %bb31 ], [ %r476, %bb43 ]
  %r305 = load i32, i32* @base
  %r472 = icmp slt i32 %r471, %r305
  br i1 %r472, label %bb39, label %bb40

bb39:
  %r473 = icmp sgt i32 %r471, 0
  br i1 %r473, label %bb41, label %bb42

bb41:
  %r477 = sub i32 %r471, 1
  %r478 = add i32 %r477, 0
  %r313 = getelementptr [16 x i32 ], [16 x i32 ]* %r148, i32 0, i32 %r478
  %r314 = load i32, i32* %r313
  %r316 = getelementptr [16 x i32 ], [16 x i32 ]* %r147, i32 0, i32 %r471
  store i32 %r314, i32* %r316
  %r318 = getelementptr [16 x i32 ], [16 x i32 ]* %r147, i32 0, i32 %r471
  %r319 = load i32, i32* %r318
  %r321 = getelementptr [16 x i32 ], [16 x i32 ]* %r149, i32 0, i32 %r471
  %r322 = load i32, i32* %r321
  %r479 = add i32 %r319, %r322
  %r325 = getelementptr [16 x i32 ], [16 x i32 ]* %r148, i32 0, i32 %r471
  store i32 %r479, i32* %r325
  br label %bb43

bb42:
  br label %bb43

bb43:
  %r474 = sub i32 %r446, 1
  %r328 = getelementptr [30000010 x i32 ], [30000010 x i32 ]* @a, i32 0, i32 0
  %r330 = getelementptr [16 x i32 ], [16 x i32 ]* %r147, i32 0, i32 %r471
  %r331 = load i32, i32* %r330
  %r333 = getelementptr [16 x i32 ], [16 x i32 ]* %r148, i32 0, i32 %r471
  %r334 = load i32, i32* %r333
  call void @radixSort(i32 %r474, i32* %r328, i32 %r331, i32 %r334)
  %r475 = add i32 %r471, 1
  %r476 = add i32 %r475, 0
  br label %bb38

bb40:
  ret void
}

define i32 @main( ) {
bb44:
  %r520 = add i32 0, 0
  %r521 = call i32 @getint()
  %r522 = add i32 0, 0
  %r523 = add i32 %r521, 0
  %r524 = add i32 0, 0
  %r525 = add i32 0, 0
  br label %bb45

bb45:
  %r526 = phi i32 [ %r525, %bb44 ], [ %r544, %bb46 ]
  %r527 = icmp slt i32 %r526, %r523
  br i1 %r527, label %bb46, label %bb47

bb46:
  %r542 = call i32 @getint()
  %r345 = getelementptr [30000010 x i32 ], [30000010 x i32 ]* @a, i32 0, i32 %r526
  store i32 %r542, i32* %r345
  %r543 = add i32 %r526, 1
  %r544 = add i32 %r543, 0
  br label %bb45

bb47:
  call void @_sysy_starttime(i32 97)
  %r348 = getelementptr [30000010 x i32 ], [30000010 x i32 ]* @a, i32 0, i32 0
  call void @radixSort(i32 8, i32* %r348, i32 0, i32 %r523)
  %r528 = add i32 0, 0
  br label %bb48

bb48:
  %r529 = phi i32 [ %r528, %bb47 ], [ %r541, %bb49 ]
  %r530 = icmp slt i32 %r529, %r523
  br i1 %r530, label %bb49, label %bb50

bb49:
  %r355 = load i32, i32* @ans
  %r358 = getelementptr [30000010 x i32 ], [30000010 x i32 ]* @a, i32 0, i32 %r529
  %r359 = load i32, i32* %r358
  %r361 = getelementptr [30000010 x i32 ], [30000010 x i32 ]* @a, i32 0, i32 %r529
  %r362 = load i32, i32* %r361
  %r533 = add i32 2, %r529
  %r534 = sdiv i32 %r362, %r533
  %r535 = add i32 2, %r529
  %r536 = mul i32 %r534, %r535
  %r537 = sub i32 %r359, %r536
  %r538 = mul i32 %r529, %r537
  %r539 = add i32 %r355, %r538
  store i32 %r539, i32* @ans
  %r540 = add i32 %r529, 1
  %r541 = add i32 %r540, 0
  br label %bb48

bb50:
  %r374 = load i32, i32* @ans
  %r531 = icmp slt i32 %r374, 0
  br i1 %r531, label %bb51, label %bb52

bb51:
  %r376 = load i32, i32* @ans
  %r532 = sub i32 0, %r376
  store i32 %r532, i32* @ans
  br label %bb53

bb52:
  br label %bb53

bb53:
  call void @_sysy_stoptime(i32 117)
  %r378 = load i32, i32* @ans
  call void @putint(i32 %r378)
  call void @putch(i32 10)
  ret i32 0
}

