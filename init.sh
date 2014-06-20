#!/bin/bash

# basics
apt-get update
apt-get install -y vim git subversion

# gitlab
apt-get install -y exim4-daemon-light
wget https://downloads-packages.s3.amazonaws.com/debian-7.5/gitlab_6.9.2-omnibus.2-1_amd64.deb
dpkg -i gitlab_6.9.2-omnibus.2-1_amd64.deb
gitlab-ctl reconfigure

# gitlab configuration
gitlab-ctl stop
sed -i 's/host:\s.\(.\+\)/host: gitlab.local/' /opt/gitlab/embedded/service/gitlab-rails/config/gitlab.yml
gitlab-ctl start

# admin login data
echo "http://10.10.10.10/"
echo "username: root"
echo "password: 5iveL!fe"
