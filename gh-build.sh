#!/bin/bash
curl https://raw.githubusercontent.com/hagezi/dns-blocklists/main/domains/multi.txt --output blocklist.txt

fly deploy . --remote-only
