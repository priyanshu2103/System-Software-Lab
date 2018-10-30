
for((i=1;i<1000;i++))
do
	sum=0
	p=$i
	while [ $p -ne 0 ]
	do
		tmp=`expr $p \% 10`
		q=`expr $tmp \* $tmp \* $tmp`
		p=`expr $p \/ 10`
		sum=`expr $sum + $q`
	done
	if [ $i -eq $sum ]
	then
		echo $i
	fi
done
