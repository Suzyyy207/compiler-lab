declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
define i32 @canJump( i32* %r100, i32 %r101 ) {
bb1:
  %r124 = alloca i32
  %r116 = alloca i32
  %r108 = alloca i32
  %r107 = alloca [ 10 x i32 ]
  %r102 = icmp eq i32 %r101, 1
  br i1 %r102, label %bb2, label %bb3

bb2:
  ret i32 1
  br label %bb4

bb4:
  %r103 = getelementptr i32, i32* %r100, i32 0
  %r104 = load i32, i32* %r103
  %r105 = sub i32 %r101, 2
  %r106 = icmp sgt i32 %r104, %r105
  br i1 %r106, label %bb5, label %bb6

bb5:
  ret i32 1
  br label %bb7

bb7:
  store i32 0, i32* %r108
  br label %bb8

bb8:
  %r109 = load i32, i32* %r108
  %r110 = sub i32 %r101, 1
  %r111 = icmp slt i32 %r109, %r110
  br i1 %r111, label %bb9, label %bb10

bb9:
  %r112 = load i32, i32* %r108
  %r113 = getelementptr [10 x i32 ], [10 x i32 ]* %r107, i32 0, i32 %r112
  store i32 0, i32* %r113
  %r114 = load i32, i32* %r108
  %r115 = add i32 %r114, 1
  store i32 %r115, i32* %r108
  br label %bb8

bb10:
  %r117 = sub i32 %r101, 1
  store i32 %r117, i32* %r116
  %r118 = load i32, i32* %r116
  %r119 = getelementptr [10 x i32 ], [10 x i32 ]* %r107, i32 0, i32 %r118
  store i32 1, i32* %r119
  %r120 = sub i32 %r101, 2
  store i32 %r120, i32* %r108
  br label %bb11

bb11:
  %r121 = load i32, i32* %r108
  %r122 = sub i32 0, 1
  %r123 = icmp sgt i32 %r121, %r122
  br i1 %r123, label %bb12, label %bb13

bb12:
  %r125 = load i32, i32* %r108
  %r126 = getelementptr i32, i32* %r100, i32 %r125
  %r127 = load i32, i32* %r126
  %r128 = sub i32 %r101, 1
  %r129 = load i32, i32* %r108
  %r130 = sub i32 %r128, %r129
  %r131 = icmp slt i32 %r127, %r130
  br i1 %r131, label %bb14, label %bb15

bb14:
  %r132 = load i32, i32* %r108
  %r133 = getelementptr i32, i32* %r100, i32 %r132
  %r134 = load i32, i32* %r133
  store i32 %r134, i32* %r124
  br label %bb16

bb15:
  %r135 = sub i32 %r101, 1
  %r136 = load i32, i32* %r108
  %r137 = sub i32 %r135, %r136
  store i32 %r137, i32* %r124
  br label %bb16

bb16:
  br label %bb17

bb17:
  %r138 = load i32, i32* %r124
  %r139 = sub i32 0, 1
  %r140 = icmp sgt i32 %r138, %r139
  br i1 %r140, label %bb18, label %bb19

bb18:
  %r141 = load i32, i32* %r108
  %r142 = load i32, i32* %r124
  %r143 = add i32 %r141, %r142
  store i32 %r143, i32* %r116
  %r144 = load i32, i32* %r116
  %r145 = getelementptr [10 x i32 ], [10 x i32 ]* %r107, i32 0, i32 %r144
  %r146 = load i32, i32* %r145
  %r147 = icmp ne i32 %r146, 0
  br i1 %r147, label %bb20, label %bb21

bb20:
  %r148 = load i32, i32* %r108
  %r149 = getelementptr [10 x i32 ], [10 x i32 ]* %r107, i32 0, i32 %r148
  store i32 1, i32* %r149
  br label %bb22

bb22:
  %r150 = load i32, i32* %r124
  %r151 = sub i32 %r150, 1
  store i32 %r151, i32* %r124
  br label %bb17

bb19:
  %r152 = load i32, i32* %r108
  %r153 = sub i32 %r152, 1
  store i32 %r153, i32* %r108
  br label %bb11

bb13:
  %r154 = getelementptr [10 x i32 ], [10 x i32 ]* %r107, i32 0, i32 0
  %r155 = load i32, i32* %r154
  ret i32 %r155
}

define i32 @main( ) {
bb23:
  %r156 = alloca i32
  %r157 = alloca [ 10 x i32 ]
  %r158 = getelementptr [10 x i32 ], [10 x i32 ]* %r157, i32 0, i32 0
  store i32 3, i32* %r158
  %r159 = getelementptr [10 x i32 ], [10 x i32 ]* %r157, i32 0, i32 1
  store i32 3, i32* %r159
  %r160 = getelementptr [10 x i32 ], [10 x i32 ]* %r157, i32 0, i32 2
  store i32 9, i32* %r160
  %r161 = getelementptr [10 x i32 ], [10 x i32 ]* %r157, i32 0, i32 3
  store i32 0, i32* %r161
  %r162 = getelementptr [10 x i32 ], [10 x i32 ]* %r157, i32 0, i32 4
  store i32 0, i32* %r162
  %r163 = getelementptr [10 x i32 ], [10 x i32 ]* %r157, i32 0, i32 5
  store i32 1, i32* %r163
  %r164 = getelementptr [10 x i32 ], [10 x i32 ]* %r157, i32 0, i32 6
  store i32 1, i32* %r164
  %r165 = getelementptr [10 x i32 ], [10 x i32 ]* %r157, i32 0, i32 7
  store i32 5, i32* %r165
  %r166 = getelementptr [10 x i32 ], [10 x i32 ]* %r157, i32 0, i32 8
  store i32 7, i32* %r166
  %r167 = getelementptr [10 x i32 ], [10 x i32 ]* %r157, i32 0, i32 9
  store i32 8, i32* %r167
  store i32 10, i32* %r156
  %r168 = load i32, i32* %r156
  %r169 = call i32 @canJump(i32* %r157, i32 %r168)
  store i32 %r169, i32* %r156
  %r170 = load i32, i32* %r156
  ret i32 %r170
}

