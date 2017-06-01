#!/usr/bin/env bash

for f in /home/{{ ansible_user }}/runners/*.sh
do
    echo "Running ${f}"
    sh ${f}
    echo "Finished ${f}"
done
