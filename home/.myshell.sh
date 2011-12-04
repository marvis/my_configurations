#function mutt()
#{
#	fetchmail
#	/usr/bin/mutt
#}
#function v3d(){
#	eval `which v3d` $@ > /dev/null 2>&1
#}
function site()
{
	echo "1. 生物谷      http://www.bioon.com/biology"
	echo "2. nature 中文 http://www.natureasia.com/ch"
	echo -n "Choose : "
	read line
	sites=("http://www.bioon.com/biology" 
	       "http://www.natureasia.com/ch")
	line=$[line-1]
	firefox ${sites[$line]}
}
function bbs()
{
	echo "1. 珞珈山水   bbs.whu.edu.cn"
	echo "2. 南京小百合 bbs.nju.edu.cn"
	echo "3. 日月光华   bbs.fudan.sh.cn"
	echo "4. 饮水思源   bbs.sjtu.edu.cn"
	echo "5. 水木清华   bbs.tsinghua.edu.cn"
	echo "6. 北大未名   bbs.pku.edu.cn"
	echo "7. mitbbs     bbs.mitbbs.com"
	echo -n "Choose : "
	read line
	sites=("bbs.whu.edu.cn" 
	       "bbs.nju.edu.cn" 
		   "bbs.fudan.sh.cn" 
		   "bbs.sjtu.edu.cn"  
		   "bbs.tsinghua.edu.cn" 
		   "bbs.pku.edu.cn" 
		   "bbs.mitbbs.com");
	line=$[line-1]
	site=${sites[$line]}
	#echo luit -encoding gbk telnet $site
	#luit -encoding gbk telnet $site
	firefox $site
}
#usage : mymplayer movie.avi movie.sub
function gui_mplayer()
{
	if [ $# -eq "2" ]; then 
		`which mplayer` -utf8 -sub "$2" -ass "$1"
	else `which mplayer` $1
	fi
}
function tty_mplayer()
{
	if [ $# -eq "2" ]; then 
		sudo `which mplayer` -vo fbdev -vf scale=1280:800 -utf8 -sub "$2" -ass "$1"
	else sudo `which mplayer` -vo fbdev -vf scale=1280:800 $1
	fi
}
function clewn()
{
	if [ "$#" -eq "0" ];then
		`which clewn` -ga "--args $V3D_CONVERT_PATH/bin/v3d_convert" 
	else
	file=`find $V3D_CONVERT_PATH -name $1`
	echo $file
	`which clewn` -ga "--args $V3D_CONVERT_PATH/bin/v3d_convert" -va "$file"
	fi
}

function gv()
{
	clewn $@
}

function upfile(){
scp -r -P 3333 $1 hanxia@localhost:~/work/temp/
}

function downfile(){
scp -r -P 3333 hanxia@localhost:~/work/temp/$1 `pwd`/
}

function release()
{
	$V3D_CONVERT_PATH/bin/release_v3d_convert.sh
}

function codenum(){
find . -name "*.h" -o -name "*.cpp" | xargs wc -l
}

function gdbopts()
{
	echo "display undisplay createvar"
	echo "condition 1 a==b # break at BreakPoint 1 when a==b"
	echo "delete # will delete all break points"
	echo "delete number # delete break points at number"
	echo "clear function  # delete the breakpoint set at the function"
	echo "break function  # break at function"
	echo "list # list code"
	echo "print # print var or set var"
}
function shellquick()
{
	echo "C-b "
	echo "     move backward one char"
	echo "C-f "
	echo "     move forward one char"
	echo "DEL/Backspace"
	echo "     Delete the char to the left of the cursor"
	echo "C-d "
	echo "     Delete the char underneath the cursor"
	echo "C-k "
	echo "     Delete the chars after the cursor"
	echo "C-u "
	echo "     Delete the chars before the cursor"
}
