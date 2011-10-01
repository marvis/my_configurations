input_marker="input/CB53_marker.txt"
input_seq="input/seqs.fasta"

id=1
while read line
do
file="indi/ind${id}_53.fasta"
echo $file
grep -i -B 1 "$line" $input_seq | sed "s/^\w\+$line//" | grep -v "\-\-" > $file
#sed -n "/$line/p" $input_seq > $folder/all_seq
id=`expr $id + 1`
done < $input_marker

input_marker="input/CB35_marker.txt"
id=1
while read line
do
file="indi/ind${id}_35.fasta"
echo $file
grep -i -B 1 "$line" $input_seq | sed "s/^\w\+$line//" | grep -v "\-\-" > $file
#sed -n "/$line/p" $input_seq > $folder/all_seq
id=`expr $id + 1`
done < $input_marker


