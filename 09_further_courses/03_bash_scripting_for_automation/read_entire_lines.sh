#!/usr/bin/env bash

while IFS= read -r LINE; do
    echo "$LINE"
done <"$1"
