template_file=$1

TEMPLATE_PATH=`which getcode.sh`
TEMPLATE_PATH="`dirname $TEMPLATE_PATH`/template"
if [[ ! -e "$template_file" &&  "$template_file" != "!" ]]
then
	echo "usage : create_code_v3d_plugin.sh <template file>"
	echo ""
	echo "============ Demo Template File ==========="
	eval "$TEMPLATE_PATH/v3d_plugin_template_display.sh"
	exit 1
elif [ "$template_file" = "!" ]
then
	eval "$TEMPLATE_PATH/v3d_plugin_template_create.sh"
	exit 0
fi

while read line
do
	eval $line
done < $template_file

PLUGIN_HEADER="${PLUGIN_NAME}_plugin.h"
PLUGIN_CPP="${PLUGIN_NAME}_plugin.cpp"
FUNC_HEADER="${PLUGIN_NAME}_func.h"
FUNC_CPP="${PLUGIN_NAME}_func.cpp"
PRO_FILE="${PLUGIN_NAME}.pro"

echo "create $PLUGIN_HEADER ..."
if [ "1" ]
then
	echo "/* $PLUGIN_HEADER"
	echo " * $PLUGIN_DESCRIPTION"
	echo " * $PLUGIN_DATE : by $PLUGIN_AUTHOR"
	echo " */"
	echo " "
	echo "#ifndef __`echo ${PLUGIN_NAME} | tr "[:lower:]" "[:upper:]"`_PLUGIN_H__"
	echo "#define __`echo ${PLUGIN_NAME} | tr "[:lower:]" "[:upper:]"`_PLUGIN_H__"
	echo ""
	echo "#include <QtGui>"
	echo "#include <v3d_interface.h>"
	echo ""
	echo "class $PLUGIN_CLASS : public QObject, public V3DPluginInterface2_1"
	echo "{"
	echo -e "\tQ_OBJECT"
	echo -e "\tQ_INTERFACES(V3DPluginInterface2_1);"
	echo ""
	echo "public:"
	echo -e "\tfloat getPluginVersion() const {return 1.1f;}"
	echo ""
	echo -e "\tQStringList menulist() const;"
	echo -e "\tvoid domenu(const QString &menu_name, V3DPluginCallback2 &callback, QWidget *parent);"
	echo ""
	if [ "$DOFUNC" != "yes" ]; then
		echo -e "\tQStringList funclist() const {return QStringList();}"
		echo -e "\tbool dofunc(const QString &func_name, const V3DPluginArgList &input, V3DPluginArgList &output, V3DPluginCallback2 &callback, QWidget *parent)"
		echo -e "\t{return false;}"
	else 
		echo -e "\tQStringList funclist() const ;" 
		echo -e "\tbool dofunc(const QString &func_name, const V3DPluginArgList &input, V3DPluginArgList &output, V3DPluginCallback2 &callback, QWidget *parent);"
	fi
	echo "};"
	echo ""
	echo "#endif"
	echo ""
fi > $PLUGIN_HEADER

