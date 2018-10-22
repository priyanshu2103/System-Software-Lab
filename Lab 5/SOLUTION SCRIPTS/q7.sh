#! /bin/bash
#part 1
echo enter the file to be searched
read file
if [ -e "$1/$file" ]
then 
    echo file exists
else
    echo file does not exists
fi
#part2
len=$(find $1 | wc -l)
len=$(($len-1)) #-1 because find shows current directory also
echo $len
#part3
cd $1
rm *.c
#part 4
find $1 -type f -size 0b -delete