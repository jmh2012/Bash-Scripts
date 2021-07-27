#!/bin/bash

curl -H "User-Agent: keycdn-tools:https://www.example.com" "https://tools.keycdn.com/geo.json?host=$1" | jq -r '.data'
