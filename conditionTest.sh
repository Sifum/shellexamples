#!/bin/bash
# 第一种是test命令：
# test condition   如果test命令中的条件成立，test命令会退出并返回退出状态码0

my_variable=""

if test $my_variable
then
    echo "my_variable is true"
else
    echo "my_variable is false"
fi

# 第二种测试语句是：
#  if [condition]
#  then
#       commands
#  if
# condition中可以使用-eq, -ge, -gt, -le, -lt, -ne
value1=10
value2=11
# 第一个方括号之后和第二个方括号之前必须加上一个空格
if [ $value1 -gt 5 ]
then
    echo "value1 is greater than 5"
else
    echo "value1 is smaller than 5"
fi

# 另字符串比较用符号：=, !=, >, <, -n str1, -z str1
str1="abc"
str2="abcg"
if [ $str1 = $str2 ]
then 
    echo str1 is equal with str2
else
    echo str1 is not equal with str2
fi 

# 当使用<,>对字符串进行大小比较时，必须转移，否则得到的结果不正确
if [ $str1 \> $str2 ]
then 
    echo str1 is bigger with str2
else
    echo str1 is smaller with str2
fi 
# 使用sort命令排序和比较排序结果相反，因比较使用标准ASCII码，而sort使用本地化语言设置


# 文件比较测试，见P246
dirr=/home
# 这里可以使用复合条件语法： [ condition ] && [ condition ], [ condition ] || [ condition ]
if [ -e $dirr ]
then
    echo "/home is existed"
    if [ -d $dirr ]
    then
        echo "/home is a directory"
    else
        echo "/home is not a directory"
    fi
else
    echo "/home is not existed"
fi
