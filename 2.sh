#! /bin/bash
awk 'NF' quotes.txt   > q

echo -n "" > speech.txt
while read -r i
do 	{
		echo "$i" | awk -F '~' '{printf "%s once said, \"%s\"\n",$2,$1}' >> speech.txt
	       	
		
		# echo  " once said ";	
	}
done < q

rm q
