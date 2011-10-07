function v3d(){
	eval `which v3d` $@ > /dev/null 2>&1
}

function upfile(){
scp -r -P 3333 $1 hanxia@localhost:~/work/temp/
}

function downfile(){
scp -P 3333 hanxia@localhost:~/work/temp/$1 `pwd`/
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
