#! /bin/bash
if [ "$#" -eq "0" ]
then
	echo ""
	echo "Usage : $0 script_file num_cores"
	exit
fi

script_file=$1
num_cores=8
if [ "$#" -eq "2" ]
then
	num_cores=$2
fi

num_running=0
tasks=()
while read line
do
	while [ "$num_running" -ge "$num_cores" ]
	do
		taskid=${tasks[0]}
		tasks=(${tasks[@]:1})
		num_running=$[num_running - 1]
		wait $taskid
	done

	echo $line
	eval $line &
	tasks=("${tasks[@]}" "$!")
	num_running=$[num_running + 1]
done < $script_file

while [ "$num_running" -ge "1" ]
do
	taskid=${tasks[0]}
	tasks=(${tasks[@]:1})
	num_running=$[num_running - 1]
	wait $taskid
done




