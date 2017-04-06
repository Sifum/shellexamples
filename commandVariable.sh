#!/bin/bash
# 命令替换：
# 1.反引号字符（`）
# 2.$()格式
testing1=`date`
echo the date is $testing1
testing2=$(date)
echo the date is $testing2
# 可使用此方法创建唯一文件名的文件
testing3=$(date +%y%m%d)
date > log.$testing3
