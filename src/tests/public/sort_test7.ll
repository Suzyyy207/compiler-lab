declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
@n = global i32 0
define i32 @Merge( i32* %r100, i32 %r101, i32 %r103, i32 %r105 ) {
bb2:
  %r272 = add i32 0, 0
  %r273 = add i32 0, 0
  %r274 = add i32 0, 0
  %r275 = add i32 0, 0
  %r117 = alloca [ 10 x i32 ]
  %r116 = alloca [ 10 x i32 ]
  %r276 = add i32 0, 0
  %r277 = add i32 0, 0
  %r278 = add i32 0, 0
  %r279 = add i32 %r101, 0
  %r280 = add i32 0, 0
  %r281 = add i32 %r103, 0
  %r282 = add i32 0, 0
  %r283 = add i32 %r105, 0
  br label %bb1

bb1:
  %r284 = sub i32 %r281, %r279
  %r285 = add i32 %r284, 1
  %r286 = add i32 %r285, 0
  %r287 = sub i32 %r283, %r281
  %r288 = add i32 %r287, 0
  %r289 = add i32 0, 0
  %r290 = add i32 0, 0
  br label %bb3

bb3:
  %r291 = phi i32 [ %r289, %bb1 ], [ %r338, %bb4 ]
  %r292 = icmp slt i32 %r291, %r286
  br i1 %r292, label %bb4, label %bb5

bb4:
  %r335 = add i32 %r291, %r279
  %r336 = add i32 %r335, 0
  %r128 = getelementptr i32, i32* %r100, i32 %r336
  %r129 = load i32, i32* %r128
  %r131 = getelementptr [10 x i32 ], [10 x i32 ]* %r116, i32 0, i32 %r291
  store i32 %r129, i32* %r131
  %r337 = add i32 %r291, 1
  %r338 = add i32 %r337, 0
  br label %bb3

bb5:
  br label %bb6

bb6:
  %r293 = phi i32 [ %r290, %bb5 ], [ %r334, %bb7 ]
  %r294 = icmp slt i32 %r293, %r288
  br i1 %r294, label %bb7, label %bb8

bb7:
  %r330 = add i32 %r293, %r281
  %r331 = add i32 %r330, 1
  %r332 = add i32 %r331, 0
  %r142 = getelementptr i32, i32* %r100, i32 %r332
  %r143 = load i32, i32* %r142
  %r145 = getelementptr [10 x i32 ], [10 x i32 ]* %r117, i32 0, i32 %r293
  store i32 %r143, i32* %r145
  %r333 = add i32 %r293, 1
  %r334 = add i32 %r333, 0
  br label %bb6

bb8:
  %r295 = add i32 0, 0
  %r296 = add i32 0, 0
  %r297 = add i32 %r279, 0
  br label %bb9

bb9:
  %r298 = phi i32 [ %r297, %bb8 ], [ %r319, %bb15 ]
  %r299 = phi i32 [ %r295, %bb8 ], [ %r320, %bb15 ]
  %r300 = phi i32 [ %r296, %bb8 ], [ %r321, %bb15 ]
  %r301 = icmp ne i32 %r299, %r286
  br i1 %r301, label %bb12, label %bb11

bb12:
  %r316 = icmp ne i32 %r300, %r288
  br i1 %r316, label %bb10, label %bb11

bb10:
  %r158 = getelementptr [10 x i32 ], [10 x i32 ]* %r116, i32 0, i32 %r299
  %r159 = load i32, i32* %r158
  %r161 = getelementptr [10 x i32 ], [10 x i32 ]* %r117, i32 0, i32 %r300
  %r162 = load i32, i32* %r161
  %r317 = add i32 %r162, 1
  %r318 = icmp slt i32 %r159, %r317
  br i1 %r318, label %bb13, label %bb14

bb13:
  %r166 = getelementptr [10 x i32 ], [10 x i32 ]* %r116, i32 0, i32 %r299
  %r167 = load i32, i32* %r166
  %r169 = getelementptr i32, i32* %r100, i32 %r298
  store i32 %r167, i32* %r169
  %r326 = add i32 %r298, 1
  %r327 = add i32 %r326, 0
  %r328 = add i32 %r299, 1
  %r329 = add i32 %r328, 0
  br label %bb15

bb14:
  %r175 = getelementptr [10 x i32 ], [10 x i32 ]* %r117, i32 0, i32 %r300
  %r176 = load i32, i32* %r175
  %r178 = getelementptr i32, i32* %r100, i32 %r298
  store i32 %r176, i32* %r178
  %r322 = add i32 %r298, 1
  %r323 = add i32 %r322, 0
  %r324 = add i32 %r300, 1
  %r325 = add i32 %r324, 0
  br label %bb15

bb15:
  %r319 = phi i32 [ %r327, %bb13 ], [ %r323, %bb14 ]
  %r320 = phi i32 [ %r329, %bb13 ], [ %r299, %bb14 ]
  %r321 = phi i32 [ %r300, %bb13 ], [ %r325, %bb14 ]
  br label %bb9

bb11:
  br label %bb16

bb16:
  %r302 = phi i32 [ %r298, %bb11 ], [ %r313, %bb17 ]
  %r303 = phi i32 [ %r299, %bb11 ], [ %r315, %bb17 ]
  %r304 = icmp slt i32 %r303, %r286
  br i1 %r304, label %bb17, label %bb18

bb17:
  %r187 = getelementptr [10 x i32 ], [10 x i32 ]* %r116, i32 0, i32 %r303
  %r188 = load i32, i32* %r187
  %r190 = getelementptr i32, i32* %r100, i32 %r302
  store i32 %r188, i32* %r190
  %r312 = add i32 %r302, 1
  %r313 = add i32 %r312, 0
  %r314 = add i32 %r303, 1
  %r315 = add i32 %r314, 0
  br label %bb16

bb18:
  br label %bb19

bb19:
  %r305 = phi i32 [ %r302, %bb18 ], [ %r309, %bb20 ]
  %r306 = phi i32 [ %r300, %bb18 ], [ %r311, %bb20 ]
  %r307 = icmp slt i32 %r306, %r288
  br i1 %r307, label %bb20, label %bb21

bb20:
  %r199 = getelementptr [10 x i32 ], [10 x i32 ]* %r117, i32 0, i32 %r306
  %r200 = load i32, i32* %r199
  %r202 = getelementptr i32, i32* %r100, i32 %r305
  store i32 %r200, i32* %r202
  %r308 = add i32 %r305, 1
  %r309 = add i32 %r308, 0
  %r310 = add i32 %r306, 1
  %r311 = add i32 %r310, 0
  br label %bb19

bb21:
  ret i32 0
}