echo "create $PLUGIN_CPP ..."
if [ "1" ]
then
	echo "/* $PLUGIN_CPP"
	echo " * $PLUGIN_DESCRIPTION"
	echo " * $PLUGIN_DATE : by $PLUGIN_AUTHOR"
	echo " */"
	echo " "
	echo "#include \"v3d_message.h\""
	echo ""
	echo "#include \"$PLUGIN_HEADER\""
	echo "#include \"$FUNC_HEADER\""
	echo " "
	echo "Q_EXPORT_PLUGIN2($PLUGIN_NAME, $PLUGIN_CLASS);"
	echo " "
	echo "QStringList $PLUGIN_CLASS::menulist() const"
	echo "{"
	echo -ne "\treturn QStringList()"
	i=0
	while [ $i -lt ${#MENUS[@]} ]
	do
		echo -ne "\n\t\t<<tr(\"${MENUS[$i]}\")"
		i=$[i+1]
	done
	echo -e "\n\t\t<<tr(\"about\");"
	echo "}"
	echo ""
	if [ "$DOFUNC" = "yes" ]; then
		echo "QStringList $PLUGIN_CLASS::funclist() const"
		echo "{"
		echo -ne "\treturn QStringList()"
		i=0
		while [ $i -lt ${#FUNCS[@]} ]
		do
			echo -ne "\n\t\t<<tr(\"${FUNCS[$i]}\")"
			i=$[i+1]
		done
		echo ";"
		echo "}"
		echo ""
	fi
	echo "void $PLUGIN_CLASS::domenu(const QString &menu_name, V3DPluginCallback2 &callback, QWidget *parent)"
	echo "{"
	echo -e "\tif (menu_name == tr(\"${MENUS[0]}\"))"
	echo -e "\t{"
	echo -e "\t\t${FUNCS[0]}(callback,parent);"
	echo -e "\t}"
	i=1
	while [ $i -lt ${#MENUS[@]} ]
	do
		echo -e "\telse if (menu_name == tr(\"${MENUS[$i]}\"))"
		echo -e "\t{"
		echo -e "\t\t${FUNCS[$i]}(callback,parent);"
		echo -e "\t}"
		i=$[i+1]
	done
	echo -e "\telse"
	echo -e "\t{"
	echo -e "\t\tv3d_msg(tr(\"$PLUGIN_DESCRIPTION. \"\n\t\t\t\"Developed by $PLUGIN_AUTHOR, $PLUGIN_DATE\"));"
	echo -e "\t}"
	echo "}"
	echo ""
	if [ "$DOFUNC" = "yes" ]; then
		echo "bool $PLUGIN_CLASS::dofunc(const QString & func_name, const V3DPluginArgList & input, V3DPluginArgList & output, V3DPluginCallback2 & callback,  QWidget * parent)"
		echo "{"
		echo -e "\tif (func_name == tr(\"${FUNCS[0]}\"))"
		echo -e "\t{"
		echo -e "\t\treturn ${FUNCS[0]}(input, output);"
		echo -e "\t}"
		i=1
		while [ $i -lt ${#FUNCS[@]} ]
		do
			echo -e "\telse if (func_name == tr(\"${FUNCS[$i]}\"))"
			echo -e "\t{"
			echo -e "\t\treturn ${FUNCS[$i]}(input,output);"
			echo -e "\t}"
			i=$[i+1]
		done
		echo "}"
		echo ""
	fi
fi > $PLUGIN_CPP

echo "create $FUNC_HEADER ..."
if [ "1" ]
then
	echo "/* $FUNC_HEADER"
	echo " * $PLUGIN_DESCRIPTION"
	echo " * $PLUGIN_DATE : by $PLUGIN_AUTHOR"
	echo " */"
	echo " "
	echo "#ifndef __`echo ${PLUGIN_NAME} | tr "[:lower:]" "[:upper:]"`_FUNC_H__"
	echo "#define __`echo ${PLUGIN_NAME} | tr "[:lower:]" "[:upper:]"`_FUNC_H__"
	echo ""
	echo "#include <v3d_interface.h>"
	echo ""
	i=0
	while [ $i -lt ${#FUNCS[@]} ]
	do
		echo "int ${FUNCS[$i]}(V3DPluginCallback2 &callback, QWidget *parent);"
		if [[ $i -lt  ${#FUNCS[@]} && "$DOFUNC" = "yes" ]]; then
			echo "bool ${FUNCS[$i]}(const V3DPluginArgList & input, V3DPluginArgList & output);"
		fi
		i=$[i+1]
	done
	echo ""
	echo "#endif"
	echo ""
fi > $FUNC_HEADER

echo "create $FUNC_CPP ..."
if [ "1" ]
then
	echo "/* $FUNC_CPP"
	echo " * $PLUGIN_DESCRIPTION"
	echo " * $PLUGIN_DATE : by $PLUGIN_AUTHOR"
	echo " */"
	echo ""
	echo "#include <v3d_interface.h>"
	echo "#include \"v3d_message.h\""
	echo "#include \"$FUNC_HEADER\""
	if [ "$DOFUNC" = "yes" ]; then
		echo "#include <vector>"
		echo "#include <iostream>"
		echo "using namespace std;"
	fi
	if [ ! -z "$PLUGIN_GUI" ]; then echo "#include \"$PLUGIN_GUI\""; fi
	echo ""
	echo "const QString title = QObject::tr(\"$TITLE\");"
	echo ""
	if [ "$DOFUNC" = "yes" ]; then	
		echo 'int split(const char *paras, char ** &args)'
		echo '{'
		echo '    int argc = 0;'
		echo '    int len = strlen(paras);'
		echo '    int posb[200];'
		echo '    char * myparas = new char[len];'
		echo '    strcpy(myparas, paras);'
		echo '    for(int i = 0; i < len; i++)'
		echo '    {'
		echo '        if(i==0 && myparas[i] != '"'"' '"'"' && myparas[i] != '"'"'\t'"'"')'
		echo '        {'
		echo '            posb[argc++]=i;'
		echo '        }'
		echo '        else if((myparas[i-1] == '"'"' '"'"' || myparas[i-1] == '"'"'\t'"'"') &&'
		echo '                (myparas[i] != '"'"' '"'"' && myparas[i] != '"'"'\t'"'"'))'
		echo '        {'
		echo '            posb[argc++] = i;'
		echo '        }'
		echo '    }'
		echo ''
		echo '    args = new char*[argc];'
		echo '    for(int i = 0; i < argc; i++)'
		echo '    {'
		echo '        args[i] = myparas + posb[i];'
		echo '    }'
		echo ''
		echo '    for(int i = 0; i < len; i++)'
		echo '    {'
		echo '        if(myparas[i]=='"'"' '"'"' || myparas[i]=='"'"'\t'"'"')myparas[i]='"'"'\0'"'"';'
		echo '    }'
		echo '    return argc;'
		echo '}'
	fi
	i=0
	while [ $i -lt ${#FUNCS[@]} ]
	do
		echo "int ${FUNCS[$i]}(V3DPluginCallback2 &callback, QWidget *parent)"
		echo "{"
		if [ "$i" = "0" ]; then
			echo -e "\tv3dhandleList win_list = callback.getImageWindowList();"
			echo ""
			echo -e "\tif(win_list.size()<1)"
			echo -e "\t{"
			echo -e "\t\tQMessageBox::information(0, title, QObject::tr(\"No image is open.\"));"
			echo -e "\t\treturn -1;"
			echo -e "\t}"
			echo -e "\t//TestDialog dialog(callback, parent);"
			echo ""
			echo -e "\t//if (dialog.exec()!=QDialog::Accepted) return -1;"
			echo ""
			echo -e "\t//dialog.update();"
			echo -e "\t//int i = dialog.i;"
			echo -e "\t//int c = dialog.channel;"
			echo -e "\t//Image4DSimple *p4DImage = callback.getImage(win_list[i]);"

			echo -e "\t//if(p4DImage->getCDim() <= c) {v3d_msg(QObject::tr(\"The channel isn't existed.\")); return -1;}"
			echo -e "\t//V3DLONG sz[3];"
			echo -e "\t//sz[0] = p4DImage->getXDim();"
			echo -e "\t//sz[1] = p4DImage->getYDim();"
			echo -e "\t//sz[2] = p4DImage->getZDim();"
			echo ""
			echo -e "\t//unsigned char * inimg1d = p4DImage->getRawDataAtChannel(c);"
			echo -e ""
			echo -e "\t//v3dhandle newwin;"
			echo -e "\t//if(QMessageBox::Yes == QMessageBox::question(0, \"\", QString(\"Do you want to use the existing windows?\"), QMessageBox::Yes, QMessageBox::No))"
			echo -e "\t\t//newwin = callback.currentImageWindow();"
			echo -e "\t//else"
			echo -e "\t\t//newwin = callback.newImageWindow();"
			echo ""
			echo -e "\t//p4DImage->setData(inimg1d, sz[0], sz[1], sz[2], sz[3]);"
			echo -e "\t//callback.setImage(newwin, p4DImage);"
			echo -e "\t//callback.setImageName(newwin, QObject::tr(\"${FUNCS[$i]}\"));"
			echo -e "\t//callback.updateImageWindow(newwin);"
		else
			echo -e "\tv3d_msg(\"${FUNCS[$i]}\");"
		fi
		echo -e "\treturn 1;"
		echo "}"
		echo ""
		if [[ $i -lt  ${#FUNCS[@]} && "$DOFUNC" = "yes" ]]; then
			echo "bool ${FUNCS[$i]}(const V3DPluginArgList & input, V3DPluginArgList & output)"
			echo "{"
			echo -e "\tcout<<\"Welcome to ${FUNCS[$i]}\"<<endl;"
			echo -e "\tif(input.size() != 2 || output.size() != 1) return false;"
			echo -e "\tchar * paras = 0;"
			echo -e "\tif(((vector<char*> *)(input.at(1).p))->empty()){paras = new char[1]; paras[0]='\\\0';}"
			echo -e "\telse paras = (*(vector<char*> *)(input.at(1).p)).at(0);"
			echo -e "\tcout<<\"paras : \"<<paras<<endl;"
			echo ""
			echo -e "\tfor(int i = 0; i < strlen(paras); i++)"
			echo -e "\t{"
			echo -e "\t\tif(paras[i] == '#') paras[i] = '-';"
			echo -e "\t}"
			echo -e "\tcout<<\"paras : \"<<paras<<endl;"
			echo ""
			if [[ "$i" -lt  "${#MAINFUNCS[@]}" && "${MAINFUNCS[$i]}" != "" ]]; then
				echo -e "\tchar ** argv;"
				echo -e "\tint argc = split(paras, argv);"
				echo -e "\tcout<<\"${MAINFUNCS[$i]}(argc, argv)\"<<endl;"
				echo -e "\t//${MAINFUNCS[$i]}(argc, argv);"
			fi
			if [[ "$i" -lt  "${#SYSINVOKES[@]}" && "${SYSINVOKES[$i]}" != "" ]]; then
				echo -e "\tcout<<string(\"${SYSINVOKES[$i]} \").append(paras).c_str()<<endl;"
				echo -e "\t//system(string(\"${SYSINVOKES[$i]} \").append(paras).c_str());"
			fi
			echo -e "\treturn true;"
			echo "}"
			echo ""
		fi
		i=$[i+1]
	done
	echo ""
fi >> $FUNC_CPP

echo "create $PRO_FILE ..."
if [ "1" ]
then
	echo ""
	echo -e "TEMPLATE\t= lib"
	echo -e "CONFIG\t+= qt plugin warn_off"
	echo -e "#CONFIG\t+= x86_64"
	echo -e "INCLUDEPATH\t+= $V3D_MAIN_PATH/basic_c_fun"
	echo ""
	echo -e "HEADERS\t= $PLUGIN_HEADER"
	echo -e "HEADERS\t+= $FUNC_HEADER"
	if [ ! -z "$PLUGIN_GUI" ] ; then echo -e "HEADERS\t+= $PLUGIN_GUI"; fi
	echo ""
	echo -e "SOURCES\t= $PLUGIN_CPP"
	echo -e "SOURCES\t+= $FUNC_CPP"
	echo -e "SOURCES\t+= $V3D_MAIN_PATH/basic_c_fun/v3d_message.cpp"
	echo ""
	echo -e "TARGET\t= \$\$qtLibraryTarget($PLUGIN_NAME)"
	echo -e "DESTDIR\t= ~/Applications/v3d/plugins/$PLUGIN_NAME/"
fi >> $PRO_FILE

echo "done"
