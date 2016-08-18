#!/usr/bin/env bash

# Put vault executable into the location that you want
# Edit /etc/environment to include path to vault
# Define your AWS Keys in the environment: ACCESS_KEY and SECRET_KEY
source secret.sh

nohup vault server -dev &
export VAULT_ADDR='http://127.0.0.1:8200'
vault mount aws
vault write aws/config/root access_key=$ACCESS_KEY secret_key=$SECRET_KEY
vault write aws/roles/deploy policy=@s3_all.json
vault read aws/creds/deploy


