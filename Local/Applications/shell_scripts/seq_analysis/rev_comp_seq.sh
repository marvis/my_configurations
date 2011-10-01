seq=`echo $1 | tr "[:lower:]" "[:upper:]"`
echo $seq | sed 's/A/B/g' | sed 's/T/D/g' | sed 's/C/E/g' | sed 's/G/F/g' | sed 's/B/T/g' | sed 's/D/A/g' | sed 's/E/G/g' | sed 's/F/C/g' | rev
