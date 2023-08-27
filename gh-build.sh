#!/bin/bash
curl https://raw.githubusercontent.com/hagezi/dns-blocklists/main/domains/multi.txt --output blocklist.txt

${FLY_EXEC} deploy . --remote-only
