#shutdown.sh
#./shutdown.sh xxx.jar

pid=`ps -ef |grep $1 | grep -v grep | awk '{print $2}'`
kill -9 $pid
if [ $? -ne 0 ];then
	echo "Fail to shutdown $1!"
else
	echo "Success to shutdown $1, pid=$pid."
fi