#! /bin/sh
TEMPLATE_PATH=`which getcode.sh`
TEMPLATE_PATH="`dirname $TEMPLATE_PATH`/template"
if [ "$#" = "0" ]
then 
	echo "usage: create_code_qt_widget.sh <DialogTemplate> <OutputFile>"
	echo "usage: create_code_qt_widget.sh ! ==> produce template file"
	echo "usage: create_code_qt_widget.sh demo ==> produce runable project"
	exit 1
elif [ "$1" = "!" ]
then
	eval "$TEMPLATE_PATH/qt_widget_template_create.sh"
	exit 0
elif [ "$1" = "demo" ]
then
	DEMO_PATH=`which getcode.sh`
	DEMO_PATH="`dirname $DEMO_PATH`/demo"
	eval "$DEMO_PATH/qt_widget_demo.sh"
	exit 0
fi

DIALOG_TEMPLATE=$1
OUTPUT_FILE=$2

CLASS_NAME=""
STAT=""
DEFINITIONS=""
UPDATE_DEFS=""
UPDATE_CODES=""
SLOT_FUNCS=()

if [ "$OUTPUT_FILE" != "" ]; then
	echo "#ifndef __`echo $OUTPUT_FILE | tr '.' '_' | tr [:lower:] [:upper:] `__"
	echo "#define __`echo $OUTPUT_FILE | tr '.' '_' | tr [:lower:] [:upper:] `__"
else
	echo "#ifndef __`echo mywidget.h | tr '.' '_' | tr [:lower:] [:upper:] `__"
	echo "#define __`echo mywidget.h | tr '.' '_' | tr [:lower:] [:upper:] `__"
fi
echo ""
echo "#include <QtGui>"
echo ""

