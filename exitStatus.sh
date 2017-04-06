#!/bin/bash
# 退出状态码，默认退出状态码见P229
var1=10
var2=30
var3=$[$var1 + $var2]
echo The answer is $var3
exit 5

#本例是自定义退出状态码，退出码在0-255之间，大于的化会取模。
