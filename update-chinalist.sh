#!/bin/bash

rm accelerated-domains.china.conf
wget https://jsdelivr.fuckcloudnative.io/gh/felixonmars/dnsmasq-china-list/accelerated-domains.china.conf -O /etc/coredns/accelerated-domains.china.conf
rm apple.china.conf
wget https://jsdelivr.fuckcloudnative.io/gh/felixonmars/dnsmasq-china-list/apple.china.conf -O /etc/coredns/apple.china.conf
rm google.china.conf
wget https://jsdelivr.fuckcloudnative.io/gh/felixonmars/dnsmasq-china-list/google.china.conf -O /etc/coredns/google.china.conf
