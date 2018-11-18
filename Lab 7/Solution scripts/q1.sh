echo Time'\t'Memory'\t'Disk'\t'CPU	
for((i=0;i<=60;i+=5))
do
	
	mem=$(free -m | awk 'NR==2{x+=$3;y+=$2}END{printf "%.2f%%",x/y*100}')
	disk=$(df -h | grep /dev| awk '{x+=$3;y+=$2}END{printf "%.2f%%",x/y*100}')
	cpu=$(top -bn1 | grep load | awk '{printf "%.2f%%",$(NF-2)}')
	sleep 5
# load average mein 3 fields hain,these are average in last 1 min, last 5 min, average in last 15 min
# if we won't do -n1, top will not give any output as it will not stop, it will keep on going

# -b  :Batch-mode operation
#             Starts  top  in  Batch  mode, which could be useful for sending output from top to other
#             programs or to a file.  In this mode, top will not accept input and runs until the iter‐
#             ations limit you've set with the `-n' command-line option or until killed.

	echo -e $i		$mem		$disk		$cpu		 
done
# see uptime also