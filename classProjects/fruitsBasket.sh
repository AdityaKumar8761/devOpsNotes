#!/bin/bash

my_array=("apple" "banana" "mango" "cherry" "orange")

read -p "What do you want to find: " fruits

for i in "${my_array[@]}"; do
    if [[ "$i" == "$fruits" ]]; then
        echo "Scanning inventory...Found:$fruits"
        break
    fi
done

