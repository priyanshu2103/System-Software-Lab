read file1 file2

if [ ! -e $file1 ]
then
	echo $file1 does not exist
fi
if [ ! -e $file2 ]
then
	echo $file2 does not exist
fi

if [ -e $file1 -a -e $file2 ]
then
	cat $file1 >> $file2
fi

