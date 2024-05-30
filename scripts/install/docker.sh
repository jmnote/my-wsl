#!/bin/bash

# check
which docker && exit

# install
curl -fsSL https://get.docker.com | sed 's|sleep [0-9]\+|sleep 0|g' | sh
grep docker ~/.bashrc || (echo 'service docker start' >> ~/.bashrc)
update-alternatives --set iptables /usr/sbin/iptables-legacy

