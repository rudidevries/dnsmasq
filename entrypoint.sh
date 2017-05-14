#!/bin/bash
cat - > /etc/dnsmasq.conf <<DNSMASQCONF

######### dns ########
# Never forward plain names (without a dot or domain part)
domain-needed
# Never forward addresses in the non-routed address spaces
bogus-priv
# dont read resolv.conf   use the defined servers instead
no-resolv
server=8.8.8.8
server=8.8.4.4
# increase dns cache form 512 to 4096
cache-size=4096

addn-hosts=/etc/althosts

DNSMASQCONF

/usr/sbin/dnsmasq -d
