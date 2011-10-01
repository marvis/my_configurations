if [ -e $1 ]
then
sed '/^\s\+$/d' $1 > .temp_fasta
seq=""
while read line
do
test=`echo $line | grep ">"`
if [ -z "$test" ]
then
line=`echo $line | sed 's/\s\+//g'`
seq="${seq}${line}"
else
if [ -n "$seq" ]
then
./rev_comp_seq.sh $seq
seq=""
fi
echo $line
fi
done < .temp_fasta
./rev_comp_seq.sh $seq
rm .temp_fasta
fi
