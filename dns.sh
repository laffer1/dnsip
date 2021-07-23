#!/bin/sh

# replace yourdnskey and dnsserverip with the values

nsupdate -v -y "yourdnskey"   <<EOF
server dnsserverip 53
update delete `hostname` A
update add `hostname` 3600 A `ip.sh`

EOF
echo $status
