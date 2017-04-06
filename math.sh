#!/bin/bash
# 数学运算
# 第一种使用expr
var1=10
var2=20
var3=$(expr $var1 \* $var2)
echo the result is $var3
# 第二种使用[]
var4=$[var1 * var2]
echo the result also is $var4
#浮点解决
var5=10.4652
var6=43.67

# 必须设置scale,会将这个值设置为你在计算结果中保留的小数位数。
var7=$(bc << EOF
scale = 4
a1 = ($var5 * $var6)
a1
EOF
)

echo The final answer for this is $var7