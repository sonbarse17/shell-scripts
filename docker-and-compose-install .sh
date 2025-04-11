#!/bin/bash

# Update the system packages
sudo yum update -y

# Install Docker
sudo yum install -y docker

# Start Docker service
sudo systemctl start docker
sudo systemctl enable docker

# Add current user to docker group to run docker without sudo
sudo usermod -aG docker $USER
sudo usermod -aG docker jenkins
newgrp docker

# Change Docker socket permissions
sudo chmod 777 /var/run/docker.sock

# Install Docker Compose
# Get the latest release of Docker Compose (adjust version as needed)
COMPOSE_VERSION=$(curl -s https://api.github.com/repos/docker/compose/releases/latest | grep 'tag_name' | cut -d '"' -f 4)

# Download the binary to /usr/local/bin/
sudo curl -L "https://github.com/docker/compose/releases/download/${COMPOSE_VERSION}/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

# Apply executable permissions
sudo chmod +x /usr/local/bin/docker-compose

# Create a symbolic link
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose

# Verify installation
echo "Docker Compose version:"
docker-compose --version

echo "Docker Compose installation completed!"
echo "Docker socket permissions have been updated"
echo "Please log out and log back in for group changes to take effect, or run: newgrp docker"
