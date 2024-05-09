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
  %r101 = call i32 @getch()
  %r100 = alloca i32
  store i32 %r101, i32* %r100
  %r102 = alloca i32
  store i32 0, i32* %r102
  %r103 = alloca i32
  store i32 0, i32* %r103
  br label %bb2

bb2:
  %r105 = load i32, i32* %r100
  %r106 = icmp slt i32 %r105, 48
  br i1 %r106, label %bb3, label %bb5

bb5:
  %r107 = load i32, i32* %r100
  %r108 = icmp sgt i32 %r107, 57
  br i1 %r108, label %bb3, label %bb4

bb3:
  %r109 = load i32, i32* %r100
  %r110 = icmp eq i32 %r109, 45
  br i1 %r110, label %bb6, label %bb7

bb6:
  store i32 1, i32* %r103
  br label %bb8

bb7:
  br label %bb8

bb8:
  %r111 = call i32 @getch()
  store i32 %r111, i32* %r100
  br label %bb2

bb4:
  br label %bb9

bb9:
  %r113 = load i32, i32* %r100
  %r114 = icmp sge i32 %r113, 48
  br i1 %r114, label %bb12, label %bb11

bb12:
  %r115 = load i32, i32* %r100
  %r116 = icmp sle i32 %r115, 57
  br i1 %r116, label %bb10, label %bb11

bb10:
  %r117 = load i32, i32* %r102
  %r118 = mul i32 %r117, 10
  %r119 = load i32, i32* %r100
  %r120 = add i32 %r118, %r119
  %r121 = sub i32 %r120, 48
  store i32 %r121, i32* %r102
  %r122 = call i32 @getch()
  store i32 %r122, i32* %r100
  br label %bb9

bb11:
  %r123 = load i32, i32* %r103
  %r124 = icmp ne i32 %r123, 0
  br i1 %r124, label %bb13, label %bb14

bb13:
  %r125 = load i32, i32* %r102
  %r126 = sub i32 0, %r125
  ret i32 %r126
  br label %bb15

bb14:
  %r127 = load i32, i32* %r102
  ret i32 %r127
  br label %bb15

bb15:
  ret i32 0
}

define void @addedge( i32 %r128, i32 %r130 ) {
bb17:
  %r129 = alloca i32
  store i32 %r128, i32* %r129
  %r131 = alloca i32
  store i32 %r130, i32* %r131
  br label %bb16

bb16:
  %r132 = load i32, i32* %r131
  %r133 = load i32, i32* @cnt
  %r134 = getelementptr [5005 x i32 ], [5005 x i32 ]* @to, i32 0, i32 %r133
  store i32 %r132, i32* %r134
  %r135 = load i32, i32* %r129
  %r136 = getelementptr [1005 x i32 ], [1005 x i32 ]* @head, i32 0, i32 %r135
  %r137 = load i32, i32* %r136
  %r138 = load i32, i32* @cnt
  %r139 = getelementptr [5005 x i32 ], [5005 x i32 ]* @next, i32 0, i32 %r138
  store i32 %r137, i32* %r139
  %r140 = load i32, i32* @cnt
  %r141 = load i32, i32* %r129
  %r142 = getelementptr [1005 x i32 ], [1005 x i32 ]* @head, i32 0, i32 %r141
  store i32 %r140, i32* %r142
  %r143 = load i32, i32* @cnt
  %r144 = add i32 %r143, 1
  store i32 %r144, i32* @cnt
  %r145 = load i32, i32* %r129
  %r146 = load i32, i32* @cnt
  %r147 = getelementptr [5005 x i32 ], [5005 x i32 ]* @to, i32 0, i32 %r146
  store i32 %r145, i32* %r147
  %r148 = load i32, i32* %r131
  %r149 = getelementptr [1005 x i32 ], [1005 x i32 ]* @head, i32 0, i32 %r148
  %r150 = load i32, i32* %r149
  %r151 = load i32, i32* @cnt
  %r152 = getelementptr [5005 x i32 ], [5005 x i32 ]* @next, i32 0, i32 %r151
  store i32 %r150, i32* %r152
  %r153 = load i32, i32* @cnt
  %r154 = load i32, i32* %r131
  %r155 = getelementptr [1005 x i32 ], [1005 x i32 ]* @head, i32 0, i32 %r154
  store i32 %r153, i32* %r155
  %r156 = load i32, i32* @cnt
  %r157 = add i32 %r156, 1
  store i32 %r157, i32* @cnt
  ret void
}

