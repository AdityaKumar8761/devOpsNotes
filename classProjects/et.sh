#!/bin/bash

u=$(whoami)
d=$(date)

file="file.txt"

if [ ! -f "$file" ]
then
	echo "1 $u $d" > "$file"
else
	read count Lu Ld < "$file"

	count=$((count+1))

	echo "$count $u  $d" > "$file"

	echo "last execution"
	echo "execution count: $((count))"
	echo "last usre: $Lu"
	echo "last execution: $Ld"i
	echo ""
fi

        echo "new execution"
        echo "execution count: $((count))"
        echo "usre: $u"
        echo "execution: $d"
	echo ""

