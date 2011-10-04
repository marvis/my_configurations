function v3d(){
	eval `which v3d` $@ > /dev/null 2>&1 &
}

function upfile(){
scp -P 3333 $1 hanxia@localhost:~/work/temp/
}

function downfile(){
scp -P 3333 hanxia@localhost:~/work/temp/$1 `pwd`/
}
