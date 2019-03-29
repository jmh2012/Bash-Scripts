# Bash script repo

Repo to store my general purpose bash scripts.

## Contents
*check_ip.sh* - A cronjob for running a server on home internet without a static IP, it will send an email if the external IP changes.

*get_ips.sh* - Run with a log file as an argument and get a sorted list of unique IPv4 addresses from it, used to check access logs, etc.

*vpn_client.sh* - Used on an openvpn server, set this to run on client-connect in the openvpn config and it will email a notification when a client connects.
