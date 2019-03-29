#!/bin/bash
LOG=/var/log/openvpn.log
EMAIL=you@email.com

printf "User '$common_name' has connected\n\n$LOG:\n\n $(tail -n 25 /var/log/openvpn.log | grep 'Peer Connection Initiated')" | mailx -s "VPN client connected" -r "PiVPN<$EMAIL>" $EMAIL
