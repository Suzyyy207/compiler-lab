declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
define i32 @uniquePaths( i32 %r100, i32 %r102 ) {
bb2:
  %r191 = add i32 0, 0
  %r192 = add i32 0, 0
  %r193 = add i32 0, 0
  %r194 = add i32 0, 0
  %r195 = add i32 0, 0
  %r109 = alloca [ 9 x i32 ]
  %r196 = add i32 0, 0
  %r197 = add i32 %r100, 0
  %r198 = add i32 0, 0
  %r199 = add i32 %r102, 0
  br label %bb1

bb1:
  %r200 = icmp eq i32 %r197, 1
  br i1 %r200, label %bb3, label %bb6

bb6:
  %r201 = icmp eq i32 %r199, 1
  br i1 %r201, label %bb3, label %bb4

bb3:
  ret i32 1
bb4:
  br label %bb5

bb5:
  %r202 = add i32 0, 0
  br label %bb7

bb7:
  %r203 = phi i32 [ %r202, %bb5 ], [ %r245, %bb8 ]
  %r204 = icmp slt i32 %r203, %r197
  br i1 %r204, label %bb8, label %bb9

bb8:
  %r240 = mul i32 %r203, 3
  %r241 = add i32 %r240, %r199
  %r242 = sub i32 %r241, 1
  %r243 = add i32 %r242, 0
  %r124 = getelementptr [9 x i32 ], [9 x i32 ]* %r109, i32 0, i32 %r243
  store i32 1, i32* %r124
  %r244 = add i32 %r203, 1
  %r245 = add i32 %r244, 0
  br label %bb7

bb9:
  %r205 = add i32 0, 0
  br label %bb10

bb10:
  %r206 = phi i32 [ %r205, %bb9 ], [ %r239, %bb11 ]
  %r207 = icmp slt i32 %r206, %r199
  br i1 %r207, label %bb11, label %bb12

bb11:
  %r234 = sub i32 %r197, 1
  %r235 = mul i32 %r234, 3
  %r236 = add i32 %r235, %r206
  %r237 = add i32 %r236, 0
  %r136 = getelementptr [9 x i32 ], [9 x i32 ]* %r109, i32 0, i32 %r237
  store i32 1, i32* %r136
  %r238 = add i32 %r206, 1
  %r239 = add i32 %r238, 0
  br label %bb10

bb12:
  %r208 = sub i32 %r197, 2
  %r209 = add i32 %r208, 0
  br label %bb13

bb13:
  %r210 = phi i32 [ %r209, %bb12 ], [ %r219, %bb18 ]
  %r211 = sub i32 0, 1
  %r212 = icmp sgt i32 %r210, %r211
  br i1 %r212, label %bb14, label %bb15

bb14:
  %r213 = sub i32 %r199, 2
  %r214 = add i32 %r213, 0
  br label %bb16

bb16:
  %r215 = phi i32 [ %r214, %bb14 ], [ %r233, %bb17 ]
  %r216 = sub i32 0, 1
  %r217 = icmp sgt i32 %r215, %r216
  br i1 %r217, label %bb17, label %bb18

bb17:
  %r220 = mul i32 %r210, 3
  %r221 = add i32 %r220, %r215
  %r222 = add i32 %r221, 0
  %r223 = add i32 %r210, 1
  %r224 = mul i32 %r223, 3
  %r225 = add i32 %r224, %r215
  %r226 = add i32 %r225, 0
  %r227 = mul i32 %r210, 3
  %r228 = add i32 %r227, %r215
  %r229 = add i32 %r228, 1
  %r230 = add i32 %r229, 0
  %r164 = getelementptr [9 x i32 ], [9 x i32 ]* %r109, i32 0, i32 %r226
  %r165 = load i32, i32* %r164
  %r167 = getelementptr [9 x i32 ], [9 x i32 ]* %r109, i32 0, i32 %r230
  %r168 = load i32, i32* %r167
  %r231 = add i32 %r165, %r168
  %r171 = getelementptr [9 x i32 ], [9 x i32 ]* %r109, i32 0, i32 %r222
  store i32 %r231, i32* %r171
  %r232 = sub i32 %r215, 1
  %r233 = add i32 %r232, 0
  br label %bb16

bb18:
  %r218 = sub i32 %r210, 1
  %r219 = add i32 %r218, 0
  br label %bb13

bb15:
  %r176 = getelementptr [9 x i32 ], [9 x i32 ]* %r109, i32 0, i32 0
  %r177 = load i32, i32* %r176
  ret i32 %r177
}

define i32 @main( ) {
bb19:
  call void @_sysy_starttime(i32 40)
  %r248 = add i32 0, 0
  %r249 = add i32 0, 0
  %r250 = add i32 3, 0
  %r251 = call i32 @uniquePaths(i32 %r250, i32 %r250)
  %r252 = add i32 %r251, 0
  call void @_sysy_stoptime(i32 45)
  ret i32 %r252
}

