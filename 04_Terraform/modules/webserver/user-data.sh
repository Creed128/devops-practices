#!/bin/bash
# Update system packages
sudo apt-get update -y

# Install Apache2
sudo apt-get install -y apache2

# Start the Apache2 service and ensure it starts on boot
sudo systemctl start apache2
sudo systemctl enable apache2

# Create a simple index.html file
echo '<html><body><h1>Hello from Terraform!</h1></body></html>' | sudo tee /var/www/html/index.html

# Enable firewall and allow traffic on port 80
sudo ufw enable
sudo ufw allow 80/tcp
