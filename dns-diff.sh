#!/bin/bash

FILEDIR=/opt/dns-diff/dns-zones-repo
LOGFILE=/opt/dns-diff/dns-diff.log
DOMAINS=/opt/dns-diff/domains.list

while IFS= read -r domain
do
  echo "$( date ): Checking $domain for changes." >> $LOGFILE
  if ! diff <( cat $FILEDIR/$domain | grep -v WHEN | grep -v "Query time" | grep -v SOA ) \
            <( dig AXFR $domain | grep -v WHEN | grep -v "Query time" | grep -v SOA) >> $LOGFILE; then
    dig AXFR $domain > $FILEDIR/$domain
    git -C $FILEDIR add $FILEDIR/*
    git -C $FILEDIR commit -m "$domain changed on $(date))" >> $LOGFILE
    git -C $FILEDIR push origin master  >> $LOGFILE
  fi
done <"$DOMAINS"
