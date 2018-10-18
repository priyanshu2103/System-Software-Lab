#! /bin/bash
echo "enter the string "
read name
name1=$(echo $name | rev)
len=${#name1}
if [ $name = $name1 ]
then
echo "$name is palindrome"
echo Length of string $len
else
echo "$name is not a palindrome"
fi