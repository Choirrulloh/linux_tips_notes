#!/usr/bin/env bash

if (($1 > $2)); then
    echo "The first argument is greater than the second"
else
    echo "The second argument is greater than the first"
fi

sum=$(($1 + $2))
echo "The sum is: $sum"

if [[ "$sum" -ge 10 ]]; then
    echo "The sum of the two arguments is greater than or equal to ten"
else
    echo "The sum of the two arguments is less than ten"
fi
