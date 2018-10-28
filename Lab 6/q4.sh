file=$1
words=$( cat $file | wc -l )
# echo $words
Word_count () {
	echo $words
}

Word_count