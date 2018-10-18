################################################# PART 1 #############################################################
#
: '
read n1
read n2
read n3
read n4
echo Sum of four numbers are `expr $n1 + $n2 + $n3 + $n4`
'
#
########################################### PART 2 ####################################################################
<<COMMENT
if [ $# -eq 0 ]
then
	echo Both arguments missing
elif [ -z "$2" ]
then
	echo One argument is missing
else
	echo Sum of these 2 numbers are `expr $1 + $2`
fi
COMMENT
################################################## PART 3 #################################################################
sum=0
for i in $@
do 
    if (( i>10 )) && (( i<20 ))
    then
        sum=$((sum+i))
    fi
done
echo $sum