read cdno
read movie
read lang
read price
read date
touch movie.txt
file=movie.txt
echo $cdno >> $file
echo $movie >> $file
echo $lang >> $file
echo $price >> $file
echo $date >> $file