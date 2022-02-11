#/bin/bash

sudo apt install curl gnupg2 ca-certificates lsb-release ubuntu-keyring

curl https://nginx.org/keys/nginx_signing.key | gpg --dearmor \
    | sudo tee /usr/share/keyrings/nginx-archive-keyring.gpg >/dev/null

gpg --dry-run --quiet --import --import-options import-show /usr/share/keyrings/nginx-archive-keyring.gpg

# The output should contain the full fingerprint 573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 as follows:
#    pub   rsa2048 2011-08-19 [SC] [expires: 2024-06-14]
#          573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62
#    uid                      nginx signing key <signing-key@nginx.com>
# If the fingerprint is different, remove the file.

sudo apt update
sudo apt install nginx
