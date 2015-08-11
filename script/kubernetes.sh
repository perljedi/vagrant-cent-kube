#!/bin/bash

curl -LO https://github.com/GoogleCloudPlatform/kubernetes/releases/download/v1.0.2/kubernetes.tar.gz -o /opt/kubernetes.tar.gz
cd /opt/
tar -xzf kubernetes.tar.gz
tar -xzf kubernetes/server/kubernetes-server-linux-amd64.tar.gz