while read line
do
	if [ "$line" = "" ]
	then
		echo ""
		if [ "$STAT" = "D" ]
		then
			DEFINITIONS="${DEFINITIONS}\n"
		elif [ "$STAT" = "U" ]
		then
			UPDATE_DEFS="${UPDATE_DEFS}\n"
			UPDATE_CODES="${UPDATE_CODES}\n"
		fi
		continue
	fi

	TYPE=`echo $line | awk '{print $1}'`
	if [ "$TYPE" = "CLASS" ]
	then
		if [ "$CLASS_NAME" = "" ]
		then
			CLASS_TYPE=`echo $line | awk '{print $2}'`
			CLASS_NAME=`echo $line | awk '{print $3}'`
			echo "class $CLASS_NAME : public $CLASS_TYPE"
			echo "{"
			echo -e "\tQ_OBJECT"
			echo ""
			echo "public:"
			echo -e "\t$CLASS_NAME(QWidget * parent) : QWidget(parent)"
			echo -e "\t{"
		else
			echo -e "\t}"
			echo ""
			echo -e "\t~$CLASS_NAME(){}"
			echo ""
			echo "public slots:"
			i=0
			while [ "$i" -lt ${#SLOT_FUNCS[@]} ]
			do
				if [ "${SLOT_FUNCS[$i]}" != "update()" ]; then
					echo -e "\tvoid ${SLOT_FUNCS[$i]}"
					echo -e "\t{"
					echo -e "\t}"
				else
					echo -e "\tvoid update()"
					echo -e "\t{"
					echo -e "$UPDATE_CODES"
					echo -e "\t}"
				fi
				i=$[i+1]
				echo ""
			done
			echo "public:"
			echo -ne "$UPDATE_DEFS"
			echo -ne "$DEFINITIONS"
			echo "};"
			echo ""
			echo ""

			CLASS_TYPE=`echo $line | awk '{print $2}'`
			CLASS_NAME=`echo $line | awk '{print $3}'`
			DEFINITIONS=""
			UPDATE_DEFS=""
			UPDATE_CODES=""
			STAT=""
			SLOT_FUNCS=()
			echo "class $CLASS_NAME : public $CLASS_TYPE"
			echo "{"
			echo -e "\tQ_OBJECT"
			echo ""
			echo "public:"
			echo -e "\t$CLASS_NAME(QWidget * parent) : QWidget(parent)"
			echo -e "\t{"
		fi
	elif [ "$TYPE" = "D" ]
	then
		if [ "$STAT" != "D" ]
		then
			STAT="D"
		fi
		DEF=`echo $line | awk -F\| '{print $1}'`
		BUTTON_TYPE=`echo $DEF | awk '{print $2}'`
		BUTTON_NAME=`echo $DEF | awk '{print $3}'`
		PARAMETER=`echo $DEF | awk -F\" '{print $2}'`
		COMMANDS=`echo $line | awk -F\| '{print $2}'`
		if [ -z "$PARAMETER" ]
		then
			echo -e "\t\t$BUTTON_NAME = new $BUTTON_TYPE();"
		else
			echo -e "\t\t$BUTTON_NAME = new $BUTTON_TYPE(tr(\"$PARAMETER\"));"
		fi
		for cmd in $COMMANDS
		do
			echo -e "\t\t$BUTTON_NAME->$cmd;"
		done
		DEFINITIONS="${DEFINITIONS}\t$BUTTON_TYPE * $BUTTON_NAME;\n"
	elif [ "$TYPE" = "L" ]
	then
		if [ "$STAT" = "D" ]
		then
			LAYOUT_NAME=$BUTTON_NAME
			LAYOUT_TYPE=$BUTTON_TYPE
			STAT="L"
		fi
		if [ "$LAYOUT_TYPE" = "QGridLayout" ]; then
			ROW=`echo $line | awk '{print $2}'`
			COL=`echo $line | awk '{print $3}'`
			OBJ=`echo $line | awk '{print $4}'`
			WID=`echo $line | awk '{print $5}'`
			HIG=`echo $line | awk '{print $6}'`
			PAR=`echo $line | awk '{print $5}'`

			if [ "$HIG" != "" ]
			then
				echo -e "\t\t$LAYOUT_NAME->addWidget($OBJ, $ROW, $COL, $WID, $HIG);"
			elif [ "$PAR" != "" ]
			then
				echo -e "\t\t$LAYOUT_NAME->addWidget($OBJ, $ROW, $COL, $PAR);"
			else
				echo -e "\t\t$LAYOUT_NAME->addWidget($OBJ, $ROW, $COL);"
			fi
		else
			OBJ=`echo $line | awk '{print $2}'`
			PAR1=`echo $line | awk '{print $3}'`
			PAR2=`echo $line | awk '{print $4}'`
			if [ "$PAR1" = "" ]; then
				echo -e "\t\t$LAYOUT_NAME->addWidget($OBJ);"
			elif [ "$PAR2" = "" ];then
				echo -e "\t\t$LAYOUT_NAME->addWidget($OBJ,$PAR1);"
			else
				echo -e "\t\t$LAYOUT_NAME->addWidget($OBJ,$PAR1,$PAR2);"
			fi
		fi
	elif [ "$TYPE" = "C" ]
	then
		STAT="C"
		SIG_OBJ=`echo $line | awk '{print $2}'`
		SIG_ACT=`echo $line | awk -F\( '{print $1}' | awk '{print $3}'`
		SIG_ACT="${SIG_ACT}(`echo $line | awk -F\) '{print $1}' |awk -F\( '{print $2}'`)"
		SLT_OBJ=`echo $line | awk -F\) '{print $2}' | awk '{print $1}'`
		SLT_ACT=`echo $line | awk -F\) '{print $2}' | awk -F\( '{print $1}' | awk '{print $2}'`
		SLT_ACT="${SLT_ACT}(`echo $line | awk -F\( '{print $3}' | awk -F\) '{print $1}'`)"
		i=0
		while [[ "$i" -lt "${#SLOT_FUNCS[@]}" && "${SLOT_FUNCS[$i]}" != "$SLT_ACT" ]]
		do 
			i=$[i+1]
		done
		if [ "$i" = "${#SLOT_FUNCS[@]}" ]; then SLOT_FUNCS=("${SLOT_FUNCS[@]}" "$SLT_ACT"); fi
		echo -e "\t\tconnect($SIG_OBJ, SIGNAL($SIG_ACT), $SLT_OBJ, SLOT($SLT_ACT));"
	elif [ "$TYPE" = "U" ]
	then
		VAR_TYPE=`echo $line | awk '{print $2}'`
		VAR_NAME=`echo $line | awk '{print $3}'`
		VAR_VALUE=`echo $line | awk -F\| '{print $2}'`
		UPDATE_DEFS="${UPDATE_DEFS}\t$VAR_TYPE $VAR_NAME;\n"
		UPDATE_CODES="${UPDATE_CODES}\t\t$VAR_NAME = $VAR_VALUE;\n"
	elif [ "$TYPE" = "R" ]
	then
		STAT="D"
		OBJ=`echo $line | awk '{print $2}'`
		CMD=`echo $line | awk -F\| '{print $2}'`
		CMD=`echo $CMD`
		echo -e "\t\t$OBJ->$CMD;"
	fi
done < $DIALOG_TEMPLATE
echo -e "\t}"
echo ""
echo -e "\t~$CLASS_NAME(){}"
echo ""
echo "public slots:"
i=0
while [ "$i" -lt ${#SLOT_FUNCS[@]} ]
do
	if [ "${SLOT_FUNCS[$i]}" != "update()" ]; then
		echo -e "\tvoid ${SLOT_FUNCS[$i]}"
		echo -e "\t{"
		echo -e "\t}"
	else
		echo -e "\tvoid update()"
		echo -e "\t{"
		echo -e "$UPDATE_CODES"
		echo -e "\t}"
	fi
	i=$[i+1]
	echo ""
done
echo "public:"
echo -ne "$UPDATE_DEFS"
echo -ne "$DEFINITIONS"
echo "};"
echo ""
echo "#endif"
