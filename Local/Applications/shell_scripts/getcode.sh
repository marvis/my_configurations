#! /bin/sh
if [ "$#" = "0" -o "$1" = "!" ]
then
	echo "usage : getcode.sh <code_name> [option]"
	echo ""
	echo "============== cpp source codes =============="
	if [ "1" ]; then
		echo "ncurses           #   ncurses demo on mouse event catch"
		echo "v3d_plugin [vp]   #   produce v3d plugin project from plugin_template"
		echo "v3d_dialog [vd]   #   produce v3d dialog header invoked by v3d plugin from dialog_template"
		echo "v3d_widget [vw]   #   produce v3d widget header invoked by v3d plugin from widget_template"
		echo "v3d_imgio         #   produce code on how to invoke v3d loadImage/saveImage and the Makefile"
		echo "qt_widget  [qw]   #   similar to v3d_widget but doesn't include v3d callback related code"
		echo "opengl            #   produce opengl program framework"
		echo "hello_world      #   produce hello world code"
		echo "cpp_limit        #   the max value of double in cpp"
		echo "detect_platform   #   a small program used to detect the bit of macos"
		echo "split_string      #   split function used to convert 1d char pointer to 2d char pointer"
		echo "getopt            #   produce getopt code from template"
	fi | column -t -s \#
	echo ""
	echo "============== shell scripts =============="
	if [ "1" ]; then
		echo "dayofweek    #   get day of week"
	fi | column -t -s \#

	echo ""
	exit 0
fi

CODE_NAME=$1
command="create_code_$CODE_NAME.sh "
shift
while [ "$#" != "0" ] 
do
	command="$command '$1'"
	shift
done
eval "$command"
