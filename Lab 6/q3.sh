#! /bin/bash
t=$(pwd | awk -F "/" -v var="$1" '{j=NF;while($j!=var){j--;i++}; print i}' ) 
for ((i=0;i<t;i++))
do
	#echo "hello"
	cd ../
done