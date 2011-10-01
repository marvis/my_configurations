CPPFILE="main.cpp"
MKFILE="Makefile"
echo "create main.cpp ... "
if [ "1" ]; then
echo "#include <iostream>"
echo "using namespace std;"
echo ""
echo "int main(int argc, char* argv[])"
echo "{"
echo -e "\tcout<<\"Hello World\"<<endl;"
echo -e "\treturn 0;"
echo "}"
fi > $CPPFILE

echo "create Makefile ... "
if [ "1" ]; then
	echo "main : main.cpp"
	echo -e "\tg++ main.cpp -o main"
fi > $MKFILE

echo "Finished !"
