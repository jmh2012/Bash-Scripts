# Bash script repo

Repo to store my general purpose bash scripts.

## Contents

*aide.sh* - Simple cronjob to run AIDE file integrity checks and email the results. Run weekly.

*check_ip.sh* - A cronjob for running a server on home internet without a static IP, it will send an email if the external IP changes. Run every 30 minutes.

*get_ips.sh* - Run with a log file as an argument and get a sorted list of unique IPv4 addresses from it, used to check access logs, etc.

*logwatch.sh* - Simple cronjob to run logwatch, logwatch can send email on its own if an MTA is running, this can be used otherwise. Run nightly.

*vbox_delete.sh* - Removes all VirtualBox VMs through cli. Used to clean up zombie Vagrant environments if running Vagrant on a headless server.

*vpn_client.sh* - Used on an openvpn server, set this to run on client-connect in the openvpn config and it will email a notification when a client connects.

