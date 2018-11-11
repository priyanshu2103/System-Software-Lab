a=$(lsblk | grep sdb)
if [ -z $a ]
then
	echo No device
else
	echo $a
fi