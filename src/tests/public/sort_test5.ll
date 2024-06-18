declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
@n = global i32 0
define i32 @swap( i32* %r100, i32 %r101, i32 %r103 ) {
bb2:
  %r225 = add i32 0, 0
  %r226 = add i32 0, 0
  %r227 = add i32 %r101, 0
  %r228 = add i32 0, 0
  %r229 = add i32 %r103, 0
  br label %bb1

bb1:
  %r107 = getelementptr i32, i32* %r100, i32 %r227
  %r108 = load i32, i32* %r107
  %r230 = add i32 %r108, 0
  %r110 = getelementptr i32, i32* %r100, i32 %r229
  %r111 = load i32, i32* %r110
  %r113 = getelementptr i32, i32* %r100, i32 %r227
  store i32 %r111, i32* %r113
  %r116 = getelementptr i32, i32* %r100, i32 %r229
  store i32 %r230, i32* %r116
  ret i32 0
}

define i32 @heap_ajust( i32* %r117, i32 %r118, i32 %r120 ) {
bb4:
  %r236 = add i32 0, 0
  %r237 = add i32 0, 0
  %r238 = add i32 0, 0
  %r239 = add i32 0, 0
  %r240 = add i32 %r118, 0
  %r241 = add i32 0, 0
  %r242 = add i32 %r120, 0
  br label %bb3

bb3:
  %r243 = add i32 %r240, 0
  %r244 = mul i32 %r243, 2
  %r245 = add i32 %r244, 1
  %r246 = add i32 %r245, 0
  br label %bb5

bb5:
  %r247 = phi i32 [ %r243, %bb3 ], [ %r258, %bb14 ]
  %r248 = phi i32 [ %r246, %bb3 ], [ %r261, %bb14 ]
  %r249 = add i32 %r242, 1
  %r250 = icmp slt i32 %r248, %r249
  br i1 %r250, label %bb6, label %bb7

bb6:
  %r251 = add i32 %r248, 1
  %r252 = add i32 %r251, 0
  %r253 = icmp slt i32 %r248, %r242
  br i1 %r253, label %bb11, label %bb9

bb11:
  %r140 = getelementptr i32, i32* %r117, i32 %r248
  %r141 = load i32, i32* %r140
  %r143 = getelementptr i32, i32* %r117, i32 %r252
  %r144 = load i32, i32* %r143
  %r262 = icmp slt i32 %r141, %r144
  br i1 %r262, label %bb8, label %bb9

bb8:
  %r263 = add i32 %r248, 1
  %r264 = add i32 %r263, 0
  br label %bb10

bb9:
  br label %bb10

bb10:
  %r254 = phi i32 [ %r264, %bb8 ], [ %r248, %bb9 ]
  %r149 = getelementptr i32, i32* %r117, i32 %r247
  %r150 = load i32, i32* %r149
  %r152 = getelementptr i32, i32* %r117, i32 %r254
  %r153 = load i32, i32* %r152
  %r255 = icmp sgt i32 %r150, %r153
  br i1 %r255, label %bb12, label %bb13

bb12:
  ret i32 0
bb13:
  %r256 = call i32 @swap(i32* %r117, i32 %r247, i32 %r254)
  %r257 = add i32 %r256, 0
  %r258 = add i32 %r254, 0
  %r259 = mul i32 %r258, 2
  %r260 = add i32 %r259, 1
  %r261 = add i32 %r260, 0
  br label %bb14

bb14:
  br label %bb5

bb7:
  ret i32 0
}

