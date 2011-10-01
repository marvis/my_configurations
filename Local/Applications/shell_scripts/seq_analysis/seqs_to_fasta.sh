id=1
rm -f $1.fasta
while read line
do
echo ">seq$id" >> $1.fasta
echo $line >> $1.fasta
id=`expr $id + 1`
done < $1
