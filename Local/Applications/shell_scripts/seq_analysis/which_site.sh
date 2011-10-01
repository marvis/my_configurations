echo $1 > temp/query
blast2 -p blastn -i temp/query -j input/sites.txt > temp/blast_out
sed -n '/>/p' temp/blast_out | head -n 1 | awk '{print $2}'
