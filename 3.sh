#! /bin/bash

wc -c < "$1" 
#
wc -l < "$1" 
#
wc -w < "$1"

#
var=$((1))
while read -r i
do
	{
		printf "%d:<>-"  $var ;
		echo "$i" | wc -w  ;
		var=$(($var+1));
	}
done < "$1"


#
< "$1" awk 'NF' > q1 
#<q tr " " "\n" > q1
#sort q > q1	

var=$((1))
rm -f temp;
touch temp;
cp q1 temp
for i in $(cat q1)
	{
		flag=$((0))
	
		for j in $(cat temp)
			{
				if [[ "$i" == "$j" ]]
				then 
					((flag++))
				fi

			}

			
			
		
		echo -n "$i"
		echo ":<>-$flag";
		
	} | awk '!seen[$0]++'  

					
rm q1 temp			

		

