grep "closed" auth.log | grep "user sonal" | awk '{print $3}' > closeTime
grep "opened" auth.log | grep "user sonal" | awk '{print $3}' > openTime
sed -i 's/:/ /g' closeTime
sed -i 's/:/ /g' openTime
close=$(awk -v total=0 '{total += $1*60*60+$2*60+$3} END {print total}' closeTime)
open=$(awk -v total=0 '{total += $1*60*60+$2*60+$3} END {print total}' openTime)
echo $((close-open)) seconds
rm closeTime
rm openTime
