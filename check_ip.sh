# If you've got a dynamic IP address, this
# will email a notification if your external IP
# has been changed. Run as an hourly cronjob.

EMAIL="you@email.com"
CURRENT=$(dig +short myip.opendns.com @resolver1.opendns.com)
STORED=$(cat ip.txt)

if [ "$CURRENT" != "$STORED" ]; then
  printf $CURRENT > ip.txt
  mutt -s "New home IP address." $EMAIL < ip.txt
fi
