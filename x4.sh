$redlyte x4 prebuild dependancies please run as sudo 
	#!/bin/bash
# 
# Function to update and upgrade the system using yum package manager.
 
# @return: Updates and upgrades the system using yum package manager.
update_and_upgrade() {
    yum update -y && yum upgrade -y
}
 
# Function to install required packages using yum package manager.
 
# @return: Installs tmux, neofetch, nano, vim, mc, nmap, and wget packages.
install_packages() {
    yum install tmux neofetch nano vim mc nmap wget htop bpytop -y
}
 
# Function to create directories and navigate to the desired directory.
 
# @return: Creates directories /x4 and /x4/proxy and navigates to /x4/proxy directory.
create_directories() {
    mkdir /x4
    cd /x4
    mkdir proxy
    cd proxy
}
 
# Usage example for the bash script.
 
# Example: Update and upgrade the system, install required packages, and create directories.
echo "Example:"
echo "--------"
echo "Updating and upgrading the system..."
update_and_upgrade
echo "Installing required packages..."
install_packages
echo "Creating directories..."
create_directories
echo "Done!"

wget https://downloads.mitmproxy.org/10.1.1/mitmproxy-10.1.1-linux.tar.gz
