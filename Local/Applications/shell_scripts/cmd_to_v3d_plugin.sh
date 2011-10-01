#! /bin/sh

if [ "$#" = "0" ]; then
	echo "usage : cmd_to_v3d_plugin.sh <cmd_name> [<v3d_main_path>]"
	echo "use 'cmd_to_v3d_plugin.sh !' to produce v3d_plugin template"
	exit 1
elif [ "$1" = "!" ]; then
	eval "gc vp !"
elif [[ "$2" = "!" || "$3" = "!" ]]; then
	COMMAND=$1
	plugin_title=`echo ${COMMAND:0:1} | tr "[:lower:]" "[:upper:]"`
	plugin_title="${plugin_title}${COMMAND:1}"
	plugin_name=`echo $COMMAND | tr "[:upper:]" "[:lower:]"`
	plugin_class="${plugin_title}Plugin"
	V3D_PATH="../../work/v3d_external/v3d_main"
	if [[ "$2" != "" && "$2" != "!" ]]; then
		V3D_PATH=$2
	fi
	echo "TITLE=\"$plugin_title Plugin\""
	echo "PLUGIN_NAME=\"$plugin_name\""
	echo "PLUGIN_CLASS=\"$plugin_class\""
	echo "PLUGIN_DESCRIPTION=\"This plugin will call $COMMAND command in dofunc\""
	echo "PLUGIN_DATE=\"`date +%Y-%m-%d`\""
	echo "PLUGIN_AUTHOR=\"`whoami`\""
	echo "#PLUGIN_GUI=\"${plugin_name}_gui.h\""
	echo "V3D_MAIN_PATH=\"$V3D_PATH\""
	echo ''
	echo "MENUS=(\"invoke $COMMAND\")"
	echo "FUNCS=(\"$COMMAND\")"
	echo ''
	echo "DOFUNC=\"yes\""
	echo ''
	echo '#MAINFUNCS=("")'
	echo "SYSINVOKES=(\"$COMMAND\")"
	exit 0
fi

COMMAND=$1
plugin_title=`echo ${COMMAND:0:1} | tr "[:lower:]" "[:upper:]"`
plugin_title="${plugin_title}${COMMAND:1}"
plugin_name=`echo $COMMAND | tr "[:upper:]" "[:lower:]"`
plugin_class="${plugin_title}Plugin"
V3D_PATH="../../work/v3d_external/v3d_main"
if [ "$2" != "" ]; then
	V3D_PATH=$2
fi
echo "create plugin_template"
if [ "1" ]; then
echo "TITLE=\"$plugin_title Plugin\""
echo "PLUGIN_NAME=\"$plugin_name\""
echo "PLUGIN_CLASS=\"$plugin_class\""
echo "PLUGIN_DESCRIPTION=\"This plugin will call $COMMAND command in dofunc\""
echo "PLUGIN_DATE=\"`date +%Y-%m-%d`\""
echo "PLUGIN_AUTHOR=\"`whoami`\""
echo "#PLUGIN_GUI=\"${plugin_name}_gui.h\""
echo "V3D_MAIN_PATH=\"${V3D_PATH}\""
echo ''
echo "MENUS=(\"invoke $COMMAND\")"
echo "FUNCS=(\"$COMMAND\")"
echo ''
echo "DOFUNC=\"yes\""
echo ''
echo '#MAINFUNCS=("")'
echo "SYSINVOKES=(\"$COMMAND\")"
fi > plugin_template
gc vp plugin_template
cat ${plugin_name}_func.cpp | sed "s/\/\/system/system/" > .temp.cpp
mv .temp.cpp ${plugin_name}_func.cpp
qmake
make
