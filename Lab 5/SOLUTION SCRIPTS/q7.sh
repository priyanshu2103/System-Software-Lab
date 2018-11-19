#!/bin/bash
dir=$1
echo which file to search
read file
find $dir -name "$file" 
ls $dir|wc -l 
find $dir -name *.c -delete
find $dir -type f -size 0 -delete
# while using -size -500 use -type f, otherwise if the directory is also <500 it is deleted