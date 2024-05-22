declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
@INF = global i32 65535
%array2D = type { [16 x i32 ] }
@e = global [ 16 x %array2D ] zeroinitializer
@book = global [ 16 x i32 ] zeroinitializer
@dis = global [ 16 x i32 ] zeroinitializer
@n = global i32 0
@m = global i32 0
@v1 = global i32 0
@v2 = global i32 0
@w = global i32 0
define void @Dijkstra( ) {
bb1:
  %r243 = add i32 0, 0
  %r244 = add i32 0, 0
  %r245 = add i32 0, 0
  %r246 = add i32 0, 0
  %r247 = add i32 0, 0
  %r248 = add i32 1, 0
  br label %bb2

bb2:
  %r249 = phi i32 [ %r248, %bb1 ], [ %r282, %bb3 ]
  %r102 = load i32, i32* @n
  %r250 = icmp sle i32 %r249, %r102
  br i1 %r250, label %bb3, label %bb4

bb3:
  %r105 = getelementptr [16 x %array2D ], [16 x %array2D ]* @e, i32 0, i32 1
  %r106 = getelementptr %array2D, %array2D* %r105, i32 0, i32 0
  %r107 = getelementptr [16 x i32 ], [16 x i32 ]* %r106, i32 0, i32 %r249
  %r108 = load i32, i32* %r107
  %r110 = getelementptr [16 x i32 ], [16 x i32 ]* @dis, i32 0, i32 %r249
  store i32 %r108, i32* %r110
  %r112 = getelementptr [16 x i32 ], [16 x i32 ]* @book, i32 0, i32 %r249
  store i32 0, i32* %r112
  %r281 = add i32 %r249, 1
  %r282 = add i32 %r281, 0
  br label %bb2

bb4:
  %r115 = getelementptr [16 x i32 ], [16 x i32 ]* @book, i32 0, i32 1
  store i32 1, i32* %r115
  %r251 = add i32 1, 0
  br label %bb5

bb5:
  %r252 = phi i32 [ %r251, %bb4 ], [ %r266, %bb17 ]
  %r117 = load i32, i32* @n
  %r253 = sub i32 %r117, 1
  %r254 = icmp sle i32 %r252, %r253
  br i1 %r254, label %bb6, label %bb7

bb6:
  %r121 = load i32, i32* @INF
  %r255 = add i32 %r121, 0
  %r256 = add i32 0, 0
  %r257 = add i32 1, 0
  br label %bb8

bb8:
  %r258 = phi i32 [ %r255, %bb6 ], [ %r274, %bb13 ]
  %r259 = phi i32 [ %r256, %bb6 ], [ %r275, %bb13 ]
  %r260 = phi i32 [ %r257, %bb6 ], [ %r277, %bb13 ]
  %r125 = load i32, i32* @n
  %r261 = icmp sle i32 %r260, %r125
  br i1 %r261, label %bb9, label %bb10

bb9:
  %r130 = getelementptr [16 x i32 ], [16 x i32 ]* @dis, i32 0, i32 %r260
  %r131 = load i32, i32* %r130
  %r273 = icmp sgt i32 %r258, %r131
  br i1 %r273, label %bb14, label %bb12

bb14:
  %r134 = getelementptr [16 x i32 ], [16 x i32 ]* @book, i32 0, i32 %r260
  %r135 = load i32, i32* %r134
  %r278 = icmp eq i32 %r135, 0
  br i1 %r278, label %bb11, label %bb12

bb11:
  %r138 = getelementptr [16 x i32 ], [16 x i32 ]* @dis, i32 0, i32 %r260
  %r139 = load i32, i32* %r138
  %r279 = add i32 %r139, 0
  %r280 = add i32 %r260, 0
  br label %bb13

bb12:
  br label %bb13

bb13:
  %r274 = phi i32 [ %r279, %bb11 ], [ %r258, %bb12 ]
  %r275 = phi i32 [ %r280, %bb11 ], [ %r259, %bb12 ]
  %r276 = add i32 %r260, 1
  %r277 = add i32 %r276, 0
  br label %bb8

bb10:
  %r144 = getelementptr [16 x i32 ], [16 x i32 ]* @book, i32 0, i32 %r259
  store i32 1, i32* %r144
  %r262 = add i32 1, 0
  br label %bb15

bb15:
  %r263 = phi i32 [ %r262, %bb10 ], [ %r269, %bb20 ]
  %r147 = load i32, i32* @n
  %r264 = icmp sle i32 %r263, %r147
  br i1 %r264, label %bb16, label %bb17

bb16:
  %r151 = getelementptr [16 x %array2D ], [16 x %array2D ]* @e, i32 0, i32 %r259
  %r152 = getelementptr %array2D, %array2D* %r151, i32 0, i32 0
  %r153 = getelementptr [16 x i32 ], [16 x i32 ]* %r152, i32 0, i32 %r263
  %r154 = load i32, i32* %r153
  %r155 = load i32, i32* @INF
  %r267 = icmp slt i32 %r154, %r155
  br i1 %r267, label %bb18, label %bb19

bb18:
  %r158 = getelementptr [16 x i32 ], [16 x i32 ]* @dis, i32 0, i32 %r263
  %r159 = load i32, i32* %r158
  %r161 = getelementptr [16 x i32 ], [16 x i32 ]* @dis, i32 0, i32 %r259
  %r162 = load i32, i32* %r161
  %r165 = getelementptr [16 x %array2D ], [16 x %array2D ]* @e, i32 0, i32 %r259
  %r166 = getelementptr %array2D, %array2D* %r165, i32 0, i32 0
  %r167 = getelementptr [16 x i32 ], [16 x i32 ]* %r166, i32 0, i32 %r263
  %r168 = load i32, i32* %r167
  %r270 = add i32 %r162, %r168
  %r271 = icmp sgt i32 %r159, %r270
  br i1 %r271, label %bb21, label %bb22

bb21:
  %r172 = getelementptr [16 x i32 ], [16 x i32 ]* @dis, i32 0, i32 %r259
  %r173 = load i32, i32* %r172
  %r176 = getelementptr [16 x %array2D ], [16 x %array2D ]* @e, i32 0, i32 %r259
  %r177 = getelementptr %array2D, %array2D* %r176, i32 0, i32 0
  %r178 = getelementptr [16 x i32 ], [16 x i32 ]* %r177, i32 0, i32 %r263
  %r179 = load i32, i32* %r178
  %r272 = add i32 %r173, %r179
  %r182 = getelementptr [16 x i32 ], [16 x i32 ]* @dis, i32 0, i32 %r263
  store i32 %r272, i32* %r182
  br label %bb23

bb22:
  br label %bb23

bb23:
  br label %bb20

bb19:
  br label %bb20

bb20:
  %r268 = add i32 %r263, 1
  %r269 = add i32 %r268, 0
  br label %bb15

bb17:
  %r265 = add i32 %r252, 1
  %r266 = add i32 %r265, 0
  br label %bb5

bb7:
  ret void
}

