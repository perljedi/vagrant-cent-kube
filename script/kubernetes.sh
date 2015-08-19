#!/bin/bash

yum install -y kubernetes-master.x86_64 cockpit-kubernetes.x86_64 cockpit.x86_64 git
mkdir /var/run/kubernetes/
chown -R kube:kube /var/run/kubernetes/
cd /usr/share/cockpit
git clone https://github.com/cockpit-project/cockpit.git
echo "Clone complete"
mv cockpit{,-git}
echo "Cockpit moved"
mv kubernetes{,.bak}
echo "kube moved"
ln -s /usr/share/cockpit/cockpit-git/pkg/kubernetes kubernetes
echo "symlinked kube"
cd base1/
ln -s /usr/share/cockpit/cockpit-git/pkg/base1/angular.js angular.js
echo "simlinked angular"
ln -s /usr/share/cockpit/cockpit-git/pkg/base1/angular.min.js angular.min.js
echo "simlinked anjular min"
