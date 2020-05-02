#!/usr/bin/env bash

# this script works only on linux

# in bytes
LIMIT="100000"

# directory to monitor
MDIR='/home'

MAILTO='root@localnet.com'

SUBJECT="$MDIR high disk usage!"

if ! which mailx &>/dev/null; then
    echo "please install mailx"
    exit 1
fi

cd "$MDIR"

for user in *; do
    SIZE=$(du -s $MDIR | awk '{print $1}')
    if [[ $SIZE -ge $LIMIT ]]; then
        echo du -sh $user | mailx -s $SUBJECT $MAILTO
    fi
done
