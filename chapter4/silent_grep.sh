#!/bin/bash
#文件名：silent_grep.sh
#用途：测试文件是否包含特定的文本内容
if [ $# -ne 2 ]; #命令的参数数量
then
	echo "$0 match_text filename"
fi
match_text=$1 #第一个参数
filename=$2

grep -q $match_text $filename

if [ $? -eq 0 ];
then
	echo "The text exists in the file"
else
	echo "Text does not exists in the file"
fi
