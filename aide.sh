#!/bin/bash
EMAIL=you@email.com

aide --check | mailx -s "AIDE $HOSTNAME  $( date )" -r "AIDE<$EMAIL>" $EMAIL
