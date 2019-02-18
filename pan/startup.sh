#startup.sh
#./startup.sh xxx.jar
path="log/"
file="log/$1.log"
if [ ! -d "$path" ]
then
	mkdir "$path"
fi

if [ ! -f "$file" ]
then
	touch "$file"
fi

nohup java -jar $1 > $file 2>&1 &
# $? means last command‘s return, if success, return 0
if [ $? -eq 0 ]; then
	pid=`ps -ef |grep $1 | grep -v grep | awk '{print $2}'`
	echo "Success to startup $1, pid=$pid."
else
	echo "Fail to start $1!"
fi