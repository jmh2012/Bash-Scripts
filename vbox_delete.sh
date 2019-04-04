#!/bin/bash

VBoxManage list vms | awk -F "[{}]" '{print $2}' > uuids.txt

while IFS= read -r uuid
do
  VBoxManage controlvm $uuid poweroff
  VBoxManage unregistervm $uuid
done < uuids.txt
