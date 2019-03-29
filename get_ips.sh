#!/bin/bash
# Get all IP addresses from a log and sort them.

if (( $# != 1 )); then
    echo "Usage: get_ips.sh <filename>"
    exit 1;
fi

grep -o '[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}' $1 | sort | uniq;

exit 0;
