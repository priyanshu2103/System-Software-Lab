a=$(find . -name virusdefinition.virus)
for i in $a
do
	while read line
	do
		for word in $line
		do
			rm $word
		done
	done < $i
done
