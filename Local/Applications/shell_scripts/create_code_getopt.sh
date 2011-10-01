#! /bin/sh
TEMPLATE_PATH=`which getcode.sh`
TEMPLATE_PATH="`dirname $TEMPLATE_PATH`/template"
if [ "$#" = "0" ]; then
	echo "usage : create_code_getopt.sh <template_file>"
	echo "============== template =============="
	eval "$TEMPLATE_PATH/getopt_template_display.sh"
	exit 0
fi

if [ "$1" = "!" ]; then
	eval "$TEMPLATE_PATH/getopt_template_create.sh"
	exit 0
fi

echo "//#include <unistd.h>"
echo "//extern char *optarg;"
echo "//int optind, opterr;"
echo ""

OPTSTR=""
while read line
do
	OPT=`echo $line | awk '{print $1}'`
	OPTSTR="${OPTSTR}${OPT}"
done < $1
echo "char optstring[] = \"$OPTSTR\";"
echo "opterr = 0;"
echo "int c;"
echo "while ((c = getopt (argc, argv, optstring)) != -1)"
echo "{"
echo -e "\tswitch(c)"
echo -e "\t{"
while read line
do
	OPT=`echo $line | awk '{print $1}'`
	COMMANDS=`echo $line | awk -F\| '{print $2}'`
	if [ "${#OPT}" = "1" ]; then
		echo -e "\tcase '$OPT' :"
		for i in $COMMANDS
		do
			echo -e "\t\t$i;"
		done
		echo -e "\t\tbreak;"
		echo ""
	elif [ "${#OPT}" = "2" ]; then
		OPT=${OPT:0:1}
		echo -e "\tcase '$OPT' :"
		echo -e "\t\tif (strcmp (optarg, \"(null)\") == 0 || optarg[0] == '-')"
		echo -e "\t\t{"
		echo -e "\t\t\tfprintf (stderr, \"Found illegal or NULL parameter for the option -$OPT.\\n\");"
		echo -e "\t\t\treturn 0;"
		echo -e "\t\t}"
		echo -e "\t\telse"
		echo -e "\t\t{"
		for i in $COMMANDS
		do
			echo -e "\t\t\t$i;"
		done
		echo -e "\t\t}"
		echo -e "\t\tbreak;"
		echo ""
	else
		echo "error option : $OPT" >&2
		exit 1
	fi
done < $1

echo -e "\tcase '?' :"
echo -e "\t\tfprintf (stderr, \"Unknown option '-%c' or incomplete argument lists.\\n\", optopt);"
echo -e "\t\treturn 0;"
echo -e "\t}"
echo "}"
echo "if (optind < argc)"
echo -e '\tprintf ("Stop parsing arguments list. Left off at %s\\n", argv[optind]);'
echo -e "\tprintf (\"Stop parsing arguments list. Left off at %s\\\n\", argv[optind]);"

