# !/bin/bash
num=$[( $RANDOM % 20 )  + 1 ]

i=0
while ((i<3))
do
	read -p "Enter a number hoss: " val
	if ((val<num))
	then
		echo You entered a smaller number bro
	elif((val>num))
	then
		echo You entered a larger number bro
	else
		echo GOTCHA
	fi
	i=$(($i+1))
done

echo The number was $num