define i32 @MergeSort( i32* %r207, i32 %r208, i32 %r210 ) {
bb23:
  %r343 = add i32 0, 0
  %r344 = add i32 0, 0
  %r345 = add i32 0, 0
  %r346 = add i32 %r208, 0
  %r347 = add i32 0, 0
  %r348 = add i32 %r210, 0
  br label %bb22

bb22:
  %r349 = icmp slt i32 %r346, %r348
  br i1 %r349, label %bb24, label %bb25

bb24:
  %r350 = add i32 %r346, %r348
  %r351 = sdiv i32 %r350, 2
  %r352 = add i32 %r351, 0
  %r353 = call i32 @MergeSort(i32* %r207, i32 %r346, i32 %r352)
  %r354 = add i32 %r353, 0
  %r355 = add i32 %r352, 1
  %r356 = add i32 %r355, 0
  %r357 = call i32 @MergeSort(i32* %r207, i32 %r356, i32 %r348)
  %r358 = add i32 %r357, 0
  %r359 = call i32 @Merge(i32* %r207, i32 %r346, i32 %r352, i32 %r348)
  %r360 = add i32 %r359, 0
  br label %bb26

bb25:
  br label %bb26

bb26:
  ret i32 0
}

define i32 @main( ) {
bb27:
  call void @_sysy_starttime(i32 71)
  store i32 10, i32* @n
  %r233 = alloca [ 10 x i32 ]
  %r234 = getelementptr [10 x i32 ], [10 x i32 ]* %r233, i32 0, i32 0
  store i32 4, i32* %r234
  %r235 = getelementptr [10 x i32 ], [10 x i32 ]* %r233, i32 0, i32 1
  store i32 3, i32* %r235
  %r236 = getelementptr [10 x i32 ], [10 x i32 ]* %r233, i32 0, i32 2
  store i32 9, i32* %r236
  %r237 = getelementptr [10 x i32 ], [10 x i32 ]* %r233, i32 0, i32 3
  store i32 2, i32* %r237
  %r238 = getelementptr [10 x i32 ], [10 x i32 ]* %r233, i32 0, i32 4
  store i32 0, i32* %r238
  %r239 = getelementptr [10 x i32 ], [10 x i32 ]* %r233, i32 0, i32 5
  store i32 1, i32* %r239
  %r240 = getelementptr [10 x i32 ], [10 x i32 ]* %r233, i32 0, i32 6
  store i32 6, i32* %r240
  %r241 = getelementptr [10 x i32 ], [10 x i32 ]* %r233, i32 0, i32 7
  store i32 5, i32* %r241
  %r242 = getelementptr [10 x i32 ], [10 x i32 ]* %r233, i32 0, i32 8
  store i32 7, i32* %r242
  %r243 = getelementptr [10 x i32 ], [10 x i32 ]* %r233, i32 0, i32 9
  store i32 8, i32* %r243
  %r363 = add i32 0, 0
  %r364 = add i32 0, 0
  %r365 = add i32 0, 0
  %r246 = load i32, i32* @n
  %r366 = sub i32 %r246, 1
  %r367 = add i32 %r366, 0
  %r368 = call i32 @MergeSort(i32* %r233, i32 %r364, i32 %r367)
  %r369 = add i32 %r368, 0
  br label %bb28

bb28:
  %r370 = phi i32 [ %r369, %bb27 ], [ %r375, %bb29 ]
  %r252 = load i32, i32* @n
  %r371 = icmp slt i32 %r370, %r252
  br i1 %r371, label %bb29, label %bb30

bb29:
  %r255 = getelementptr [10 x i32 ], [10 x i32 ]* %r233, i32 0, i32 %r370
  %r256 = load i32, i32* %r255
  %r372 = add i32 %r256, 0
  call void @putint(i32 %r372)
  %r373 = add i32 10, 0
  call void @putch(i32 %r373)
  %r374 = add i32 %r370, 1
  %r375 = add i32 %r374, 0
  br label %bb28

bb30:
  call void @_sysy_stoptime(i32 97)
  ret i32 0
}

