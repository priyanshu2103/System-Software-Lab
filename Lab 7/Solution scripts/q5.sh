###################################### PART1 ######################################################
file=$1
echo Enter your command
read com
if [ $com == "encode" ]
then
	echo The encoded file is: 
	echo $1 | tr abcdefghijklmnopqrstuvwxyz0123456789 zyxwvutsrqponmlkjihgfedcba9876543210
	# (or you can also do cat $1)
elif [[ $com == "decode" ]]
then
	echo The decoded file is:
	cat $1 | tr abcdefghijklmnopqrstuvwxyz0123456789 ZYXWVUTSRQPONMLKJIHGFEDCBA9876543210
elif [[ $com == "exit" ]]
then
	echo You said exit, byeeeeeeeee
	exit
else
	echo Invalid Input
	exit
fi 