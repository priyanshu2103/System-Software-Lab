FIGHT_SALITY()
{
	if [ -e virusdefinition.virus ]
	then
		line=$(cat virusdefinition.virus)
		for w in $line
		do
			rm $w
		done	
	fi	 
	if [ -e $1.EXE ]
	then 
		rm $1.EXE
	fi
	if [ -e $1.exe ]
	then	
		rm $1.exe
	fi	
	if ls -l | grep -q ^d
	then
		dir=$(ls -l | grep ^d | awk '{print $9}' )
		#echo "$dir"
		for d in $dir
		do
			cd $d/
			FIGHT_SALITY $d
			cd ..
		done
	fi		 
}

a=$(pwd)
FIGHT_SALITY a