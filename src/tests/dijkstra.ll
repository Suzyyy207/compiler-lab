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
  %r145 = alloca i32
  %r123 = alloca i32
  %r122 = alloca i32
  %r120 = alloca i32
  %r100 = alloca i32
  store i32 1, i32* %r100
  br label %bb2

bb2:
  %r101 = load i32, i32* %r100
  %r102 = load i32, i32* @n
  %r103 = icmp sle i32 %r101, %r102
  br i1 %r103, label %bb3, label %bb4

bb3:
  %r104 = load i32, i32* %r100
  %r105 = getelementptr [16 x %array2D ], [16 x %array2D ]* @e, i32 0, i32 1
  %r106 = getelementptr %array2D, %array2D* %r105, i32 0, i32 0
  %r107 = getelementptr [16 x i32 ], [16 x i32 ]* %r106, i32 0, i32 %r104
  %r108 = load i32, i32* %r107
  %r109 = load i32, i32* %r100
  %r110 = getelementptr [16 x i32 ], [16 x i32 ]* @dis, i32 0, i32 %r109
  store i32 %r108, i32* %r110
  %r111 = load i32, i32* %r100
  %r112 = getelementptr [16 x i32 ], [16 x i32 ]* @book, i32 0, i32 %r111
  store i32 0, i32* %r112
  %r113 = load i32, i32* %r100
  %r114 = add i32 %r113, 1
  store i32 %r114, i32* %r100
  br label %bb2

bb4:
  %r115 = getelementptr [16 x i32 ], [16 x i32 ]* @book, i32 0, i32 1
  store i32 1, i32* %r115
  store i32 1, i32* %r100
  br label %bb5

bb5:
  %r116 = load i32, i32* %r100
  %r117 = load i32, i32* @n
  %r118 = sub i32 %r117, 1
  %r119 = icmp sle i32 %r116, %r118
  br i1 %r119, label %bb6, label %bb7

bb6:
  %r121 = load i32, i32* @INF
  store i32 %r121, i32* %r120
  store i32 0, i32* %r122
  store i32 1, i32* %r123
  br label %bb8

bb8:
  %r124 = load i32, i32* %r123
  %r125 = load i32, i32* @n
  %r126 = icmp sle i32 %r124, %r125
  br i1 %r126, label %bb9, label %bb10

bb9:
  %r128 = load i32, i32* %r120
  %r129 = load i32, i32* %r123
  %r130 = getelementptr [16 x i32 ], [16 x i32 ]* @dis, i32 0, i32 %r129
  %r131 = load i32, i32* %r130
  %r132 = icmp sgt i32 %r128, %r131
  br i1 %r132, label %bb14, label %bb12

bb14:
  %r133 = load i32, i32* %r123
  %r134 = getelementptr [16 x i32 ], [16 x i32 ]* @book, i32 0, i32 %r133
  %r135 = load i32, i32* %r134
  %r136 = icmp eq i32 %r135, 0
  br i1 %r136, label %bb11, label %bb12

bb11:
  %r137 = load i32, i32* %r123
  %r138 = getelementptr [16 x i32 ], [16 x i32 ]* @dis, i32 0, i32 %r137
  %r139 = load i32, i32* %r138
  store i32 %r139, i32* %r120
  %r140 = load i32, i32* %r123
  store i32 %r140, i32* %r122
  br label %bb13

bb12:
  br label %bb13

bb13:
  %r141 = load i32, i32* %r123
  %r142 = add i32 %r141, 1
  store i32 %r142, i32* %r123
  br label %bb8

bb10:
  %r143 = load i32, i32* %r122
  %r144 = getelementptr [16 x i32 ], [16 x i32 ]* @book, i32 0, i32 %r143
  store i32 1, i32* %r144
  store i32 1, i32* %r145
  br label %bb15

bb15:
  %r146 = load i32, i32* %r145
  %r147 = load i32, i32* @n
  %r148 = icmp sle i32 %r146, %r147
  br i1 %r148, label %bb16, label %bb17

bb16:
  %r149 = load i32, i32* %r145
  %r150 = load i32, i32* %r122
  %r151 = getelementptr [16 x %array2D ], [16 x %array2D ]* @e, i32 0, i32 %r150
  %r152 = getelementptr %array2D, %array2D* %r151, i32 0, i32 0
  %r153 = getelementptr [16 x i32 ], [16 x i32 ]* %r152, i32 0, i32 %r149
  %r154 = load i32, i32* %r153
  %r155 = load i32, i32* @INF
  %r156 = icmp slt i32 %r154, %r155
  br i1 %r156, label %bb18, label %bb19

bb18:
  %r157 = load i32, i32* %r145
  %r158 = getelementptr [16 x i32 ], [16 x i32 ]* @dis, i32 0, i32 %r157
  %r159 = load i32, i32* %r158
  %r160 = load i32, i32* %r122
  %r161 = getelementptr [16 x i32 ], [16 x i32 ]* @dis, i32 0, i32 %r160
  %r162 = load i32, i32* %r161
  %r163 = load i32, i32* %r145
  %r164 = load i32, i32* %r122
  %r165 = getelementptr [16 x %array2D ], [16 x %array2D ]* @e, i32 0, i32 %r164
  %r166 = getelementptr %array2D, %array2D* %r165, i32 0, i32 0
  %r167 = getelementptr [16 x i32 ], [16 x i32 ]* %r166, i32 0, i32 %r163
  %r168 = load i32, i32* %r167
  %r169 = add i32 %r162, %r168
  %r170 = icmp sgt i32 %r159, %r169
  br i1 %r170, label %bb21, label %bb22

