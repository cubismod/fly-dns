#!/bin/bash
curl -L https://fly.io/install.sh | sh

FLY_EXEC=$HOME/.fly/bin/flyctl

curl https://raw.githubusercontent.com/hagezi/dns-blocklists/main/domains/multi.txt --output blocklist.txt

${FLY_EXEC} deploy .
