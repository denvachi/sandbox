#!bin/bash

read -p "Press [Enter] key to resume."

# 1. Install and configure the necessary dependencies

# sudo yum install -y policycoreutils-python openssh-server
# sudo systemctl enable sshd
# sudo systemctl start sshd
# sudo firewall-cmd --permanent --add-service=http
# sudo firewall-cmd --permanent --add-service=https
# sudo systemctl reload firewalld

# sudo yum install postfix
# sudo systemctl enable postfix
# sudo systemctl start postfix

read -p "Press [Enter] key to resume."

# 2. Add the GitLab package repository and install the package

curl https://packages.gitlab.com/install/repositories/gitlab/gitlab-ee/script.rpm.sh | sudo bash

sudo EXTERNAL_URL="http://localhost.localdomain" yum install -y gitlab-ee

# 3. Browse to the hostname and login
