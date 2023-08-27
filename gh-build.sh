#!/bin/bash
curl https://raw.githubusercontent.com/hagezi/dns-blocklists/main/domains/multi.txt --output blocklist.txt

flyctl deploy . --remote-only
