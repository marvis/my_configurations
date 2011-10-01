if [ "$#" = "0" ]; then
	echo "Usage : ./extract_renren_music.sh <email> <password> [<music_id>] [<music_name>]"
	echo "        ./extract_renren_music.sh -f <login_file> [<music_id>] [<music_name>]"
	echo "        ./extract_renren_music.sh -h"
	echo "        ./extract_renren_music.sh -a <music_name> <music_id>"
	echo "        ./extract_renren_music.sh -d <music_id>"
	echo ""
	echo "Description :"
	echo "        1. login in renren with email and password and get the music with music_id"
	echo "        2. email and password is saved in login_file,  echo \"email=xxx&password=xxx\" > login_file"
	echo "        3. -h will display all known music id"
	echo "        4. -a add music recod int to database"
	echo "        5. -d delete music_id"
	echo ""
	exit 0
fi

my_self=`which $0`
if [ "$1" = "-h" ]; then
	sed -n '/^##/p' "$my_self" | column -t -s \#
	exit 0
elif [ "$1" = "-a" ]; then 
	if [ "$#" != "3" ]; then 
		echo "need music_namd and music_id"
		exit 0
	fi
	music_id=`echo $3 | awk '{print int($0)}'`
	if [ "$music_id" != "0" ];then
		echo "## $2 #  $3" >> "$my_self"
		echo "add \"$2 $3\" to database successfully"
	else
		echo "music id is invalid!"
	fi
	exit 0;
elif [ "$1" = "-d" ];then
	if [ "$#" != "2" ]; then
		echo "need music_id"
		exit 0;
	fi
	music_id_test=`sed -n "/^##.*#  $2\$/p"  $my_self`
	if [ "$music_id_test" != "" ]; then
		tmp_file="/tmp/`basename $0`"
		sed "/^##.*#  $2\$/d"  $my_self > "$tmp_file"
		mv "$tmp_file" $my_self
		chmod +x $my_self
		echo "remove $2 successfully"
	else
		echo "music id $2 doesn't exist"
	fi

	exit 0
fi

if [ "$1" != "-f" ]; then
	wget --save-cookies cookies.txt --keep-session-cookies  --post-data "email=$1&password=$2" -O home -o log "http://www.renren.com/PLogin.do"
else
	wget --save-cookies cookies.txt --keep-session-cookies  --post-data "`cat $2`" -O home -o log "http://www.renren.com/PLogin.do"
fi
echo "Login renren successfully!"

echo "get renren  musicbox ..."
if [ "$3" = "" ]; then
	wget --load-cookies cookies.txt --save-cookies cookies.txt --keep-session-cookies -O musicbox -o log "http://music.renren.com/musicbox"
else
	wget --load-cookies cookies.txt --save-cookies cookies.txt --keep-session-cookies -O musicbox "music.renren.com/musicbox?tab=1&autoPlay=true&songId=$3"
fi

echo "extract mp3 url ..."
mp3_src=`grep -o 'http:.*\.mp3' musicbox`
if [ "$mp3_src" != "" ];
then
	if [ "$4" = "" ]; then
		wget --load-cookies cookies.txt --save-cookies cookies.txt --keep-session-cookies -O renren.mp3 $mp3_src
	else
		wget --load-cookies cookies.txt --save-cookies cookies.txt --keep-session-cookies -O "$4" $mp3_src
	fi
else
	echo "No music link is found!"
fi

rm cookies.txt
rm home
rm log
rm musicbox

## Tears                #  107908
## 假如爱有天意         #  107651
## The Mass             #  107524
## 故乡的原风景         #  72265
## 梦中的婚礼           #  62442
## Canon In D           #  106399
## 贝多芬-月光奏鸣曲    #  61870
## Je M'appelle Helene #  377411
## Une fille et un garon #  233857
## Amour secret #  233858
## Le secret d Emilou Haley #  233856
## Le train du soir #  233855
## eversleeping # 150370
## are you the one # 432976
## this love # 179800
## angel # 249600
## when you believe # 133413
## till the world ends # 254573
## walk on # 193469
## call you tonight # 133454
## i will always love you # 133357
## i have nothing # 133398
## i look to you # 133423
## run to you # 133390
## High Maintenance # 255275
## i can # 254570
## Stones Inside Your Shoes # 299189
## Ooh La La # 239347
## wish you were here # 244661
## leikka # 253676
## your biggest mistake # 245356
## 美人鱼 #  240123
## eyes on me # 296934
## time after time # 291441
## everything in the world # 400104
## songs about you # 239971
## fifteen #  163505

## Je M'appelle Helene #  377411
## Une fille et un garon # 233857
## Amour secret # 233858
## Le secret d Emilou Haley # 233856
## Le train du soir # 233855 
## 只凝视着你-灌篮高手#  241617
