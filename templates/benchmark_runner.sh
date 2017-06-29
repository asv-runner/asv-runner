#!/usr/bin/env bash

for f in /home/{{ ansible_user }}/runners/*.sh
do
    echo "Running ${f}"
    ${f}
    echo "Finished ${f}"
done

/usr/local/bin/publish
