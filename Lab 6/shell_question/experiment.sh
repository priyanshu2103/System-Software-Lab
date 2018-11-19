curr=$(pwd)
where=$1

while [ 1 ] 
do
	b=$(awk 'BEGIN{FS="/"}{print $NF}' $curr)
	if [ $b -eq $where ]
	then
		break
	else
		cd ..
done

