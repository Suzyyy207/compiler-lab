declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
@len = global i32 20
define i32 @main( ) {
bb1:
  %r261 = add i32 0, 0
  call void @_sysy_starttime(i32 97)
  %r262 = add i32 0, 0
  %r263 = add i32 0, 0
  %r264 = add i32 0, 0
  %r265 = add i32 0, 0
  %r266 = add i32 0, 0
  %r105 = alloca [ 20 x i32 ]
  %r106 = getelementptr [20 x i32 ], [20 x i32 ]* %r105, i32 0, i32 0
  store i32 1, i32* %r106
  %r107 = getelementptr [20 x i32 ], [20 x i32 ]* %r105, i32 0, i32 1
  store i32 2, i32* %r107
  %r108 = getelementptr [20 x i32 ], [20 x i32 ]* %r105, i32 0, i32 2
  store i32 3, i32* %r108
  %r109 = getelementptr [20 x i32 ], [20 x i32 ]* %r105, i32 0, i32 3
  store i32 4, i32* %r109
  %r110 = getelementptr [20 x i32 ], [20 x i32 ]* %r105, i32 0, i32 4
  store i32 5, i32* %r110
  %r111 = getelementptr [20 x i32 ], [20 x i32 ]* %r105, i32 0, i32 5
  store i32 6, i32* %r111
  %r112 = getelementptr [20 x i32 ], [20 x i32 ]* %r105, i32 0, i32 6
  store i32 7, i32* %r112
  %r113 = getelementptr [20 x i32 ], [20 x i32 ]* %r105, i32 0, i32 7
  store i32 8, i32* %r113
  %r114 = getelementptr [20 x i32 ], [20 x i32 ]* %r105, i32 0, i32 8
  store i32 9, i32* %r114
  %r115 = getelementptr [20 x i32 ], [20 x i32 ]* %r105, i32 0, i32 9
  store i32 0, i32* %r115
  %r116 = getelementptr [20 x i32 ], [20 x i32 ]* %r105, i32 0, i32 10
  store i32 1, i32* %r116
  %r117 = getelementptr [20 x i32 ], [20 x i32 ]* %r105, i32 0, i32 11
  store i32 2, i32* %r117
  %r118 = getelementptr [20 x i32 ], [20 x i32 ]* %r105, i32 0, i32 12
  store i32 3, i32* %r118
  %r119 = getelementptr [20 x i32 ], [20 x i32 ]* %r105, i32 0, i32 13
  store i32 4, i32* %r119
  %r120 = getelementptr [20 x i32 ], [20 x i32 ]* %r105, i32 0, i32 14
  store i32 5, i32* %r120
  %r121 = getelementptr [20 x i32 ], [20 x i32 ]* %r105, i32 0, i32 15
  store i32 6, i32* %r121
  %r122 = getelementptr [20 x i32 ], [20 x i32 ]* %r105, i32 0, i32 16
  store i32 7, i32* %r122
  %r123 = getelementptr [20 x i32 ], [20 x i32 ]* %r105, i32 0, i32 17
  store i32 8, i32* %r123
  %r124 = getelementptr [20 x i32 ], [20 x i32 ]* %r105, i32 0, i32 18
  store i32 9, i32* %r124
  %r125 = getelementptr [20 x i32 ], [20 x i32 ]* %r105, i32 0, i32 19
  store i32 0, i32* %r125
  %r126 = alloca [ 20 x i32 ]
  %r127 = getelementptr [20 x i32 ], [20 x i32 ]* %r126, i32 0, i32 0
  store i32 2, i32* %r127
  %r128 = getelementptr [20 x i32 ], [20 x i32 ]* %r126, i32 0, i32 1
  store i32 3, i32* %r128
  %r129 = getelementptr [20 x i32 ], [20 x i32 ]* %r126, i32 0, i32 2
  store i32 4, i32* %r129
  %r130 = getelementptr [20 x i32 ], [20 x i32 ]* %r126, i32 0, i32 3
  store i32 2, i32* %r130
  %r131 = getelementptr [20 x i32 ], [20 x i32 ]* %r126, i32 0, i32 4
  store i32 5, i32* %r131
  %r132 = getelementptr [20 x i32 ], [20 x i32 ]* %r126, i32 0, i32 5
  store i32 7, i32* %r132
  %r133 = getelementptr [20 x i32 ], [20 x i32 ]* %r126, i32 0, i32 6
  store i32 9, i32* %r133
  %r134 = getelementptr [20 x i32 ], [20 x i32 ]* %r126, i32 0, i32 7
  store i32 9, i32* %r134
  %r135 = getelementptr [20 x i32 ], [20 x i32 ]* %r126, i32 0, i32 8
  store i32 0, i32* %r135
  %r136 = getelementptr [20 x i32 ], [20 x i32 ]* %r126, i32 0, i32 9
  store i32 1, i32* %r136
  %r137 = getelementptr [20 x i32 ], [20 x i32 ]* %r126, i32 0, i32 10
  store i32 9, i32* %r137
  %r138 = getelementptr [20 x i32 ], [20 x i32 ]* %r126, i32 0, i32 11
  store i32 8, i32* %r138
  %r139 = getelementptr [20 x i32 ], [20 x i32 ]* %r126, i32 0, i32 12
  store i32 7, i32* %r139
  %r140 = getelementptr [20 x i32 ], [20 x i32 ]* %r126, i32 0, i32 13
  store i32 6, i32* %r140
  %r141 = getelementptr [20 x i32 ], [20 x i32 ]* %r126, i32 0, i32 14
  store i32 4, i32* %r141
  %r142 = getelementptr [20 x i32 ], [20 x i32 ]* %r126, i32 0, i32 15
  store i32 3, i32* %r142
  %r143 = getelementptr [20 x i32 ], [20 x i32 ]* %r126, i32 0, i32 16
  store i32 2, i32* %r143
  %r144 = getelementptr [20 x i32 ], [20 x i32 ]* %r126, i32 0, i32 17
  store i32 1, i32* %r144
  %r145 = getelementptr [20 x i32 ], [20 x i32 ]* %r126, i32 0, i32 18
  store i32 2, i32* %r145
  %r146 = getelementptr [20 x i32 ], [20 x i32 ]* %r126, i32 0, i32 19
  store i32 2, i32* %r146
  %r148 = load i32, i32* @len
  %r267 = add i32 0, 0
  %r268 = add i32 %r148, 0
  %r150 = load i32, i32* @len
  %r269 = add i32 0, 0
  %r270 = add i32 %r150, 0
  %r151 = alloca [ 25 x i32 ]
  %r152 = alloca [ 25 x i32 ]
  %r153 = alloca [ 40 x i32 ]
  %r154 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 0
  store i32 0, i32* %r154
  %r271 = add i32 0, 0
  br label %bb2

bb2:
  %r272 = phi i32 [ %r271, %bb1 ], [ %r327, %bb3 ]
  %r273 = icmp slt i32 %r272, %r268
  br i1 %r273, label %bb3, label %bb4

bb3:
  %r159 = getelementptr [20 x i32 ], [20 x i32 ]* %r105, i32 0, i32 %r272
  %r160 = load i32, i32* %r159
  %r162 = getelementptr [25 x i32 ], [25 x i32 ]* %r151, i32 0, i32 %r272
  store i32 %r160, i32* %r162
  %r326 = add i32 %r272, 1
  %r327 = add i32 %r326, 0
  br label %bb2

bb4:
  %r274 = add i32 0, 0
  br label %bb5

bb5:
  %r275 = phi i32 [ %r274, %bb4 ], [ %r325, %bb6 ]
  %r276 = icmp slt i32 %r275, %r270
  br i1 %r276, label %bb6, label %bb7

bb6:
  %r169 = getelementptr [20 x i32 ], [20 x i32 ]* %r126, i32 0, i32 %r275
  %r170 = load i32, i32* %r169
  %r172 = getelementptr [25 x i32 ], [25 x i32 ]* %r152, i32 0, i32 %r275
  store i32 %r170, i32* %r172
  %r324 = add i32 %r275, 1
  %r325 = add i32 %r324, 0
  br label %bb5

bb7:
  %r277 = add i32 %r268, %r270
  %r278 = sub i32 %r277, 1
  %r279 = add i32 %r278, 0
  %r280 = add i32 0, 0
  br label %bb8

bb8:
  %r281 = phi i32 [ %r280, %bb7 ], [ %r323, %bb9 ]
  %r282 = icmp sle i32 %r281, %r279
  br i1 %r282, label %bb9, label %bb10

bb9:
  %r183 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 %r281
  store i32 0, i32* %r183
  %r322 = add i32 %r281, 1
  %r323 = add i32 %r322, 0
  br label %bb8

bb10:
  %r283 = add i32 0, 0
  %r284 = sub i32 %r270, 1
  %r285 = add i32 %r284, 0
  br label %bb11

bb11:
  %r286 = phi i32 [ %r285, %bb10 ], [ %r309, %bb16 ]
  %r287 = phi i32 [ %r279, %bb10 ], [ %r307, %bb16 ]
  %r288 = sub i32 0, 1
  %r289 = icmp sgt i32 %r286, %r288
  br i1 %r289, label %bb12, label %bb13

bb12:
  %r192 = getelementptr [25 x i32 ], [25 x i32 ]* %r152, i32 0, i32 %r286
  %r193 = load i32, i32* %r192
  %r298 = add i32 %r193, 0
  %r299 = sub i32 %r268, 1
  %r300 = add i32 %r299, 0
  br label %bb14

bb14:
  %r301 = phi i32 [ %r300, %bb12 ], [ %r315, %bb19 ]
  %r302 = phi i32 [ %r287, %bb12 ], [ %r317, %bb19 ]
  %r303 = sub i32 0, 1
  %r304 = icmp sgt i32 %r301, %r303
  br i1 %r304, label %bb15, label %bb16

bb15:
  %r200 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 %r302
  %r201 = load i32, i32* %r200
  %r204 = getelementptr [25 x i32 ], [25 x i32 ]* %r151, i32 0, i32 %r301
  %r205 = load i32, i32* %r204
  %r310 = mul i32 %r298, %r205
  %r311 = add i32 %r201, %r310
  %r312 = add i32 %r311, 0
  %r313 = icmp sge i32 %r312, 10
  br i1 %r313, label %bb17, label %bb18

bb17:
  %r212 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 %r302
  store i32 %r312, i32* %r212
  %r318 = sub i32 %r302, 1
  %r319 = add i32 %r318, 0
  %r217 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 %r319
  %r218 = load i32, i32* %r217
  %r320 = sdiv i32 %r312, 10
  %r321 = add i32 %r218, %r320
  %r223 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 %r319
  store i32 %r321, i32* %r223
  br label %bb19

bb18:
  %r226 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 %r302
  store i32 %r312, i32* %r226
  br label %bb19

bb19:
  %r314 = sub i32 %r301, 1
  %r315 = add i32 %r314, 0
  %r316 = sub i32 %r302, 1
  %r317 = add i32 %r316, 0
  br label %bb14

bb16:
  %r305 = add i32 %r302, %r268
  %r306 = sub i32 %r305, 1
  %r307 = add i32 %r306, 0
  %r308 = sub i32 %r286, 1
  %r309 = add i32 %r308, 0
  br label %bb11

bb13:
  %r237 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 0
  %r238 = load i32, i32* %r237
  %r290 = icmp ne i32 %r238, 0
  br i1 %r290, label %bb20, label %bb21

bb20:
  %r240 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 0
  %r241 = load i32, i32* %r240
  call void @putint(i32 %r241)
  br label %bb22

bb21:
  br label %bb22

bb22:
  %r291 = add i32 1, 0
  br label %bb23

bb23:
  %r292 = phi i32 [ %r291, %bb22 ], [ %r297, %bb24 ]
  %r293 = add i32 %r268, %r270
  %r294 = sub i32 %r293, 1
  %r295 = icmp sle i32 %r292, %r294
  br i1 %r295, label %bb24, label %bb25

bb24:
  %r249 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 %r292
  %r250 = load i32, i32* %r249
  call void @putint(i32 %r250)
  %r296 = add i32 %r292, 1
  %r297 = add i32 %r296, 0
  br label %bb23

bb25:
  call void @_sysy_stoptime(i32 117)
  ret i32 0
}

