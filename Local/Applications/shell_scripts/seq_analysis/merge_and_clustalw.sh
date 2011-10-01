id=1
while [ $id -le "95" ]
do

folder1="site/ind${id}_53"
folder2="site/ind${id}_35"
dest="merge/ind$id"
mkdir -p $dest
echo "indi : $id"

###########################################
echo "merge ind${id} Vm"

cp input/Vm.fasta $dest/Vm

if [ -e $folder1/Vm ] 
then
cat $folder1/Vm >> $dest/Vm
fi

./rev_comp_fasta.sh $folder2/Vm >> $dest/Vm
clustalw $dest/Vm
############################################
echo "merge ind${id} Qm"

cp input/Qm.fasta $dest/Qm
if [ -e $folder1/Qm ] 
then
cat $folder1/Qm >> $dest/Qm
fi
./rev_comp_fasta.sh $folder2/Qm >> $dest/Qm
clustalw $dest/Qm
###########################################

echo "merge ind${id} Vi"

cp input/Vi.fasta $dest/Vi
if [ -e $folder1/Vi ] 
then
cat $folder1/Vi >> $dest/Vi
fi
./rev_comp_fasta.sh $folder2/Vi >> $dest/Vi
clustalw $dest/Vi
###########################################
echo "merge ind${id} V4"

cp input/V4.fasta $dest/V4
if [ -e $folder1/V4 ] 
then
cat $folder1/V4 >> $dest/V4
fi
./rev_comp_fasta.sh $folder2/V4 >> $dest/V4
clustalw $dest/V4
###########################################
echo "merge ind${id} X9b"

cp input/X9b.fasta $dest/X9b
if [ -e $folder1/X9b ] 
then
cat $folder1/X9b >> $dest/X9b
fi
./rev_comp_fasta.sh $folder2/X9b >> $dest/X9b
clustalw $dest/X9b
###########################################
echo "merge ind${id} X10b"

cp input/X10b.fasta $dest/X10b
if [ -e $folder1/X10b ] 
then
cat $folder1/X10b >> $dest/X10b
fi
./rev_comp_fasta.sh $folder2/X10b >> $dest/X10b
clustalw $dest/X10b
###########################################
echo "merge ind${id} X11b"

cp input/X11b.fasta $dest/X11b
if [ -e $folder1/X11b ] 
then
cat $folder1/X11b >> $dest/X11b
fi
./rev_comp_fasta.sh $folder2/X11b >> $dest/X11b
clustalw $dest/X11b
###########################################

echo "merge ind${id} Y33b"
cp input/Y33b.fasta $dest/Y33b
if [ -e $folder1/Y33b ] 
then
cat $folder1/Y33b >> $dest/Y33b
fi
./rev_comp_fasta.sh $folder2/Y33b >> $dest/Y33b
clustalw $dest/Y33b
###########################################

id=`expr $id + 1`
done