define i32 @heap_sort( i32* %r162, i32 %r163 ) {
bb16:
  %r269 = add i32 0, 0
  %r270 = add i32 0, 0
  %r271 = add i32 0, 0
  %r272 = add i32 0, 0
  %r273 = add i32 %r163, 0
  br label %bb15

bb15:
  %r274 = sdiv i32 %r273, 2
  %r275 = sub i32 %r274, 1
  %r276 = add i32 %r275, 0
  br label %bb17

bb17:
  %r277 = phi i32 [ %r276, %bb15 ], [ %r298, %bb18 ]
  %r278 = sub i32 0, 1
  %r279 = icmp sgt i32 %r277, %r278
  br i1 %r279, label %bb18, label %bb19

bb18:
  %r293 = sub i32 %r273, 1
  %r294 = add i32 %r293, 0
  %r295 = call i32 @heap_ajust(i32* %r162, i32 %r277, i32 %r294)
  %r296 = add i32 %r295, 0
  %r297 = sub i32 %r277, 1
  %r298 = add i32 %r297, 0
  br label %bb17

bb19:
  %r280 = sub i32 %r273, 1
  %r281 = add i32 %r280, 0
  br label %bb20

bb20:
  %r282 = phi i32 [ %r281, %bb19 ], [ %r292, %bb21 ]
  %r283 = icmp sgt i32 %r282, 0
  br i1 %r283, label %bb21, label %bb22

bb21:
  %r284 = add i32 0, 0
  %r285 = call i32 @swap(i32* %r162, i32 %r284, i32 %r282)
  %r286 = add i32 %r285, 0
  %r287 = sub i32 %r282, 1
  %r288 = add i32 %r287, 0
  %r289 = call i32 @heap_ajust(i32* %r162, i32 %r284, i32 %r288)
  %r290 = add i32 %r289, 0
  %r291 = sub i32 %r282, 1
  %r292 = add i32 %r291, 0
  br label %bb20

bb22:
  ret i32 0
}

define i32 @main( ) {
bb23:
  %r301 = add i32 0, 0
  call void @_sysy_starttime(i32 50)
  store i32 10, i32* @n
  %r195 = alloca [ 10 x i32 ]
  %r196 = getelementptr [10 x i32 ], [10 x i32 ]* %r195, i32 0, i32 0
  store i32 4, i32* %r196
  %r197 = getelementptr [10 x i32 ], [10 x i32 ]* %r195, i32 0, i32 1
  store i32 3, i32* %r197
  %r198 = getelementptr [10 x i32 ], [10 x i32 ]* %r195, i32 0, i32 2
  store i32 9, i32* %r198
  %r199 = getelementptr [10 x i32 ], [10 x i32 ]* %r195, i32 0, i32 3
  store i32 2, i32* %r199
  %r200 = getelementptr [10 x i32 ], [10 x i32 ]* %r195, i32 0, i32 4
  store i32 0, i32* %r200
  %r201 = getelementptr [10 x i32 ], [10 x i32 ]* %r195, i32 0, i32 5
  store i32 1, i32* %r201
  %r202 = getelementptr [10 x i32 ], [10 x i32 ]* %r195, i32 0, i32 6
  store i32 6, i32* %r202
  %r203 = getelementptr [10 x i32 ], [10 x i32 ]* %r195, i32 0, i32 7
  store i32 5, i32* %r203
  %r204 = getelementptr [10 x i32 ], [10 x i32 ]* %r195, i32 0, i32 8
  store i32 7, i32* %r204
  %r205 = getelementptr [10 x i32 ], [10 x i32 ]* %r195, i32 0, i32 9
  store i32 8, i32* %r205
  %r302 = add i32 0, 0
  %r303 = add i32 0, 0
  %r207 = load i32, i32* @n
  %r304 = call i32 @heap_sort(i32* %r195, i32 %r207)
  %r305 = add i32 %r304, 0
  br label %bb24

bb24:
  %r306 = phi i32 [ %r305, %bb23 ], [ %r311, %bb25 ]
  %r210 = load i32, i32* @n
  %r307 = icmp slt i32 %r306, %r210
  br i1 %r307, label %bb25, label %bb26

bb25:
  %r214 = getelementptr [10 x i32 ], [10 x i32 ]* %r195, i32 0, i32 %r306
  %r215 = load i32, i32* %r214
  %r308 = add i32 %r215, 0
  call void @putint(i32 %r308)
  %r309 = add i32 10, 0
  call void @putch(i32 %r309)
  %r310 = add i32 %r306, 1
  %r311 = add i32 %r310, 0
  br label %bb24

bb26:
  call void @_sysy_stoptime(i32 66)
  ret i32 0
}

