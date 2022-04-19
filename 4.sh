#! /bin/bash

read a
echo "$a" > inp

arr=()
for i in $(< inp tr "," " " )
	{
		arr[$var]="$i"
		var=$((var+1))
	}

l=(${#arr[*]});

for ((i=0;i<l;i++))
	{
		for ((j=i+1;j<l;j++))
			{
				if test  ${arr[$i]}  -gt ${arr[$j]} 
				then
					{
						temp=$((${arr[$j]}));

						arr[$j]=$((${arr[$i]}))
						arr[$i]=$((temp))
					}
					fi
			}
			}
echo ${arr[*]}
rm inp
