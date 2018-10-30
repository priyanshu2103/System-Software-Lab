# dir1=$pwd
# dir2=$1
# cd 
# cd $dir2
# # execute it using . ./jump.sh <destination>
#!/bin/bash
t=$(pwd | awk -F "/" -v var="$1" '{j=NF;while($j!=var){j--;i++}; print i}' ) 
for ((i=0;i<t;i++))
do
	#echo "hello"
	cd ../
done

# execute using . ./jump.sh <directory name>


