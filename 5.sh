#! /bin/bash
#set -x
read -r word;
arr=()
index=$((0))
for i in $(echo $word |grep -o . )
	{
		arr[$index]="$i";
		index=$(($index+1));
	}

num=${#arr[*]}
#echo $num
for ((i=num-1;i>=0;i--))
do
	{
		printf "%s" ${arr[$i]};
	}
done
echo

echo $word | tr "abcdefghijklmnopqrstuvwxyz" "bcdefghijklmnopqrstuvwxyza" | tr "ABCDEFGHIJKLMNOPQRSTUVWXYZ" "BCDEFGHIJKLMNOPQRSTUVWXYZA"

index1=$((index/2));


for((i=index1-1;i>=0;i--))
	{
		printf "%c" ${arr[$i]}
	}
for((i=index1;i<num;i++))
	{
			printf "%c" ${arr[$i]}
	}



