#! /bin/sh

if [ "$#" = "0" ]
then
	echo "usage : to_echo_file.sh <file1> [<file2> ...]"
	exit 0
fi

while [ "$#" -gt "0" ]
do
	FILENAME=$1
	shift

	echo "echo \"create $FILENAME ...\""
	echo 'if [ "1" ] ; then '
	# 1. delete ^M ;  2. replace ' ; 3. 
	tr "\r" "\n" < $FILENAME |  sed "s/'/'\"'\"'/g" | sed "s/^/echo '/" | sed "s/$/'/"  
	echo "fi > $FILENAME"
	echo ""
done
