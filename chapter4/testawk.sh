#!/bin/bash
echo -e "line1 f2 f3\nline2 f4 f5\nline3 f6 f7" | \
awk '{ print "Line no:"NR",No of fields:"NF",$0="$0",$1="$1",$2="$2",$3="$3" "}'

seq 5 | awk 'BEGIN{ sum=0; print "Summation:" } { print $1"+"; sum+=$1 } END{ print "=="; print sum }'

echo | awk '{ "grep root /etc/passwd" | getline cmdout; print cmdout}'
#通过使用getline，将外部shell命令的输出读入变量cmdout。
