read file1 file2

if [ -r $file1 ]
	then
	if [ -w $file2 ]
		then
		echo Do you want to overwrite $file2?
		read ans
		if [ "$ans" = "YES" ]
		then
			cat $file1 > $file2
		else
			echo $file2 not overwritten
		fi
	else
		echo $file2 is not writeable
	fi
else
	echo $file1 is not readable
fi
