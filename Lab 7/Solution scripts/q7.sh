mkdir multiple_pdf 
COUNTER=1
COUNTER1=2
COUNT=1

while [ $COUNTER -lt 384 -a $COUNTER1 -lt 384 ]
do
    pdftk Linux.Shell.Scripting.Cookbook.pdf cat $COUNTER-$COUNTER1 output out"$COUNT".pdf
    let COUNTER=COUNTER+2 
    let COUNTER1=COUNTER1+2
    let COUNT=COUNT+1
done
mv out*.pdf multiple_pdf
mv multiple_pdf home/success