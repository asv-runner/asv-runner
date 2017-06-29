#!/usr/bin/env bash

for f in /home/{{ ansible_user }}/runners/*.sh
do
    echo "Running ${f}"
    echo $(date -u +"%Y-%m-%dT%H:%M:%SZ"),start,${f%.*} >> /home/{{ ansible_user }}/runners/log.csv
    ${f}
    echo $(date -u +"%Y-%m-%dT%H:%M:%SZ"),done,${f%.*} >> /home/{{ ansible_user }}/runners/log.csv
done

echo $(date -u +"%Y-%m-%dT%H:%M:%SZ"),publish,, >> /homme/{{ ansible_user }}/runners/log.csv
/usr/local/bin/publish