define i32 @main( ) {
bb24:
  %r287 = add i32 0, 0
  %r288 = add i32 0, 0
  %r289 = add i32 0, 0
  call void @_sysy_starttime(i32 53)
  %r290 = add i32 0, 0
  %r291 = call i32 @getint()
  store i32 %r291, i32* @n
  %r292 = call i32 @getint()
  store i32 %r292, i32* @m
  %r293 = add i32 1, 0
  br label %bb25

bb25:
  %r294 = phi i32 [ %r293, %bb24 ], [ %r315, %bb30 ]
  %r191 = load i32, i32* @n
  %r295 = icmp sle i32 %r294, %r191
  br i1 %r295, label %bb26, label %bb27

bb26:
  %r311 = add i32 1, 0
  br label %bb28

bb28:
  %r312 = phi i32 [ %r311, %bb26 ], [ %r318, %bb33 ]
  %r195 = load i32, i32* @n
  %r313 = icmp sle i32 %r312, %r195
  br i1 %r313, label %bb29, label %bb30

bb29:
  %r316 = icmp eq i32 %r294, %r312
  br i1 %r316, label %bb31, label %bb32

bb31:
  %r202 = getelementptr [16 x %array2D ], [16 x %array2D ]* @e, i32 0, i32 %r294
  %r203 = getelementptr %array2D, %array2D* %r202, i32 0, i32 0
  %r204 = getelementptr [16 x i32 ], [16 x i32 ]* %r203, i32 0, i32 %r312
  store i32 0, i32* %r204
  br label %bb33

bb32:
  %r205 = load i32, i32* @INF
  %r208 = getelementptr [16 x %array2D ], [16 x %array2D ]* @e, i32 0, i32 %r294
  %r209 = getelementptr %array2D, %array2D* %r208, i32 0, i32 0
  %r210 = getelementptr [16 x i32 ], [16 x i32 ]* %r209, i32 0, i32 %r312
  store i32 %r205, i32* %r210
  br label %bb33

bb33:
  %r317 = add i32 %r312, 1
  %r318 = add i32 %r317, 0
  br label %bb28

bb30:
  %r314 = add i32 %r294, 1
  %r315 = add i32 %r314, 0
  br label %bb25

bb27:
  %r296 = add i32 1, 0
  br label %bb34

bb34:
  %r297 = phi i32 [ %r296, %bb27 ], [ %r310, %bb35 ]
  %r216 = load i32, i32* @m
  %r298 = icmp sle i32 %r297, %r216
  br i1 %r298, label %bb35, label %bb36

bb35:
  %r304 = call i32 @getint()
  %r305 = add i32 %r304, 0
  %r306 = call i32 @getint()
  %r307 = add i32 %r306, 0
  %r308 = call i32 @getint()
  %r225 = getelementptr [16 x %array2D ], [16 x %array2D ]* @e, i32 0, i32 %r305
  %r226 = getelementptr %array2D, %array2D* %r225, i32 0, i32 0
  %r227 = getelementptr [16 x i32 ], [16 x i32 ]* %r226, i32 0, i32 %r307
  store i32 %r308, i32* %r227
  %r309 = add i32 %r297, 1
  %r310 = add i32 %r309, 0
  br label %bb34

bb36:
  call void @Dijkstra()
  %r299 = add i32 1, 0
  br label %bb37

bb37:
  %r300 = phi i32 [ %r299, %bb36 ], [ %r303, %bb38 ]
  %r231 = load i32, i32* @n
  %r301 = icmp sle i32 %r300, %r231
  br i1 %r301, label %bb38, label %bb39

bb38:
  %r234 = getelementptr [16 x i32 ], [16 x i32 ]* @dis, i32 0, i32 %r300
  %r235 = load i32, i32* %r234
  call void @putint(i32 %r235)
  call void @putch(i32 32)
  %r302 = add i32 %r300, 1
  %r303 = add i32 %r302, 0
  br label %bb37

bb39:
  call void @putch(i32 10)
  call void @_sysy_stoptime(i32 91)
  ret i32 0
}

