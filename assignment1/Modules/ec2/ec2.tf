resource "aws_instance" "wordpress" {
  ami = var.instance_ami
  instance_type = var.instance_type
  vpc_security_group_ids = [aws_security_group.wordpress.id]
  associate_public_ip_address = "true"
  user_data = <<-EOF
#!/bin/bash
dnf update -y

# Install Apache, PHP, MariaDB
dnf install -y httpd php php-mysqlnd mariadb105-server wget tar

# Start and enable services
systemctl start httpd
systemctl enable httpd
systemctl start mariadb
systemctl enable mariadb

# Setup database
mysql -e "CREATE DATABASE wordpress;"
mysql -e "CREATE USER 'wpuser'@'localhost' IDENTIFIED BY 'password';"
mysql -e "GRANT ALL PRIVILEGES ON wordpress.* TO 'wpuser'@'localhost';"
mysql -e "FLUSH PRIVILEGES;"

# Download and install WordPress
cd /var/www/html
wget https://wordpress.org/latest.tar.gz
tar -xzf latest.tar.gz
rm -f latest.tar.gz

# Move WordPress files to web root
mv wordpress/* /var/www/html/
rmdir wordpress

# Fix permissions
chown -R apache:apache /var/www/html
chmod -R 755 /var/www/html

# Restart Apache
systemctl restart httpd
EOF

}

