cd nature_images
for f in *.jpg
do
	convert ./"$f" ./"${f%.jpg}.pdf"
done
for f in *.jpeg
do
	convert ./"$f" ./"${f%.jpeg}.pdf"
done
rm *.jpg *.jpeg
size=$(ls -lh | grep total | awk '{print $2}')
echo The total size is $size
for f in *.pdf
do
	convert $f -resize 50% $f
done
size2=$(ls -lh | grep total | awk '{print $2}')
echo The total size is $size2