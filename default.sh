#!/bin/bash
echo " Checking whether all prerequsites are installed "
# Function to check if a package is installed
is_installed() {
    dpkg -l | grep -qw "$1"
}

# List of required packages
required_packages=("git" "wget" "curl" "gpg" "libgdiplus" "nginx")

# Loop through each required package
for package in "${required_packages[@]}"; do
    # Check if the package is installed
    if ! is_installed "$package"; then
        echo "$package is not installed."

        # Ask the user if they want to install the missing package
        read -p "Do you want to install $package? (y/n): " answer
        if [[ "$answer" == "y" || "$answer" == "Y" ]]; then
            echo "Installing $package..."
            sudo apt-get update
            sudo apt-get install -y "$package"
        else
            echo "Skipping the installation of $package."
        fi
    else
        echo "$package is already installed."
    fi
done

echo "Script completed."

