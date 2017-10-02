#!/bin/bash
set -ex
apt-get update
DEBIAN_FRONTEND=noninteractive apt-get upgrade -yq
echo "UseDNS no" >> /etc/ssh/sshd_config