define void @init( ) {
bb18:
  %r158 = alloca i32
  store i32 0, i32* %r158
  br label %bb19

bb19:
  %r159 = load i32, i32* %r158
  %r160 = icmp slt i32 %r159, 1005
  br i1 %r160, label %bb20, label %bb21

bb20:
  %r161 = sub i32 0, 1
  %r162 = load i32, i32* %r158
  %r163 = getelementptr [1005 x i32 ], [1005 x i32 ]* @head, i32 0, i32 %r162
  store i32 %r161, i32* %r163
  %r164 = load i32, i32* %r158
  %r165 = add i32 %r164, 1
  store i32 %r165, i32* %r158
  br label %bb19

bb21:
  ret void
}

define void @inqueue( i32 %r166 ) {
bb23:
  %r167 = alloca i32
  store i32 %r166, i32* %r167
  br label %bb22

bb22:
  %r168 = load i32, i32* %r167
  %r169 = getelementptr [1005 x i32 ], [1005 x i32 ]* @inq, i32 0, i32 %r168
  store i32 1, i32* %r169
  %r170 = load i32, i32* @tail
  %r171 = add i32 %r170, 1
  store i32 %r171, i32* @tail
  %r172 = load i32, i32* %r167
  %r173 = load i32, i32* @tail
  %r174 = getelementptr [1005 x i32 ], [1005 x i32 ]* @que, i32 0, i32 %r173
  store i32 %r172, i32* %r174
  ret void
}

define i32 @popqueue( ) {
bb24:
  %r175 = load i32, i32* @h
  %r176 = add i32 %r175, 1
  store i32 %r176, i32* @h
  %r178 = load i32, i32* @h
  %r179 = getelementptr [1005 x i32 ], [1005 x i32 ]* @que, i32 0, i32 %r178
  %r180 = load i32, i32* %r179
  %r177 = alloca i32
  store i32 %r180, i32* %r177
  %r181 = load i32, i32* @h
  %r182 = getelementptr [1005 x i32 ], [1005 x i32 ]* @que, i32 0, i32 %r181
  %r183 = load i32, i32* %r182
  ret i32 %r183
}

define i32 @same( i32 %r184, i32 %r186 ) {
bb26:
  %r193 = alloca i32
  %r192 = alloca i32
  %r191 = alloca i32
  %r190 = alloca i32
  %r185 = alloca i32
  store i32 %r184, i32* %r185
  %r187 = alloca i32
  store i32 %r186, i32* %r187
  br label %bb25

bb25:
  store i32 0, i32* @h
  store i32 0, i32* @tail
  %r188 = load i32, i32* %r185
  %r189 = load i32, i32* %r185
  call void @inqueue(i32 %r189)
  store i32 0, i32* %r190
  store i32 0, i32* %r191
  store i32 0, i32* %r192
  store i32 0, i32* %r193
  br label %bb27

bb27:
  %r194 = load i32, i32* @h
  %r195 = load i32, i32* @tail
  %r196 = icmp slt i32 %r194, %r195
  br i1 %r196, label %bb28, label %bb29

bb28:
  %r197 = call i32 @popqueue()
  store i32 %r197, i32* %r191
  %r198 = load i32, i32* %r191
  %r199 = load i32, i32* %r187
  %r200 = icmp eq i32 %r198, %r199
  br i1 %r200, label %bb30, label %bb31

bb30:
  store i32 1, i32* %r190
  br label %bb32

bb31:
  br label %bb32

bb32:
  %r201 = load i32, i32* %r191
  %r202 = getelementptr [1005 x i32 ], [1005 x i32 ]* @head, i32 0, i32 %r201
  %r203 = load i32, i32* %r202
  store i32 %r203, i32* %r192
  br label %bb33

bb33:
  %r204 = load i32, i32* %r192
  %r205 = sub i32 0, 1
  %r206 = icmp ne i32 %r204, %r205
  br i1 %r206, label %bb34, label %bb35

bb34:
  %r207 = load i32, i32* %r192
  %r208 = getelementptr [5005 x i32 ], [5005 x i32 ]* @to, i32 0, i32 %r207
  %r209 = load i32, i32* %r208
  store i32 %r209, i32* %r193
  %r210 = load i32, i32* %r193
  %r211 = getelementptr [1005 x i32 ], [1005 x i32 ]* @inq, i32 0, i32 %r210
  %r212 = load i32, i32* %r211
  %r213 = icmp eq i32 %r212, 0
  br i1 %r213, label %bb36, label %bb37

bb36:
  %r214 = load i32, i32* %r192
  %r215 = getelementptr [5005 x i32 ], [5005 x i32 ]* @to, i32 0, i32 %r214
  %r216 = load i32, i32* %r215
  call void @inqueue(i32 %r216)
  br label %bb38

bb37:
  br label %bb38

bb38:
  %r217 = load i32, i32* %r192
  %r218 = getelementptr [5005 x i32 ], [5005 x i32 ]* @next, i32 0, i32 %r217
  %r219 = load i32, i32* %r218
  store i32 %r219, i32* %r192
  br label %bb33

bb35:
  br label %bb27

bb29:
  store i32 0, i32* %r192
  br label %bb39

bb39:
  %r220 = load i32, i32* %r192
  %r221 = load i32, i32* @tail
  %r222 = icmp sle i32 %r220, %r221
  br i1 %r222, label %bb40, label %bb41

bb40:
  %r223 = load i32, i32* %r192
  %r224 = getelementptr [1005 x i32 ], [1005 x i32 ]* @que, i32 0, i32 %r223
  %r225 = load i32, i32* %r224
  store i32 %r225, i32* %r193
  %r226 = load i32, i32* %r193
  %r227 = getelementptr [1005 x i32 ], [1005 x i32 ]* @inq, i32 0, i32 %r226
  store i32 0, i32* %r227
  %r228 = load i32, i32* %r192
  %r229 = add i32 %r228, 1
  store i32 %r229, i32* %r192
  br label %bb39

bb41:
  %r230 = load i32, i32* %r190
  ret i32 %r230
}

