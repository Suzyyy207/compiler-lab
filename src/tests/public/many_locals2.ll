declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
@n = global i32 0
define i32 @main( ) {
bb1:
  %r296 = add i32 0, 0
  %r297 = add i32 0, 0
  call void @_sysy_starttime(i32 4)
  %r298 = add i32 0, 0
  %r299 = add i32 0, 0
  %r300 = add i32 0, 0
  %r301 = add i32 0, 0
  %r302 = add i32 0, 0
  %r303 = add i32 0, 0
  %r304 = add i32 0, 0
  %r305 = add i32 0, 0
  %r306 = add i32 0, 0
  %r307 = add i32 0, 0
  %r308 = add i32 0, 0
  %r309 = add i32 0, 0
  %r310 = add i32 0, 0
  %r311 = add i32 0, 0
  %r312 = add i32 0, 0
  %r313 = add i32 0, 0
  %r314 = add i32 0, 0
  %r315 = add i32 0, 0
  %r316 = add i32 0, 0
  %r317 = add i32 0, 0
  %r318 = add i32 0, 0
  %r319 = add i32 0, 0
  %r320 = add i32 0, 0
  %r321 = add i32 0, 0
  %r322 = add i32 0, 0
  %r323 = add i32 0, 0
  %r324 = add i32 0, 0
  %r325 = add i32 0, 0
  %r326 = add i32 0, 0
  %r327 = add i32 0, 0
  %r328 = add i32 0, 0
  %r329 = call i32 @getint()
  %r330 = add i32 %r329, 0
  br label %bb2

bb2:
  %r331 = phi i32 [ %r330, %bb1 ], [ %r394, %bb3 ]
  %r332 = icmp eq i32 %r331, 5
  br i1 %r332, label %bb3, label %bb4

bb3:
  %r393 = add i32 %r331, 1
  %r394 = add i32 %r393, 0
  br label %bb2

bb4:
  %r333 = add i32 0, 0
  %r334 = add i32 %r333, 1
  %r335 = add i32 %r334, 0
  %r336 = add i32 %r335, 1
  %r337 = add i32 %r336, 0
  %r338 = add i32 %r337, 1
  %r339 = add i32 %r338, 0
  %r340 = add i32 %r339, 1
  %r341 = add i32 %r340, 0
  %r342 = add i32 %r341, 1
  %r343 = add i32 %r342, 0
  %r344 = add i32 %r343, 1
  %r345 = add i32 %r344, 0
  %r346 = add i32 %r345, 1
  %r347 = add i32 %r346, 0
  %r348 = add i32 %r347, 1
  %r349 = add i32 %r348, 0
  %r350 = add i32 %r349, 1
  %r351 = add i32 %r350, 0
  %r352 = add i32 %r351, 1
  %r353 = add i32 %r352, 0
  %r354 = add i32 %r353, 1
  %r355 = add i32 %r354, 0
  %r356 = add i32 %r355, 1
  %r357 = add i32 %r356, 0
  %r358 = add i32 %r357, 1
  %r359 = add i32 %r358, 0
  %r360 = add i32 %r359, 1
  %r361 = add i32 %r360, 0
  %r362 = add i32 %r361, 1
  %r363 = add i32 %r362, 0
  %r364 = add i32 %r363, 1
  %r365 = add i32 %r364, 0
  %r366 = add i32 %r365, 1
  %r367 = add i32 %r366, 0
  %r368 = add i32 %r367, 1
  %r369 = add i32 %r368, 0
  %r370 = add i32 %r369, 1
  %r371 = add i32 %r370, 0
  %r372 = add i32 %r371, 1
  %r373 = add i32 %r372, 0
  %r374 = add i32 %r373, 1
  %r375 = add i32 %r374, 0
  %r376 = add i32 %r375, 1
  %r377 = add i32 %r376, 0
  %r378 = add i32 %r377, 1
  %r379 = add i32 %r378, 0
  %r380 = add i32 %r379, 1
  %r381 = add i32 %r380, 0
  %r382 = add i32 %r381, 1
  %r383 = add i32 %r382, 0
  %r384 = add i32 %r383, 1
  %r385 = add i32 %r384, 0
  %r386 = add i32 %r385, 1
  %r387 = add i32 %r386, 0
  %r388 = add i32 %r387, 1
  %r389 = add i32 %r388, 0
  %r390 = add i32 %r389, 1
  %r391 = add i32 %r390, 0
  call void @putint(i32 %r333)
  call void @putint(i32 %r335)
  call void @putint(i32 %r337)
  call void @putint(i32 %r339)
  call void @putint(i32 %r341)
  call void @putint(i32 %r343)
  call void @putint(i32 %r345)
  call void @putint(i32 %r347)
  call void @putint(i32 %r349)
  call void @putint(i32 %r351)
  call void @putint(i32 %r353)
  call void @putint(i32 %r355)
  call void @putint(i32 %r357)
  call void @putint(i32 %r359)
  call void @putint(i32 %r361)
  call void @putint(i32 %r363)
  call void @putint(i32 %r365)
  call void @putint(i32 %r367)
  call void @putint(i32 %r369)
  call void @putint(i32 %r371)
  call void @putint(i32 %r373)
  call void @putint(i32 %r375)
  call void @putint(i32 %r377)
  call void @putint(i32 %r379)
  call void @putint(i32 %r381)
  call void @putint(i32 %r383)
  call void @putint(i32 %r385)
  call void @putint(i32 %r387)
  call void @putint(i32 %r389)
  call void @putint(i32 %r391)
  %r392 = add i32 10, 0
  call void @putch(i32 %r392)
  call void @putint(i32 %r331)
  call void @putch(i32 %r392)
  call void @_sysy_stoptime(i32 312)
  ret i32 %r383
}

