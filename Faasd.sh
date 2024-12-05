#!/bin/bash
apt-get install -y
cd /tmp
git clone https://github.com/openfaas/faasd --depth=1 
#faasd
cd faasd 
./hack/install.sh
#faas-cli
curl -sSL https://cli.openfaas.com | sudo -E sh
sudo cat /var/lib/faasd/secrets/basic-auth-password
#password
echo
