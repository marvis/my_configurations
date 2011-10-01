echo "create Makefile ..."
if [ "1" ] ; then 
echo 'all:'
echo '	g++ cpp_limit.cpp -o cpp_limit'
fi > Makefile

echo "create cpp_limit.cpp ..."
if [ "1" ] ; then 
echo '// numeric_limits_max.cpp'
echo '// compile with: /EHsc'
echo '#include <iostream>'
echo '#include <limits>'
echo ''
echo 'using namespace std;'
echo ''
echo 'int main( )'
echo '{'
echo '   cout << "The maximum value for type float is:  "'
echo '        << numeric_limits<float>::max( )'
echo '        << endl;'
echo '   cout << "The maximum value for type double is:  "'
echo '        << numeric_limits<double>::max( )'
echo '        << endl;'
echo '   cout << "The maximum value for type float is:  "'
echo '        << numeric_limits<int>::max( )'
echo '        << endl;'
echo '   cout << "The maximum value for type short int is:  "'
echo '        << numeric_limits<short int>::max( )'
echo '        << endl;'
echo '}'
fi > cpp_limit.cpp

