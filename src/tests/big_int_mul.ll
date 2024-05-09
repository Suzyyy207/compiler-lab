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
  %r213 = alloca i32
  call void @_sysy_starttime(i32 97)
  %r100 = alloca i32
  %r101 = alloca i32
  %r102 = alloca i32
  %r103 = alloca i32
  %r104 = alloca i32
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
  %r147 = alloca i32
  store i32 %r148, i32* %r147
  %r150 = load i32, i32* @len
  %r149 = alloca i32
  store i32 %r150, i32* %r149
  %r151 = alloca [ 25 x i32 ]
  %r152 = alloca [ 25 x i32 ]
  %r153 = alloca [ 40 x i32 ]
  %r154 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 0
  store i32 0, i32* %r154
  store i32 0, i32* %r100
  br label %bb2

bb2:
  %r155 = load i32, i32* %r100
  %r156 = load i32, i32* %r147
  %r157 = icmp slt i32 %r155, %r156
  br i1 %r157, label %bb3, label %bb4

bb3:
  %r158 = load i32, i32* %r100
  %r159 = getelementptr [20 x i32 ], [20 x i32 ]* %r105, i32 0, i32 %r158
  %r160 = load i32, i32* %r159
  %r161 = load i32, i32* %r100
  %r162 = getelementptr [25 x i32 ], [25 x i32 ]* %r151, i32 0, i32 %r161
  store i32 %r160, i32* %r162
  %r163 = load i32, i32* %r100
  %r164 = add i32 %r163, 1
  store i32 %r164, i32* %r100
  br label %bb2

bb4:
  store i32 0, i32* %r100
  br label %bb5

bb5:
  %r165 = load i32, i32* %r100
  %r166 = load i32, i32* %r149
  %r167 = icmp slt i32 %r165, %r166
  br i1 %r167, label %bb6, label %bb7

bb6:
  %r168 = load i32, i32* %r100
  %r169 = getelementptr [20 x i32 ], [20 x i32 ]* %r126, i32 0, i32 %r168
  %r170 = load i32, i32* %r169
  %r171 = load i32, i32* %r100
  %r172 = getelementptr [25 x i32 ], [25 x i32 ]* %r152, i32 0, i32 %r171
  store i32 %r170, i32* %r172
  %r173 = load i32, i32* %r100
  %r174 = add i32 %r173, 1
  store i32 %r174, i32* %r100
  br label %bb5

bb7:
  %r175 = load i32, i32* %r147
  %r176 = load i32, i32* %r149
  %r177 = add i32 %r175, %r176
  %r178 = sub i32 %r177, 1
  store i32 %r178, i32* %r103
  store i32 0, i32* %r100
  br label %bb8

bb8:
  %r179 = load i32, i32* %r100
  %r180 = load i32, i32* %r103
  %r181 = icmp sle i32 %r179, %r180
  br i1 %r181, label %bb9, label %bb10

bb9:
  %r182 = load i32, i32* %r100
  %r183 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 %r182
  store i32 0, i32* %r183
  %r184 = load i32, i32* %r100
  %r185 = add i32 %r184, 1
  store i32 %r185, i32* %r100
  br label %bb8

bb10:
  store i32 0, i32* %r104
  %r186 = load i32, i32* %r149
  %r187 = sub i32 %r186, 1
  store i32 %r187, i32* %r100
  br label %bb11

bb11:
  %r188 = load i32, i32* %r100
  %r189 = sub i32 0, 1
  %r190 = icmp sgt i32 %r188, %r189
  br i1 %r190, label %bb12, label %bb13

bb12:
  %r191 = load i32, i32* %r100
  %r192 = getelementptr [25 x i32 ], [25 x i32 ]* %r152, i32 0, i32 %r191
  %r193 = load i32, i32* %r192
  store i32 %r193, i32* %r102
  %r194 = load i32, i32* %r147
  %r195 = sub i32 %r194, 1
  store i32 %r195, i32* %r101
  br label %bb14

bb14:
  %r196 = load i32, i32* %r101
  %r197 = sub i32 0, 1
  %r198 = icmp sgt i32 %r196, %r197
  br i1 %r198, label %bb15, label %bb16

bb15:
  %r199 = load i32, i32* %r103
  %r200 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 %r199
  %r201 = load i32, i32* %r200
  %r202 = load i32, i32* %r102
  %r203 = load i32, i32* %r101
  %r204 = getelementptr [25 x i32 ], [25 x i32 ]* %r151, i32 0, i32 %r203
  %r205 = load i32, i32* %r204
  %r206 = mul i32 %r202, %r205
  %r207 = add i32 %r201, %r206
  store i32 %r207, i32* %r104
  %r208 = load i32, i32* %r104
  %r209 = icmp sge i32 %r208, 10
  br i1 %r209, label %bb17, label %bb18

bb17:
  %r210 = load i32, i32* %r104
  %r211 = load i32, i32* %r103
  %r212 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 %r211
  store i32 %r210, i32* %r212
  %r214 = load i32, i32* %r103
  %r215 = sub i32 %r214, 1
  store i32 %r215, i32* %r213
  %r216 = load i32, i32* %r213
  %r217 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 %r216
  %r218 = load i32, i32* %r217
  %r219 = load i32, i32* %r104
  %r220 = sdiv i32 %r219, 10
  %r221 = add i32 %r218, %r220
  %r222 = load i32, i32* %r213
  %r223 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 %r222
  store i32 %r221, i32* %r223
  br label %bb19

bb18:
  %r224 = load i32, i32* %r104
  %r225 = load i32, i32* %r103
  %r226 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 %r225
  store i32 %r224, i32* %r226
  br label %bb19

bb19:
  %r227 = load i32, i32* %r101
  %r228 = sub i32 %r227, 1
  store i32 %r228, i32* %r101
  %r229 = load i32, i32* %r103
  %r230 = sub i32 %r229, 1
  store i32 %r230, i32* %r103
  br label %bb14

bb16:
  %r231 = load i32, i32* %r103
  %r232 = load i32, i32* %r147
  %r233 = add i32 %r231, %r232
  %r234 = sub i32 %r233, 1
  store i32 %r234, i32* %r103
  %r235 = load i32, i32* %r100
  %r236 = sub i32 %r235, 1
  store i32 %r236, i32* %r100
  br label %bb11

bb13:
  %r237 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 0
  %r238 = load i32, i32* %r237
  %r239 = icmp ne i32 %r238, 0
  br i1 %r239, label %bb20, label %bb21

bb20:
  %r240 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 0
  %r241 = load i32, i32* %r240
  call void @putint(i32 %r241)
  br label %bb22

bb21:
  br label %bb22

bb22:
  store i32 1, i32* %r100
  br label %bb23

bb23:
  %r242 = load i32, i32* %r100
  %r243 = load i32, i32* %r147
  %r244 = load i32, i32* %r149
  %r245 = add i32 %r243, %r244
  %r246 = sub i32 %r245, 1
  %r247 = icmp sle i32 %r242, %r246
  br i1 %r247, label %bb24, label %bb25

bb24:
  %r248 = load i32, i32* %r100
  %r249 = getelementptr [40 x i32 ], [40 x i32 ]* %r153, i32 0, i32 %r248
  %r250 = load i32, i32* %r249
  call void @putint(i32 %r250)
  %r251 = load i32, i32* %r100
  %r252 = add i32 %r251, 1
  store i32 %r252, i32* %r100
  br label %bb23

bb25:
  call void @_sysy_stoptime(i32 117)
  ret i32 0
}

