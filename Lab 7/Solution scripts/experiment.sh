cd nature_images
for j in *.jpg
do
	convert ./"$f" ./"${f%.jpg}.pdf"
done
for j in *.jpg
do
	convert ./"$f" ./"${f%.jpg}.pdf"
done
rm *.jpg *.jpeg
size=$(ls -lh|grep total|awk '{print $2}')
echo Total size is $size
for f in *pdf
do
	covert $f -resize 50% $f
done
