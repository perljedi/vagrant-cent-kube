#!/bin/bash

# Vagrant specific
date > /etc/vagrant_box_build_time

# Installing vagrant keys
mkdir -pm 700 /home/vagrant/.ssh
chmod 0600 /home/vagrant/.ssh/authorized_keys
chown -R vagrant /home/vagrant/.ssh

# Customize the message of the day
echo 'Development Environment' > /etc/motd
