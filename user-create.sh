#!/bin/bash

# Prompt for user input
read -p "Enter the new username: " NEW_USER
read -s -p "Enter the password: " USER_PASSWORD
echo
read -p "Grant sudo privileges? (yes/no): " SUDO_INPUT

# Convert input to boolean
if [[ "$SUDO_INPUT" =~ ^[Yy][Ee][Ss]$ ]]; then
    SUDO_PRIVILEGES=true
    read -p "Specify admin privileges (e.g., sudo, docker, adm): " ADMIN_GROUPS
else
    SUDO_PRIVILEGES=false
fi

# Create the user
sudo useradd -m -s /bin/bash "$NEW_USER"

# Set the password
echo "$NEW_USER:$USER_PASSWORD" | sudo chpasswd

# Grant specified privileges if required
if [ "$SUDO_PRIVILEGES" = true ]; then
    sudo usermod -aG $ADMIN_GROUPS "$NEW_USER"
    echo "$NEW_USER has been granted access to: $ADMIN_GROUPS."
fi

echo "User $NEW_USER has been created successfully."
