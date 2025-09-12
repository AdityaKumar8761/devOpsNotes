#!/bin/bash

read -p "till where you have to count: " count

counter=1
while [ $counter -le $count ]; do
  echo "Stopwatch: $counter elapsed"
  sleep 1
  counter=$((counter + 1))
done
echo "stopwathc complete"
