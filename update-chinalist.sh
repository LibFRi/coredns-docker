#!/bin/bash

rm accelerated-domains.china.conf
wget https://jsdelivr.fuckcloudnative.io/gh/felixonmars/dnsmasq-china-list/accelerated-domains.china.conf -O /usr/local/etc/accelerated-domains.china.conf
rm apple.china.conf
wget https://jsdelivr.fuckcloudnative.io/gh/felixonmars/dnsmasq-china-list/apple.china.conf -O /usr/local/etc/apple.china.conf
rm google.china.conf
wget https://jsdelivr.fuckcloudnative.io/gh/felixonmars/dnsmasq-china-list/google.china.conf -O /usr/local/etc/google.china.conf
