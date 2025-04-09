#!/bin/bash

# Prompt the user for input
echo "Please enter 'iviva' or 'ivivadx':"
read user_input

# Check the user's input and execute corresponding action
if [[ "$user_input" == "iviva" ]]; then
    echo "Executing iviva..."
    read -p " Enter the newaccount name :   " accountname
    read -p " Enter the LoginID required:   " loginid
    read -p "Enter the firstname        :   " firstname
    read -p " Enter the Lastname        :   " lastname
    read -p " ENter the Email           :   " email
    echo "executing account creation command sdm newaccount $accountname /var/data/iviva/apps/lucylaunch/1.0/profile.xml LoginID $loginid FirstName $firstname LastName $lastname Email $email"
    /var/data/iviva/sdm/sdm newaccount $accountname /var/data/iviva/apps/lucylaunch/1.0/profile.xml LoginID $loginid FirstName $firstname LastName $lastname Email $email
    # Here, add the command or action you want to run for iviva
    # For example:
    # ./iviva
elif [[ "$user_input" == "ivivadx" ]]; then
    echo "Executing ivivadx..."
    # Here, add the command or action you want to run for ivivadx
    # For example:
    # ./ivivadx
    read -p "Enter the newaccount name  :   " accountname
    read -p "Enter the LoginID required :   " loginid
    read -p "Enter the firstname        :   " firstname
    read -p "Enter the Lastname         :   " lastname
    read -p "Enter the Email            :   " email
    read -p "Enter the password required:   " password
    read -p "Enter the country          :   " country
    read -p "Enter the sitelocation     :   " sitelocation
    read -p "Enter the companyname      :   " companyname
    read -p "Enter the companytype      :   " companytype
    read -p "Enter the timezone         :   " timezone
    read -p "Enter the accountype       :   " accouttype
    read -p "Enter the mobile number    :   " mobile
    echo " sdm newaccount $accountname /var/data/iviva/apps/iviva.dx/iviva.dx/SaasAccuntCreatorScripts/4.0/profile_freetrial.xml FirstName $firstname LastName $lastname Email $email Password $password Country $country SiteLocation $sitelocation Mobile $mobile LoginID $loginid CompanyName $companyname CompanyType $companytype TimeZone $timezone AccountType $accouttype"
else
    echo "Invalid input. Please enter either 'iviva' or 'ivivadx'."
fi





