#!/bin/bash
var1=10
# 第一种if-then-if
# 双括号命令允许你在比较过程中使用高级数学表达式
if (($var1 > 5))
then
    echo var1 is bigger than 5
fi

#第二种if-then-else-if
if (($var1 > 10))
then
    echo var1 is bigger than 10
else
    echo var1 is smaller than 10
fi

#第三种if-then-elif-then-if
var2=15
if (($var1 > 10))
then
    echo var1 is bigger than 10
elif (($var2 > 10))
then
    echo var2 is bigger than 10
fi
# 此种语法可以用case替换
# case variable in
# pattern1 | pattern2) commands1;;
# pattern3) commands2;;
# *) defaultcommands;;
# esac
str1=minson
case str1 in
dmfin | dnfoe) 
    echo "str1 in condition 1";;
minson) 
    echo "str1 is minson";;
*) echo "not found";;
esac