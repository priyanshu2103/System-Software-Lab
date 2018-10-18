# !/bin/bash
echo Enter two numbers
read num1 num2
echo Enter your desired operation
read char

case $char in
	"+" )
	echo " $num1 + $num2 " | bc ;;
	"-" )
	echo "$num1 - $num2" | bc ;;
	"*" )
	echo "$num1 * $num2" | bc ;;
	"/" )
	echo "$num1 / $num2" | bc ;;
	* )
	echo Unknown operation
esac