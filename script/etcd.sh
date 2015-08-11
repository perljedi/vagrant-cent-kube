#!/bin/bash

yum install -y etcd
systemctl enable etcd
systemctl start etcd

