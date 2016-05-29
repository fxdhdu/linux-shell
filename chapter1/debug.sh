#!/bin/bash
#文件名：bebug.sh
for i in {1..6}
do
set -x
echo $i
set +x #仅在-x和+x所限制的区域内，调试信息才会被打印出来
done
echo "Script executed"
