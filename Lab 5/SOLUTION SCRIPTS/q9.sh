# part 1
awk '{print $1}' $1 | while read p
do
	touch $p.txt
done

# part 2

awk '{if($2=="CS241"&&$1>=17491011&&$1<=17491015&&$1%2==1) print $0}' $1 | while read num class
do
	echo Roll No:$num Subject:$class
done

