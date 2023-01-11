#!/bin/bash
sudo apt update
sudo apt install apache2
echo "This task is performed for the second round interview at SKY using Terraform" > /var/www/html/index.html
sudo systemctl start apache2
sudo systemctl enable apache2

# sudo yum -y install httpd
# sudo echo "This task is performed for the second round interview at SKY using Terraform" >> /var/www/html/index.html
# sudo service httpd start
# sudo chkconfig httpd on