num_load()
{
	grep "num loads from remote cache" ./1/1.out ./2/2.out ./3/3.out > ./output/1.output
}
value_sum()
{
	egrep -o " [0-9]{1,}" ./output/1.output|awk '{sum+=$1} END {print sum}'> ./output/2.output
}
num_load
value_sum


# num_load(){
# 	for ((i=1;i<=3;i++))
# 	do
# 		grep "num loads from remote cache" $i/$i.out >> output/1.output
# 	done
# }

# value_sum(){
# 	awk -F "|" '{for(i=2;i<=NF;i++){sum=sum+$i}; print sum}' output/1.output > output/2.output	
# }
# num_load
# value_sum