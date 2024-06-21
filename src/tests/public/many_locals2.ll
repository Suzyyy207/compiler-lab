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
  %r255 = alloca i32
  %r194 = alloca i32
  call void @_sysy_starttime(i32 4)
  %r100 = alloca i32
  %r101 = alloca i32
  %r102 = alloca i32
  %r103 = alloca i32
  %r104 = alloca i32
  %r105 = alloca i32
  %r106 = alloca i32
  %r107 = alloca i32
  %r108 = alloca i32
  %r109 = alloca i32
  %r110 = alloca i32
  %r111 = alloca i32
  %r112 = alloca i32
  %r113 = alloca i32
  %r114 = alloca i32
  %r115 = alloca i32
  %r116 = alloca i32
  %r117 = alloca i32
  %r118 = alloca i32
  %r119 = alloca i32
  %r120 = alloca i32
  %r121 = alloca i32
  %r122 = alloca i32
  %r123 = alloca i32
  %r124 = alloca i32
  %r125 = alloca i32
  %r126 = alloca i32
  %r127 = alloca i32
  %r128 = alloca i32
  %r129 = alloca i32
  %r130 = alloca i32
  %r131 = call i32 @getint()
  store i32 %r131, i32* %r130
  br label %bb2

bb2:
  %r132 = load i32, i32* %r130
  %r133 = icmp eq i32 %r132, 5
  br i1 %r133, label %bb3, label %bb4

bb3:
  %r134 = load i32, i32* %r130
  %r135 = add i32 %r134, 1
  store i32 %r135, i32* %r130
  br label %bb2

