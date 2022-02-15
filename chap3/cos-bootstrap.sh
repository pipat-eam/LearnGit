# vagrant bootstrap shell for Ubuntu2004-web
# update and upgrade
yum check-update
yum update
yum install openssh-server -y
yum install openssh-client -y

# Create Ansible worker user with wheel group
useradd  -m -G wheel -s /usr/bin/bash worker
mkdir --mode=0700 /home/worker/.ssh
chown worker:worker /home/worker/.ssh
cp -fp /home/vagrant/worker_id_rsa.pub /home/worker/.ssh/authorized_keys
cp -fp /home/vagrant/worker.bashrc /home/worker/.bashrc
chmod 0600 /home/worker/.ssh/authorized_keys
chmod 0644 /home/worker/.bashrc
chown worker:worker /home/worker/.bashrc
chown worker:worker /home/worker/.ssh/authorized_keys

#
# # Install apache2
# apt-get install -y apache2

# # Enable Apache Mods
# a2enmod rewrite

# # Add Onrej PPA Repo
# apt-add-repository ppa:ondrej/php
# apt-get update

# # Install PHP
# apt-get install -y php7.0

# # PHP Apache Mod
# apt-get install -y libapache2-mod-php7.0

# # Restart Apache
# systemctl restart apache2

# # PHP Mods
# apt-get install -y php7.0-common
# apt-get install -y php7.0-mcrypt
# apt-get install -y php7.0-zip

# # Set MySQL passwd
# debconf-set-selections <<< 'mysql-server mysql-server/root_password password isylg-hkmysql'
# debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password isylg-hkmysql'

# # Install MySQL
# apt-get install -y mysql-server

# # PHP-MYSQL lib
# apt-get install -y php7.0-mysql

# # Restart Apache
# systemctl restart apache2
