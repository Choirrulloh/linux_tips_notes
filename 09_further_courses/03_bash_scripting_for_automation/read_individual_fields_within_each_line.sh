#!/usr/bin/env bash

while IFS=: read -r user pass uid gid gecos home shell; do
    echo "$user $shell"
done <"$1"
