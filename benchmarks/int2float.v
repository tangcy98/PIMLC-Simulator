module int2float( input [10:0] x , output [6:0] y );
  wire n12 , n13 , n14 , n15 , n16 , n17 , n18 , n19 , n20 , n21 , n22 , n23 , n24 , n25 , n26 , n27 , n28 , n29 , n30 , n31 , n32 , n33 , n34 , n35 , n36 , n37 , n38 , n39 , n40 , n41 , n42 , n43 , n44 , n45 , n46 , n47 , n48 , n49 , n50 , n51 , n52 , n53 , n54 , n55 , n56 , n57 , n58 , n59 , n60 , n61 , n62 , n63 , n64 , n65 , n66 , n67 , n68 , n69 , n70 , n71 , n72 , n73 , n74 , n75 , n76 , n77 , n78 , n79 , n80 , n81 , n82 , n83 , n84 , n85 , n86 , n87 , n88 , n89 , n90 , n91 , n92 , n93 , n94 , n95 , n96 , n97 , n98 , n99 , n100 , n101 , n102 , n103 , n104 , n105 , n106 , n107 , n108 , n109 , n110 , n111 , n112 , n113 , n114 , n115 , n116 , n117 , n118 , n119 , n120 , n121 , n122 , n123 , n124 , n125 , n126 , n127 , n128 , n129 , n130 , n131 , n132 , n133 , n134 , n135 , n136 , n137 , n138 , n139 , n140 , n141 , n142 , n143 , n144 , n145 , n146 , n147 , n148 , n149 , n150 , n151 , n152 , n153 , n154 , n155 , n156 , n157 , n158 , n159 , n160 , n161 , n162 , n163 , n164 , n165 , n166 , n167 , n168 , n169 , n170 , n171 , n172 , n173 , n174 , n175 , n176 , n177 , n178 , n179 , n180 , n181 , n182 , n183 , n184 , n185 , n186 , n187 , n188 , n189 , n190 , n191 , n192 , n193 , n194 , n195 , n196 , n197 , n198 , n199 , n200 , n201 , n202 , n203 , n204 , n205 , n206 , n207 , n208 , n209 , n210 , n211 , n212 , n213 , n214 , n215 , n216 , n217 , n218 , n219 , n220 , n221 , n222 , n223 , n224 , n225 , n226 , n227 , n228 , n229 , n230 , n231 , n232 , n233 , n234 , n235 , n236 , n237 , n238 , n239 , n240 , n241 , n242 , n243 , n244 , n245 , n246 , n247 , n248 , n249 , n250 , n251 , n252 , n253 , n254 , n255 , n256 , n257 , n258 , n259 , n260 , n261 , n262 , n263 , n264 , n265 , n266 , n267 , n268 , n269 , n270 , n271 , n272 , n273 , n274 , n275 , n276 , n277 , n278 , n279 , n280 , n281 , n282 , n283 , n284 , n285 , n286 , n287 , n288 , n289 , n290 , n291 , n292 , n293 , n294 , n295 , n296 , n297 , n298 , n299 , n300 , n301 , n302 , n303 , n304 , n305 , n306 , n307 , n308 , n309 , n310 , n311 , n312 , n313 ;
  assign n22 = x[2] & x[3] ;
  assign n100 = x[2] | x[3] ;
  assign n272 = ~n22 ;
  assign n101 = n272 & n100 ;
  assign n273 = ~x[9] ;
  assign n102 = n273 & n101 ;
  assign n274 = ~x[8] ;
  assign n103 = n274 & n102 ;
  assign n104 = x[10] | n103 ;
  assign n275 = ~x[7] ;
  assign n105 = n275 & n104 ;
  assign n29 = x[9] & x[10] ;
  assign n106 = x[8] & n29 ;
  assign n107 = n105 | n106 ;
  assign n108 = x[6] & n107 ;
  assign n276 = ~x[6] ;
  assign n109 = n276 & x[10] ;
  assign n110 = x[7] & n109 ;
  assign n111 = n108 | n110 ;
  assign n241 = x[5] & x[8] ;
  assign n277 = ~x[4] ;
  assign n27 = n277 & n241 ;
  assign n75 = n277 & x[7] ;
  assign n278 = ~x[2] ;
  assign n73 = x[1] & n278 ;
  assign n74 = x[5] & n275 ;
  assign n76 = n73 & n74 ;
  assign n77 = n75 | n76 ;
  assign n78 = x[3] & n77 ;
  assign n231 = x[4] & x[7] ;
  assign n279 = ~x[3] ;
  assign n79 = n279 & n231 ;
  assign n80 = n78 | n79 ;
  assign n81 = n274 & n80 ;
  assign n82 = n27 | n81 ;
  assign n26 = x[4] & x[8] ;
  assign n25 = x[1] & x[4] ;
  assign n65 = n277 & x[8] ;
  assign n66 = n25 | n65 ;
  assign n67 = x[0] & n66 ;
  assign n68 = x[0] | n25 ;
  assign n280 = ~n67 ;
  assign n69 = n280 & n68 ;
  assign n70 = n276 & n69 ;
  assign n71 = n275 & n70 ;
  assign n72 = n26 | n71 ;
  assign n281 = ~x[5] ;
  assign n83 = n281 & n72 ;
  assign n84 = n82 | n83 ;
  assign n85 = n273 & n84 ;
  assign n28 = x[4] | x[7] ;
  assign n86 = x[4] & n274 ;
  assign n87 = n279 & n86 ;
  assign n282 = ~n87 ;
  assign n88 = n28 & n282 ;
  assign n89 = x[2] | n88 ;
  assign n283 = ~n89 ;
  assign n90 = x[1] & n283 ;
  assign n60 = x[7] | x[8] ;
  assign n284 = ~x[1] ;
  assign n91 = n284 & x[2] ;
  assign n285 = ~n60 ;
  assign n92 = n285 & n91 ;
  assign n93 = x[9] | n92 ;
  assign n94 = n90 | n93 ;
  assign n95 = n276 & n94 ;
  assign n96 = x[5] & n95 ;
  assign n271 = x[6] & x[9] ;
  assign n97 = n281 & n271 ;
  assign n98 = n96 | n97 ;
  assign n99 = n85 | n98 ;
  assign n286 = ~x[10] ;
  assign n112 = n286 & n99 ;
  assign n12 = n111 | n112 ;
  assign n132 = x[8] | x[9] ;
  assign n287 = ~n132 ;
  assign n133 = x[4] & n287 ;
  assign n134 = x[6] | x[7] ;
  assign n135 = x[4] | n134 ;
  assign n288 = ~n133 ;
  assign n136 = n288 & n135 ;
  assign n289 = ~n136 ;
  assign n137 = x[2] & n289 ;
  assign n138 = x[1] & n137 ;
  assign n139 = x[7] & n273 ;
  assign n140 = n86 & n139 ;
  assign n141 = n138 | n140 ;
  assign n143 = x[3] & n141 ;
  assign n33 = x[7] & x[9] ;
  assign n120 = x[8] & n273 ;
  assign n121 = x[4] & n120 ;
  assign n142 = n33 | n121 ;
  assign n144 = x[6] & n142 ;
  assign n145 = n143 | n144 ;
  assign n146 = x[5] & n145 ;
  assign n128 = n275 & x[9] ;
  assign n147 = n277 & n120 ;
  assign n148 = n128 | n147 ;
  assign n149 = n276 & n148 ;
  assign n150 = n146 | n149 ;
  assign n32 = x[1] & x[2] ;
  assign n290 = ~n32 ;
  assign n115 = x[0] & n290 ;
  assign n291 = ~x[0] ;
  assign n116 = n291 & x[2] ;
  assign n117 = n115 | n116 ;
  assign n118 = x[7] | n117 ;
  assign n292 = ~n118 ;
  assign n119 = x[4] & n292 ;
  assign n122 = n119 | n120 ;
  assign n30 = x[4] | x[9] ;
  assign n31 = x[2] | x[7] ;
  assign n114 = n30 & n31 ;
  assign n123 = x[1] | n114 ;
  assign n293 = ~n122 ;
  assign n124 = n293 & n123 ;
  assign n125 = x[6] | n124 ;
  assign n175 = x[3] & x[4] ;
  assign n294 = ~n175 ;
  assign n126 = x[7] & n294 ;
  assign n127 = n273 & n126 ;
  assign n129 = n274 & n127 ;
  assign n130 = n128 | n129 ;
  assign n295 = ~n130 ;
  assign n131 = n125 & n295 ;
  assign n151 = x[5] | n131 ;
  assign n296 = ~n150 ;
  assign n152 = n296 & n151 ;
  assign n153 = x[10] | n152 ;
  assign n154 = x[6] & n273 ;
  assign n155 = n277 & n154 ;
  assign n156 = x[5] & n276 ;
  assign n160 = n284 & n156 ;
  assign n161 = n155 | n160 ;
  assign n162 = n279 & n161 ;
  assign n163 = x[4] & n154 ;
  assign n164 = n22 & n163 ;
  assign n165 = x[10] | n164 ;
  assign n166 = n162 | n165 ;
  assign n158 = n279 & n156 ;
  assign n159 = n155 | n158 ;
  assign n167 = n278 & n159 ;
  assign n168 = n166 | n167 ;
  assign n169 = n275 & n168 ;
  assign n170 = n109 | n169 ;
  assign n172 = n274 & n170 ;
  assign n34 = x[6] & x[10] ;
  assign n171 = x[7] & n34 ;
  assign n173 = n120 & n171 ;
  assign n174 = n172 | n173 ;
  assign n297 = ~n174 ;
  assign n13 = n153 & n297 ;
  assign n37 = x[8] & x[10] ;
  assign n221 = n274 & x[9] ;
  assign n222 = x[5] & n221 ;
  assign n223 = n37 | n222 ;
  assign n224 = x[7] & n223 ;
  assign n225 = x[6] & n224 ;
  assign n59 = x[5] & x[7] ;
  assign n298 = ~n59 ;
  assign n226 = x[8] & n298 ;
  assign n227 = x[10] | n226 ;
  assign n228 = x[9] & n227 ;
  assign n229 = n225 | n228 ;
  assign n204 = n276 & x[7] ;
  assign n205 = x[3] & n204 ;
  assign n206 = x[6] & n275 ;
  assign n207 = n278 & n206 ;
  assign n208 = n205 | n207 ;
  assign n209 = x[5] & n208 ;
  assign n210 = x[4] & n209 ;
  assign n36 = x[4] & x[5] ;
  assign n299 = ~n36 ;
  assign n211 = x[7] & n299 ;
  assign n212 = x[6] & n211 ;
  assign n213 = n210 | n212 ;
  assign n176 = x[4] & n276 ;
  assign n177 = x[0] & n279 ;
  assign n179 = n176 & n177 ;
  assign n178 = n277 & x[5] ;
  assign n180 = x[3] & n178 ;
  assign n181 = n179 | n180 ;
  assign n182 = x[1] & n181 ;
  assign n184 = x[4] | x[6] ;
  assign n19 = x[0] & x[1] ;
  assign n300 = ~n19 ;
  assign n183 = x[4] & n300 ;
  assign n185 = x[3] & n183 ;
  assign n301 = ~n185 ;
  assign n186 = n184 & n301 ;
  assign n187 = x[5] | n186 ;
  assign n302 = ~n182 ;
  assign n188 = n302 & n187 ;
  assign n303 = ~n188 ;
  assign n192 = x[2] & n303 ;
  assign n35 = n279 & x[5] ;
  assign n189 = x[3] & n276 ;
  assign n190 = n278 & n189 ;
  assign n191 = n35 | n190 ;
  assign n193 = x[4] & n191 ;
  assign n194 = n192 | n193 ;
  assign n195 = n275 & n194 ;
  assign n50 = n281 & x[6] ;
  assign n196 = x[2] & n50 ;
  assign n197 = n160 | n196 ;
  assign n198 = x[4] & n197 ;
  assign n200 = x[3] & n198 ;
  assign n199 = x[5] & n294 ;
  assign n201 = x[6] & n199 ;
  assign n202 = n200 | n201 ;
  assign n203 = n195 | n202 ;
  assign n214 = n274 & n203 ;
  assign n215 = n213 | n214 ;
  assign n216 = n273 & n215 ;
  assign n23 = x[4] & x[6] ;
  assign n217 = n23 & n74 ;
  assign n218 = n204 | n217 ;
  assign n219 = x[8] & n218 ;
  assign n220 = n216 | n219 ;
  assign n230 = n286 & n220 ;
  assign n14 = n229 | n230 ;
  assign n38 = x[6] & x[7] ;
  assign n232 = n278 & n38 ;
  assign n233 = x[5] & n26 ;
  assign n234 = n232 & n233 ;
  assign n235 = x[4] | x[8] ;
  assign n236 = x[5] | n235 ;
  assign n237 = n134 | n236 ;
  assign n304 = ~n234 ;
  assign n238 = n304 & n237 ;
  assign n239 = x[9] | n238 ;
  assign n240 = x[10] | n239 ;
  assign n15 = x[3] | n240 ;
  assign n113 = x[5] & x[6] ;
  assign n242 = x[4] & n275 ;
  assign n243 = n113 & n242 ;
  assign n244 = x[5] | x[6] ;
  assign n305 = ~n244 ;
  assign n245 = n19 & n305 ;
  assign n246 = n243 | n245 ;
  assign n247 = x[3] & n246 ;
  assign n248 = x[2] & n247 ;
  assign n249 = x[4] | n206 ;
  assign n157 = x[7] | n156 ;
  assign n250 = n279 & n157 ;
  assign n251 = x[6] | n32 ;
  assign n306 = ~n251 ;
  assign n252 = x[5] & n306 ;
  assign n253 = x[9] | n252 ;
  assign n307 = ~n113 ;
  assign n254 = x[7] & n307 ;
  assign n255 = n253 | n254 ;
  assign n256 = n250 | n255 ;
  assign n308 = ~n256 ;
  assign n257 = n249 & n308 ;
  assign n309 = ~n248 ;
  assign n258 = n309 & n257 ;
  assign n259 = x[8] | n258 ;
  assign n266 = x[7] & n113 ;
  assign n310 = ~n266 ;
  assign n267 = x[9] & n310 ;
  assign n39 = x[3] & x[8] ;
  assign n260 = x[2] & n279 ;
  assign n261 = n39 | n260 ;
  assign n262 = x[6] & n261 ;
  assign n263 = x[5] & n262 ;
  assign n264 = x[7] & n263 ;
  assign n265 = n273 & n264 ;
  assign n268 = x[4] & n265 ;
  assign n269 = n267 | n268 ;
  assign n311 = ~n269 ;
  assign n270 = n259 & n311 ;
  assign n16 = x[10] | n270 ;
  assign n51 = n22 & n23 ;
  assign n312 = ~n51 ;
  assign n52 = x[5] & n312 ;
  assign n53 = n50 | n52 ;
  assign n54 = n275 & n53 ;
  assign n55 = n274 & n54 ;
  assign n56 = x[9] | x[10] ;
  assign n57 = n55 | n56 ;
  assign n20 = x[6] & x[8] ;
  assign n40 = n59 & n20 ;
  assign n21 = x[1] & x[3] ;
  assign n41 = x[0] & n21 ;
  assign n42 = x[5] | x[7] ;
  assign n43 = x[8] | n42 ;
  assign n313 = ~n43 ;
  assign n44 = n41 & n313 ;
  assign n45 = n40 | n44 ;
  assign n46 = x[2] & n45 ;
  assign n64 = x[3] & x[6] ;
  assign n47 = x[8] & n59 ;
  assign n48 = n64 & n47 ;
  assign n49 = n46 | n48 ;
  assign n58 = x[4] & n49 ;
  assign n17 = n57 | n58 ;
  assign n24 = x[2] & n175 ;
  assign n61 = n113 & n24 ;
  assign n62 = x[9] | n61 ;
  assign n63 = x[10] | n62 ;
  assign n18 = n60 | n63 ;
  assign y[0] = n12 ;
  assign y[1] = n13 ;
  assign y[2] = n14 ;
  assign y[3] = n15 ;
  assign y[4] = n16 ;
  assign y[5] = n17 ;
  assign y[6] = n18 ;
endmodule