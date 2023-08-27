#!/bin/bash
curl -L https://fly.io/install.sh | sh

curl https://raw.githubusercontent.com/hagezi/dns-blocklists/main/domains/multi.txt --output blocklist.txt

fly deploy .
