#!/bin/bash
function DEBUG()
{
[ "$_DEBUG" == "on" ] && $@ || : #命令':'告诉shell不要进行任何操作
}
for i in {1..10}
do
DEBUG echo $i #需要打印调试信息的语句前加上DEBUG。需把_DEBUG=on传递给脚本。
done
