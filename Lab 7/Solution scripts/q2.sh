while [ 1 ]
do
	sleep 1
	df|if grep -q /dev/sdb; then echo Yes; else echo No; fi 
done
exit