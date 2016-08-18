#!/usr/bin/env bash

sudo apt-get update
sudo apt-get install -y zip

# Python
sudo apt-get install -y libffi-dev libssl-dev
curl "https://bootstrap.pypa.io/get-pip.py" -s -o "get-pip.py"
sudo python get-pip.py

sudo pip install -r /vagrant/requirements.txt


# Vault
curl -o vault_0.6.0_linux_amd64.zip https://releases.hashicorp.com/vault/0.6.0/vault_0.6.0_linux_amd64.zip
curl -o vault_0.6.0_SHA256SUMS.sig https://releases.hashicorp.com/vault/0.6.0/vault_0.6.0_SHA256SUMS.sig
unzip vault_0.6.0_linux_amd64.zip
sudo mv ~/vault /usr/local/bin/vault
