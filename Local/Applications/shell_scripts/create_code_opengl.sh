#! /bin/sh

if [ "$#" = "0" -o "$1" = "!" ]; then
	echo "usage : create_code_opengl.sh <code_name> <os_type>"
	echo ""
	echo -e "The command will produce opengl codes. The os_type is macos or linux. If omited, it will be current os type."
	echo ""
	echo -e "Available Codes :"
		if [ "1" ] ; then
			echo "smoke    #   normal opengl test"
			echo "qt-smoke #   qt smoke test"
			echo "qt-smoke2 #   glwidget is embeded into QGroupBox"
			echo "glwidget #   very simple QGLWidget implementation"
			echo "nehe01   #   An OpenGL Window"
			echo "nehe02   #   First Polygon"
			echo "nehe03   #   Adding Color"
			echo "nehe04   #   Rotation"
			echo "nehe05   #   3D Shapes"
			echo "nehe06   #   Texture Mapping"
		fi | column -t -s \#
	echo ""
	exit 0
fi

CODE_NAME=$1
OS_TYPE=$2
GC_PATH=`which getcode.sh`
OPENGL_SCRIPT_PATH="`dirname $GC_PATH`/opengl"

if [ "$OS_TYPE" = "" ]; then 
	uname=`uname`
	if [ "$uname" = "Darwin" ]; then
		OS_TYPE="macos"
	else
		OS_TYPE="linux"
	fi
fi

eval "$OPENGL_SCRIPT_PATH/${CODE_NAME}_${OS_TYPE}.sh"
