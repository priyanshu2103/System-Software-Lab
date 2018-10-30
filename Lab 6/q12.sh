declare -A mat1
declare -A mat2
declare -A sum
add(){

	for((i=0;i<$rows;i++))
	do
		for((j=0;j<$cols;j++))
		do
			sum[$i,$j]=`expr ${mat1[$i,$j]} + ${mat2[$i,$j]}`
		done
	done
}

read rows
read cols
for((i=0;i<$rows;i++))
do
	for((j=0;j<$cols;j++))
	do
		read mat1[$i,$j]
		read mat2[$i,$j]
	done
done

add

for((i=0;i<$rows;i++))
do
	for((j=0;j<$cols;j++))
	do
		echo ${sum[$i,$j]}
	done
done
