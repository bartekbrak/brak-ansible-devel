#!/bin/bash

set -e

TARGET_FOLDER=/tmp/ansible-devel/
REPOSITORY=https://github.com/bartekbrak/brak-ansible-devel.git

### Requiring environment variables
read -p "Provide your full name: " FULLNAME
read -p "Provide your username: " USERNAME
read -p "Provide your email: " EMAIL

# Install git
sudo apt-get -y install git

sudo add-apt-repository -y ppa:rquillo/ansible
sudo apt-get update
sudo apt-get install -y ansible

# Clone brak-ansible-devel repo
if [ ! -d "$TARGET_FOLDER" ]; then
    git clone $REPOSITORY $TARGET_FOLDER
    pushd $TARGET_FOLDER
else
    pushd $TARGET_FOLDER
    git pull
fi


# Run ansible-playbook
ansible-playbook orchestrate.yml -e "fullname='$FULLNAME' email=$EMAIL username=$USERNAME"

popd
