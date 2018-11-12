#! /bin/bash
#part a
echo avg for 10 yrs 
awk '{if($1=="School1") sum[1]+=$2;else if($1=="School2") sum[2]+=$2;else if($1=="School3") sum[3]+=$2;else if($1=="School4") sum[4]+=$2;} END {for(i=1;i<=4;i++) print sum[i]/10}' school_database.txt
echo avg for even yrs
egrep -A4 'Year[2,4,6,8]|Year10' school_database.txt |awk '{if($1=="School1") sum[1]+=$2;else if($1=="School2") sum[2]+=$2;else if($1=="School3") sum[3]+=$2;else if($1=="School4") sum[4]+=$2;} END {for(i=1;i<=4;i++) print sum[i]/5}' 
echo avg for odd yrs
egrep -A4 'Year[3,5,7,9]|\bYear1\b' school_database.txt |awk '{if($1=="School1") sum[1]+=$2;else if($1=="School2") sum[2]+=$2;else if($1=="School3") sum[3]+=$2;else if($1=="School4") sum[4]+=$2;} END {for(i=1;i<=4;i++) print sum[i]/5}' 

# -A4 does that after matching Year1 in a line,it will take next 4 lines of it