bb4:
  store i32 0, i32* %r100
  %r136 = load i32, i32* %r100
  %r137 = add i32 %r136, 1
  store i32 %r137, i32* %r101
  %r138 = load i32, i32* %r101
  %r139 = add i32 %r138, 1
  store i32 %r139, i32* %r102
  %r140 = load i32, i32* %r102
  %r141 = add i32 %r140, 1
  store i32 %r141, i32* %r103
  %r142 = load i32, i32* %r103
  %r143 = add i32 %r142, 1
  store i32 %r143, i32* %r104
  %r144 = load i32, i32* %r104
  %r145 = add i32 %r144, 1
  store i32 %r145, i32* %r105
  %r146 = load i32, i32* %r105
  %r147 = add i32 %r146, 1
  store i32 %r147, i32* %r106
  %r148 = load i32, i32* %r106
  %r149 = add i32 %r148, 1
  store i32 %r149, i32* %r107
  %r150 = load i32, i32* %r107
  %r151 = add i32 %r150, 1
  store i32 %r151, i32* %r108
  %r152 = load i32, i32* %r108
  %r153 = add i32 %r152, 1
  store i32 %r153, i32* %r109
  %r154 = load i32, i32* %r109
  %r155 = add i32 %r154, 1
  store i32 %r155, i32* %r110
  %r156 = load i32, i32* %r110
  %r157 = add i32 %r156, 1
  store i32 %r157, i32* %r111
  %r158 = load i32, i32* %r111
  %r159 = add i32 %r158, 1
  store i32 %r159, i32* %r112
  %r160 = load i32, i32* %r112
  %r161 = add i32 %r160, 1
  store i32 %r161, i32* %r113
  %r162 = load i32, i32* %r113
  %r163 = add i32 %r162, 1
  store i32 %r163, i32* %r114
  %r164 = load i32, i32* %r114
  %r165 = add i32 %r164, 1
  store i32 %r165, i32* %r115
  %r166 = load i32, i32* %r115
  %r167 = add i32 %r166, 1
  store i32 %r167, i32* %r116
  %r168 = load i32, i32* %r116
  %r169 = add i32 %r168, 1
  store i32 %r169, i32* %r117
  %r170 = load i32, i32* %r117
  %r171 = add i32 %r170, 1
  store i32 %r171, i32* %r118
  %r172 = load i32, i32* %r118
  %r173 = add i32 %r172, 1
  store i32 %r173, i32* %r119
  %r174 = load i32, i32* %r119
  %r175 = add i32 %r174, 1
  store i32 %r175, i32* %r120
  %r176 = load i32, i32* %r120
  %r177 = add i32 %r176, 1
  store i32 %r177, i32* %r121
  %r178 = load i32, i32* %r121
  %r179 = add i32 %r178, 1
  store i32 %r179, i32* %r122
  %r180 = load i32, i32* %r122
  %r181 = add i32 %r180, 1
  store i32 %r181, i32* %r123
  %r182 = load i32, i32* %r123
  %r183 = add i32 %r182, 1
  store i32 %r183, i32* %r124
  %r184 = load i32, i32* %r124
  %r185 = add i32 %r184, 1
  store i32 %r185, i32* %r125
  %r186 = load i32, i32* %r125
  %r187 = add i32 %r186, 1
  store i32 %r187, i32* %r126
  %r188 = load i32, i32* %r126
  %r189 = add i32 %r188, 1
  store i32 %r189, i32* %r127
  %r190 = load i32, i32* %r127
  %r191 = add i32 %r190, 1
  store i32 %r191, i32* %r128
  %r192 = load i32, i32* %r128
  %r193 = add i32 %r192, 1
  store i32 %r193, i32* %r129
  %r195 = load i32, i32* %r100
  %r196 = load i32, i32* %r100
  call void @putint(i32 %r196)
  %r197 = load i32, i32* %r101
  %r198 = load i32, i32* %r101
  call void @putint(i32 %r198)
  %r199 = load i32, i32* %r102
  %r200 = load i32, i32* %r102
  call void @putint(i32 %r200)
  %r201 = load i32, i32* %r103
  %r202 = load i32, i32* %r103
  call void @putint(i32 %r202)
  %r203 = load i32, i32* %r104
  %r204 = load i32, i32* %r104
  call void @putint(i32 %r204)
  %r205 = load i32, i32* %r105
  %r206 = load i32, i32* %r105
  call void @putint(i32 %r206)
  %r207 = load i32, i32* %r106
  %r208 = load i32, i32* %r106
  call void @putint(i32 %r208)
  %r209 = load i32, i32* %r107
  %r210 = load i32, i32* %r107
  call void @putint(i32 %r210)
  %r211 = load i32, i32* %r108
  %r212 = load i32, i32* %r108
  call void @putint(i32 %r212)
  %r213 = load i32, i32* %r109
  %r214 = load i32, i32* %r109
  call void @putint(i32 %r214)
  %r215 = load i32, i32* %r110
  %r216 = load i32, i32* %r110
  call void @putint(i32 %r216)
  %r217 = load i32, i32* %r111
  %r218 = load i32, i32* %r111
  call void @putint(i32 %r218)
  %r219 = load i32, i32* %r112
  %r220 = load i32, i32* %r112
  call void @putint(i32 %r220)
  %r221 = load i32, i32* %r113
  %r222 = load i32, i32* %r113
  call void @putint(i32 %r222)
  %r223 = load i32, i32* %r114
  %r224 = load i32, i32* %r114
  call void @putint(i32 %r224)
  %r225 = load i32, i32* %r115
  %r226 = load i32, i32* %r115
  call void @putint(i32 %r226)
  %r227 = load i32, i32* %r116
  %r228 = load i32, i32* %r116
  call void @putint(i32 %r228)
  %r229 = load i32, i32* %r117
  %r230 = load i32, i32* %r117
  call void @putint(i32 %r230)
  %r231 = load i32, i32* %r118
  %r232 = load i32, i32* %r118
  call void @putint(i32 %r232)
  %r233 = load i32, i32* %r119
  %r234 = load i32, i32* %r119
  call void @putint(i32 %r234)
  %r235 = load i32, i32* %r120
  %r236 = load i32, i32* %r120
  call void @putint(i32 %r236)
  %r237 = load i32, i32* %r121
  %r238 = load i32, i32* %r121
  call void @putint(i32 %r238)
  %r239 = load i32, i32* %r122
  %r240 = load i32, i32* %r122
  call void @putint(i32 %r240)
  %r241 = load i32, i32* %r123
  %r242 = load i32, i32* %r123
  call void @putint(i32 %r242)
  %r243 = load i32, i32* %r124
  %r244 = load i32, i32* %r124
  call void @putint(i32 %r244)
  %r245 = load i32, i32* %r125
  %r246 = load i32, i32* %r125
  call void @putint(i32 %r246)
  %r247 = load i32, i32* %r126
  %r248 = load i32, i32* %r126
  call void @putint(i32 %r248)
  %r249 = load i32, i32* %r127
  %r250 = load i32, i32* %r127
  call void @putint(i32 %r250)
  %r251 = load i32, i32* %r128
  %r252 = load i32, i32* %r128
  call void @putint(i32 %r252)
  %r253 = load i32, i32* %r129
  %r254 = load i32, i32* %r129
  call void @putint(i32 %r254)
  store i32 10, i32* %r255
  %r256 = load i32, i32* %r255
  %r257 = load i32, i32* %r255
  call void @putch(i32 %r257)
  %r258 = load i32, i32* %r130
  %r259 = load i32, i32* %r130
  call void @putint(i32 %r259)
  %r260 = load i32, i32* %r255
  %r261 = load i32, i32* %r255
  call void @putch(i32 %r261)
  call void @_sysy_stoptime(i32 312)
  %r262 = load i32, i32* %r125
  ret i32 %r262
}

