#!/bin/bash

username=studentID
password=********

#获取在线状态
statusCode=$(curl "http://p.nju.edu.cn/portal_io/getinfo"|jq ".reply_code")
if [ $statusCode -eq 0 }
then
	echo "已经登录！"
	exit 0
else
	statusCode=0
	failCount=0
	until [ $statusCode -eq 1 -o $failCount -ge 5 ]
	do
		statusCode=$(curl -d "username=$username&password=$password" "http://p.nju.edu.cn/portal_io/login"|jq ".reply_code") || failCount=$(($failCount+1))
	done
	if [ $failCount -eq 1 ]
	then
		echo "登录成功！"
		exit 0
	else
		echo "登录失败。"
		exit 1
	fi
fi

