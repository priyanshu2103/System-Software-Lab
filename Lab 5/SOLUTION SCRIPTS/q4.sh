# !/bin/bash
echo Enter two numbers
read num1 num2
echo Enter your desired operation
read char

case $char in
	"+" )
	echo  $num1 + $num2  | bc ;;   # bc command is used for division, there's some problem if you do division without bc, and btw it is basic maths ( bc ka expansion)
	"-" )
	echo $num1 - $num2 | bc ;;
	"*" )
	echo $num1 * $num2 | bc ;;
	"/" )
	echo $num1 / $num2 | bc ;;
	* ) # * means iske alawa aur kuch pe
	echo Unknown operation
esac