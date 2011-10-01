cp /Users/xiaoh10/Sites/Sites/research/tools/opengl/nehe_courses/macos_nehe/makefile ./
for i in {1..6}
do
	cp /Users/xiaoh10/Sites/Sites/research/tools/opengl/nehe_courses/macos_nehe/lesson$i.c ./
	to_echo_script.sh lesson$i.c makefile > nehe0${i}_macos.sh
	chmod +x nehe0${i}_macos.sh
done

cp /Users/xiaoh10/Sites/Sites/research/tools/opengl/nehe_courses/linux_nehe/makefile ./
for i in {1..6}
do
	cp /Users/xiaoh10/Sites/Sites/research/tools/opengl/nehe_courses/linux_nehe/lesson$i.c ./
	to_echo_script.sh lesson$i.c makefile > nehe0${i}_linux.sh
	chmod +x nehe0${i}_linux.sh
done
