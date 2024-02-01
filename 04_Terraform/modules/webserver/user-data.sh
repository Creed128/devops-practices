#!/bin/bash

# Détecter la distribution Linux
if [ -f /etc/os-release ]; then
    . /etc/os-release
    DISTRO=$ID
elif type lsb_release >/dev/null 2>&1; then
    DISTRO=$(lsb_release -i | cut -d: -f2 | sed s/'^\t'//)
else
    DISTRO=$(uname -s)
fi

# Installer Apache en fonction de la distribution
case $DISTRO in
    ubuntu|debian)
        sudo apt-get update
        sudo apt-get install -y apache2
        ;;
    centos|rhel|amzn)
        sudo yum update -y
        sudo yum install -y httpd
        sudo systemctl start httpd
        sudo systemctl enable httpd
        ;;
    *)
        echo "Distribution non prise en charge"
        exit 1
        ;;
esac

# Créer une page d'accueil simple
echo "<h1>Welcome to the Web Server</h1>" | sudo tee /var/www/html/index.html
