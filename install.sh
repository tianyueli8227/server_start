#!/bin/bash

# Update and Upgrade the System
sudo apt-get update && sudo apt-get upgrade -y

# Download Anaconda Installer
ANACONDA_URL="https://repo.anaconda.com/archive/Anaconda3-2023.09-0-Linux-x86_64.sh" # Replace with the latest version if necessary
wget "$ANACONDA_URL" -O anaconda.sh

# Install Anaconda
bash anaconda.sh

# Activate Installation
source ~/anaconda3/bin/activate

# Initialize Conda
conda init

# Clean Up Installation Script
rm anaconda.sh

# Optional: Update Anaconda
conda update -n base -c defaults conda
