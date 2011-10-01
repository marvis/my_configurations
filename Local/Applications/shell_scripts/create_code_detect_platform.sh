echo "create platform.c ..."
if [ "1" ] ; then 
echo '#include <stdlib.h>'
echo '#include <stdio.h>'
echo 'main(){printf("osx%d\n", (int) (sizeof(void *)*8));}'
fi > platform.c

