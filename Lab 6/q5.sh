read -a array
count=0
count1=0
for i in "${array[@]}"
do
	count=0
	for j in "${array[@]}"
	do
		if [ $j -eq $i ]
		then
			count=$((count+1))
		fi
	done
	if [ $count -eq 1 ]
	then
		count1=$((count1+1))
	fi
done
echo $count1