#! /bin/sh
if [[ "$#" -eq "0" || "$1" = "!" ]]
then
	echo "runcode.sh is used to run availabel shell scripts"
	echo "usage : runcode.sh <code_name> [option]"
	echo ""
	echo "============== shell scripts =============="
	if [ "1" ]; then
		echo "extract_renren_music     #   extract music from renren music box"
		echo "to_echo_script           #   convert many text files into a shell scripts"
		echo "cmd_to_v3d_plugin        #   convert a exec program into v3d plugin by system invoke" 
	fi | column -t -s \#
	echo ""
	exit 0
fi

CODE_NAME=$1
command="mycode_$CODE_NAME.sh "
shift
while [ "$#" != "0" ] 
do
	command="$command '$1'"
	shift
done
eval "$command"
