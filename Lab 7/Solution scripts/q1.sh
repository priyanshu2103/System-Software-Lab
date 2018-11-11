echo Time		Memory		Disk		CPU	
for((i=0;i<=60;i+=5))
do
	mem=$(free -m | awk 'NR==2{x+=$3;y+=$2}END{printf "%.2f%%",x/y*100}')
	disk=$(df -h | awk '$NF=="/" {x+=$3;y+=$2}END{printf "%.2f%%",x/y*100}')
	cpu=$(top -bn1 | grep load | awk '{printf "%.2f%%",$(NF-2)}')

	echo $i		$mem		$disk		$cpu		 
done
