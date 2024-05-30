#!/bin/bash

# check
which docker && exit

# install
curl -fsSL https://get.docker.com -o get-docker.sh
sed 's|sleep [0-9]\+|sleep 0|g'   -i get-docker.sh
sh get-docker.sh
rm -f   get-docker.sh
grep docker ~/.bashrc || (echo 'service docker start' >> ~/.bashrc)
update-alternatives --set iptables /usr/sbin/iptables-legacy