bb21:
  %r171 = load i32, i32* %r122
  %r172 = getelementptr [16 x i32 ], [16 x i32 ]* @dis, i32 0, i32 %r171
  %r173 = load i32, i32* %r172
  %r174 = load i32, i32* %r145
  %r175 = load i32, i32* %r122
  %r176 = getelementptr [16 x %array2D ], [16 x %array2D ]* @e, i32 0, i32 %r175
  %r177 = getelementptr %array2D, %array2D* %r176, i32 0, i32 0
  %r178 = getelementptr [16 x i32 ], [16 x i32 ]* %r177, i32 0, i32 %r174
  %r179 = load i32, i32* %r178
  %r180 = add i32 %r173, %r179
  %r181 = load i32, i32* %r145
  %r182 = getelementptr [16 x i32 ], [16 x i32 ]* @dis, i32 0, i32 %r181
  store i32 %r180, i32* %r182
  br label %bb23

bb22:
  br label %bb23

bb23:
  br label %bb20

bb19:
  br label %bb20

bb20:
  %r183 = load i32, i32* %r145
  %r184 = add i32 %r183, 1
  store i32 %r184, i32* %r145
  br label %bb15

bb17:
  %r185 = load i32, i32* %r100
  %r186 = add i32 %r185, 1
  store i32 %r186, i32* %r100
  br label %bb5

bb7:
  ret void
}

define i32 @main( ) {
bb24:
  %r220 = alloca i32
  %r218 = alloca i32
  %r193 = alloca i32
  %r187 = alloca i32
  %r188 = call i32 @getint()
  store i32 %r188, i32* @n
  %r189 = call i32 @getint()
  store i32 %r189, i32* @m
  store i32 1, i32* %r187
  br label %bb25

bb25:
  %r190 = load i32, i32* %r187
  %r191 = load i32, i32* @n
  %r192 = icmp sle i32 %r190, %r191
  br i1 %r192, label %bb26, label %bb27

bb26:
  store i32 1, i32* %r193
  br label %bb28

bb28:
  %r194 = load i32, i32* %r193
  %r195 = load i32, i32* @n
  %r196 = icmp sle i32 %r194, %r195
  br i1 %r196, label %bb29, label %bb30

bb29:
  %r197 = load i32, i32* %r187
  %r198 = load i32, i32* %r193
  %r199 = icmp eq i32 %r197, %r198
  br i1 %r199, label %bb31, label %bb32

bb31:
  %r200 = load i32, i32* %r193
  %r201 = load i32, i32* %r187
  %r202 = getelementptr [16 x %array2D ], [16 x %array2D ]* @e, i32 0, i32 %r201
  %r203 = getelementptr %array2D, %array2D* %r202, i32 0, i32 0
  %r204 = getelementptr [16 x i32 ], [16 x i32 ]* %r203, i32 0, i32 %r200
  store i32 0, i32* %r204
  br label %bb33

bb32:
  %r205 = load i32, i32* @INF
  %r206 = load i32, i32* %r193
  %r207 = load i32, i32* %r187
  %r208 = getelementptr [16 x %array2D ], [16 x %array2D ]* @e, i32 0, i32 %r207
  %r209 = getelementptr %array2D, %array2D* %r208, i32 0, i32 0
  %r210 = getelementptr [16 x i32 ], [16 x i32 ]* %r209, i32 0, i32 %r206
  store i32 %r205, i32* %r210
  br label %bb33

bb33:
  %r211 = load i32, i32* %r193
  %r212 = add i32 %r211, 1
  store i32 %r212, i32* %r193
  br label %bb28

bb30:
  %r213 = load i32, i32* %r187
  %r214 = add i32 %r213, 1
  store i32 %r214, i32* %r187
  br label %bb25

bb27:
  store i32 1, i32* %r187
  br label %bb34

bb34:
  %r215 = load i32, i32* %r187
  %r216 = load i32, i32* @m
  %r217 = icmp sle i32 %r215, %r216
  br i1 %r217, label %bb35, label %bb36

bb35:
  %r219 = call i32 @getint()
  store i32 %r219, i32* %r218
  %r221 = call i32 @getint()
  store i32 %r221, i32* %r220
  %r222 = call i32 @getint()
  %r223 = load i32, i32* %r220
  %r224 = load i32, i32* %r218
  %r225 = getelementptr [16 x %array2D ], [16 x %array2D ]* @e, i32 0, i32 %r224
  %r226 = getelementptr %array2D, %array2D* %r225, i32 0, i32 0
  %r227 = getelementptr [16 x i32 ], [16 x i32 ]* %r226, i32 0, i32 %r223
  store i32 %r222, i32* %r227
  %r228 = load i32, i32* %r187
  %r229 = add i32 %r228, 1
  store i32 %r229, i32* %r187
  br label %bb34

bb36:
  call void @Dijkstra()
  store i32 1, i32* %r187
  br label %bb37

bb37:
  %r230 = load i32, i32* %r187
  %r231 = load i32, i32* @n
  %r232 = icmp sle i32 %r230, %r231
  br i1 %r232, label %bb38, label %bb39

bb38:
  %r233 = load i32, i32* %r187
  %r234 = getelementptr [16 x i32 ], [16 x i32 ]* @dis, i32 0, i32 %r233
  %r235 = load i32, i32* %r234
  call void @putint(i32 %r235)
  call void @putch(i32 32)
  %r236 = load i32, i32* %r187
  %r237 = add i32 %r236, 1
  store i32 %r237, i32* %r187
  br label %bb37

bb39:
  call void @putch(i32 10)
  ret i32 0
}

