 #!/bin/sh -x

set -x 
touch /home/user/Downloads/sample.txt
file=/home/user/Downloads/sample.txt
trap “rm -f $file && echo file deleted; exit” 0 2 15
echo “pid is $$”

while (( COUNTER < 10 ))
do
sleep 1
(( COUNT ++ ))
echo $COUNT
done
exit 0
set +x

#https://www.tutorialspoint.com/unix/unix-signals-traps.htm

###################################################################################################

# #!/bin/sh
# #set -x
# touch /home/keerti/shell2/sample.txt
# file=/home/keerti/shell2/sample.txt
# trap 'rm -f $file && echo file deleted; exit' 0 2 15
# echo “pid is $$”
# COUNT=0
# while [ $COUNT -lt 10 ]
# do
# #set -x
# 	sleep 1
# 	COUNT=`expr $COUNT + 1`
# 	echo $COUNT
# #set +x
# done
# exit 0
# #set +x
# #https://www.tutorialspoint.com/unix/unix-signals-traps.htm