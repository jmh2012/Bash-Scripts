#!/bin/bash
EMAIL=you@email.com

logwatch --detail=high | mailx -s "$HOSTNAME $( date )" -r "Logwatch<$EMAIL>" $EMAIL
