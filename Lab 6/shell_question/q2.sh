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