define i32 @main( ) {
bb42:
  %r231 = call i32 @quickread()
  store i32 %r231, i32* @n
  %r232 = call i32 @quickread()
  store i32 %r232, i32* @m
  call void @init()
  %r233 = alloca i32
  store i32 0, i32* %r233
  %r234 = alloca i32
  store i32 0, i32* %r234
  %r235 = alloca i32
  store i32 0, i32* %r235
  br label %bb43

bb43:
  %r236 = load i32, i32* @m
  %r237 = icmp ne i32 %r236, 0
  br i1 %r237, label %bb44, label %bb45

bb44:
  %r238 = call i32 @getch()
  store i32 %r238, i32* %r233
  br label %bb46

bb46:
  %r240 = load i32, i32* %r233
  %r241 = icmp ne i32 %r240, 81
  br i1 %r241, label %bb49, label %bb48

bb49:
  %r242 = load i32, i32* %r233
  %r243 = icmp ne i32 %r242, 85
  br i1 %r243, label %bb47, label %bb48

bb47:
  %r244 = call i32 @getch()
  store i32 %r244, i32* %r233
  br label %bb46

bb48:
  %r245 = load i32, i32* %r233
  %r246 = icmp eq i32 %r245, 81
  br i1 %r246, label %bb50, label %bb51

bb50:
  %r247 = call i32 @quickread()
  store i32 %r247, i32* %r234
  %r248 = call i32 @quickread()
  store i32 %r248, i32* %r235
  %r249 = load i32, i32* %r234
  %r250 = load i32, i32* %r235
  %r251 = call i32 @same(i32 %r249, i32 %r250)
  call void @putint(i32 %r251)
  call void @putch(i32 10)
  br label %bb52

bb51:
  %r252 = call i32 @quickread()
  store i32 %r252, i32* %r234
  %r253 = call i32 @quickread()
  store i32 %r253, i32* %r235
  %r254 = load i32, i32* %r234
  %r255 = load i32, i32* %r234
  %r256 = load i32, i32* %r235
  %r257 = load i32, i32* %r235
  call void @addedge(i32 %r255, i32 %r257)
  br label %bb52

bb52:
  %r258 = load i32, i32* @m
  %r259 = sub i32 %r258, 1
  store i32 %r259, i32* @m
  br label %bb43

bb45:
  ret i32 0
}

