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
@vis = global [ 1005 x i32 ] zeroinitializer
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

define void @clear( ) {
bb22:
  %r166 = alloca i32
  store i32 1, i32* %r166
  br label %bb23

bb23:
  %r167 = load i32, i32* %r166
  %r168 = load i32, i32* @n
  %r169 = icmp sle i32 %r167, %r168
  br i1 %r169, label %bb24, label %bb25

bb24:
  %r170 = load i32, i32* %r166
  %r171 = getelementptr [1005 x i32 ], [1005 x i32 ]* @vis, i32 0, i32 %r170
  store i32 0, i32* %r171
  %r172 = load i32, i32* %r166
  %r173 = add i32 %r172, 1
  store i32 %r173, i32* %r166
  br label %bb23

bb25:
  ret void
}

define i32 @same( i32 %r174, i32 %r176 ) {
bb27:
  %r190 = alloca i32
  %r183 = alloca i32
  %r175 = alloca i32
  store i32 %r174, i32* %r175
  %r177 = alloca i32
  store i32 %r176, i32* %r177
  br label %bb26

bb26:
  %r178 = load i32, i32* %r175
  %r179 = getelementptr [1005 x i32 ], [1005 x i32 ]* @vis, i32 0, i32 %r178
  store i32 1, i32* %r179
  %r180 = load i32, i32* %r175
  %r181 = load i32, i32* %r177
  %r182 = icmp eq i32 %r180, %r181
  br i1 %r182, label %bb28, label %bb29

bb28:
  ret i32 1
  br label %bb30

bb29:
  br label %bb30

bb30:
  %r184 = load i32, i32* %r175
  %r185 = getelementptr [1005 x i32 ], [1005 x i32 ]* @head, i32 0, i32 %r184
  %r186 = load i32, i32* %r185
  store i32 %r186, i32* %r183
  br label %bb31

bb31:
  %r187 = load i32, i32* %r183
  %r188 = sub i32 0, 1
  %r189 = icmp ne i32 %r187, %r188
  br i1 %r189, label %bb32, label %bb33

bb32:
  %r191 = load i32, i32* %r183
  %r192 = getelementptr [5005 x i32 ], [5005 x i32 ]* @to, i32 0, i32 %r191
  %r193 = load i32, i32* %r192
  store i32 %r193, i32* %r190
  %r195 = load i32, i32* %r190
  %r196 = getelementptr [1005 x i32 ], [1005 x i32 ]* @vis, i32 0, i32 %r195
  %r197 = load i32, i32* %r196
  %r198 = icmp eq i32 %r197, 0
  br i1 %r198, label %bb37, label %bb35

bb37:
  %r199 = load i32, i32* %r190
  %r200 = load i32, i32* %r177
  %r201 = call i32 @same(i32 %r199, i32 %r200)
  %r202 = icmp ne i32 %r201, 0
  br i1 %r202, label %bb34, label %bb35

bb34:
  ret i32 1
  br label %bb36

bb35:
  br label %bb36

bb36:
  %r203 = load i32, i32* %r183
  %r204 = getelementptr [5005 x i32 ], [5005 x i32 ]* @next, i32 0, i32 %r203
  %r205 = load i32, i32* %r204
  store i32 %r205, i32* %r183
  br label %bb31

bb33:
  ret i32 0
}

define i32 @main( ) {
bb38:
  %r206 = call i32 @quickread()
  store i32 %r206, i32* @n
  %r207 = call i32 @quickread()
  store i32 %r207, i32* @m
  call void @init()
  %r208 = alloca i32
  store i32 0, i32* %r208
  %r209 = alloca i32
  store i32 0, i32* %r209
  %r210 = alloca i32
  store i32 0, i32* %r210
  br label %bb39

bb39:
  %r211 = load i32, i32* @m
  %r212 = icmp ne i32 %r211, 0
  br i1 %r212, label %bb40, label %bb41

bb40:
  %r213 = call i32 @getch()
  store i32 %r213, i32* %r208
  br label %bb42

bb42:
  %r215 = load i32, i32* %r208
  %r216 = icmp ne i32 %r215, 81
  br i1 %r216, label %bb45, label %bb44

bb45:
  %r217 = load i32, i32* %r208
  %r218 = icmp ne i32 %r217, 85
  br i1 %r218, label %bb43, label %bb44

bb43:
  %r219 = call i32 @getch()
  store i32 %r219, i32* %r208
  br label %bb42

bb44:
  %r220 = load i32, i32* %r208
  %r221 = icmp eq i32 %r220, 81
  br i1 %r221, label %bb46, label %bb47

bb46:
  %r222 = call i32 @quickread()
  store i32 %r222, i32* %r209
  %r223 = call i32 @quickread()
  store i32 %r223, i32* %r210
  call void @clear()
  %r224 = load i32, i32* %r209
  %r225 = load i32, i32* %r210
  %r226 = call i32 @same(i32 %r224, i32 %r225)
  call void @putint(i32 %r226)
  call void @putch(i32 10)
  br label %bb48

bb47:
  %r227 = call i32 @quickread()
  store i32 %r227, i32* %r209
  %r228 = call i32 @quickread()
  store i32 %r228, i32* %r210
  %r229 = load i32, i32* %r209
  %r230 = load i32, i32* %r209
  %r231 = load i32, i32* %r210
  %r232 = load i32, i32* %r210
  call void @addedge(i32 %r230, i32 %r232)
  br label %bb48

bb48:
  %r233 = load i32, i32* @m
  %r234 = sub i32 %r233, 1
  store i32 %r234, i32* @m
  br label %bb39

bb41:
  ret i32 0
}

