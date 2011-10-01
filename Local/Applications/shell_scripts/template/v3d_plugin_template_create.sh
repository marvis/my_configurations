echo "create plugin_template ..."
if [ "1" ] ; then 
echo 'TITLE="Test Plugin"'
echo 'PLUGIN_NAME="test"'
echo 'PLUGIN_CLASS="TestPlugin"'
echo 'PLUGIN_DESCRIPTION="This is a test plugin"'
echo 'PLUGIN_DATE="2011-06-16"'
echo 'PLUGIN_AUTHOR="Hang Xiao"'
echo '#PLUGIN_GUI="test_gui.h"'
echo 'V3D_MAIN_PATH="../../work/v3d_external/v3d_main"'
echo ''
echo 'MENUS=("first item" "second item")'
echo 'FUNCS=("first_item" "second_item")'
echo ''
echo '#DOFUNC="yes"'
echo ''
echo '#MAINFUNCS=("mymain" "")'
echo '#SYSINVOKES=("" "mycmd")'
fi > plugin_template
