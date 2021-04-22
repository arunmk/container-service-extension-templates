#!/usr/bin/env bash
set -e

sed -i -e 's/^PasswordAuthentication no/PasswordAuthentication yes/' -e 's/^PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

apt remove -y cloud-init
dpkg-reconfigure openssh-server
sync
sync
