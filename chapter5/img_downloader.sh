#!/bin/bash
#用途：图片下载工具
#文件名：img_downloader.sh
if [ $# -ne 3 ]
then 
	echo "Usage: $0 URL -d DIRECTORY"
	exit -1
fi

for i in {1..4}
do
	case $1 in
	-d) shift; directory=$1; shift;; #若匹配到-d，则移动参数，将-d后的参数赋值给directory
	*) url=${url:-$1}; shift;; #避免将url覆盖掉，如果url不为空，返回url的值，否则返回$1
	esac
done

echo "directory: " $directory
echo "url: " $url

mkdir -p $directory
baseurl=$(echo $url | egrep -o "https?://[a-z.]+")
echo "baseurl: " $baseurl

curl -s $url | egrep -o "<img src=[^>]*>" |
sed 's/<img src=\"\([^"]*\).*/\1/g' > /tmp/$$.list

sed -i "s|^/|$baseurl/|" /tmp/$$.list

cd $directory;

while read filename;
do
	curl -s -O "$filename" --silent
done < /tmp/$$.list
