#!/bin/bash

result=$(echo "scale=3;$2 $1 $3" | bc)
printf "%.3f\n" $result