#! /bin/bash


old_ip=`cat ./ip.txt`
cur_ip=`curl ip.sb`

if [ "$old_ip" != "$cur_ip" ]
then
	echo $cur_ip > ./ip.txt	
	git commit -m "ip change"
	git push
fi
time=`date "+%Y-%m-%d %H:%M:%S"`

echo $time "old:" $old_ip ",new:" $cur_ip
