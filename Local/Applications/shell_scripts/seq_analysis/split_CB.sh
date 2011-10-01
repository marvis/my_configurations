# split CB.txt to CB53.txt CB35.txt
sed -n '/F/p' input/CB.txt > temp/CB53.txt
awk '{print $2}' temp/CB53.txt > temp/CB53_marker.txt
sed -n '/R/p' input/CB.txt > temp/CB35.txt
awk '{print $2}' temp/CB35.txt > temp/CB35_marker.txt
