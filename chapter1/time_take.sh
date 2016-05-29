#!/bin/bash
#文件名：time_take.sh
start=$(date +%s)
end=$(date +%s);
difference=$((end-start))
echo Time taken to execute commands is $difference seconds.
