cd /var/data/iviva
sudo mv hermes-dotnet /var/data/iviva/microservices/
sudo mv NodeES6Eval /var/data/iviva/microservices/


cd /var/data/iviva/apps/lucy-connectors
sudo git clone http://source.iviva.com/lucy-connectors/aws.git
sudo git clone http://source.iviva.com/lucy-connectors/sqlserver.git
sudo git clone http://source.iviva.com/lucy-connectors/twilio.git
sudo git clone http://source.iviva.com/lucy-connectors/messaging.git



cd /var/data/iviva/apps

sudo git clone http://source.iviva.com/EutechDevelopers/ProductAppSet.git productapps
sudo git clone http://source.iviva.com/iviva-platform/lucylaunch.git

sudo git clone http://source.iviva.com/iviva-platform/uxp.git


sudo export IVIVA_CONFIG_PAT=/var/data/iviva/iviva.config.yml


echo "appending current user to the unit ivivaweb.service files"
cd $HOME/ivivaautomation/unitfiles/
sed "12a user=$(whoami)" ivivaweb.service

echo "appending current user to the unit hydra.service files"

sed "12a user=$(whoami)" hydra.service
sed  "8a ExecStart=/home/$(whoami)/.nvm/versions/node/v12.22.12/bin/node out/app.js" hydra.service
echo "appending current user to the unit lucy.service files"
sed "12a user=$(whoami)" lucy.service
sudo mv *.service /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl enable ivivaweb.service
sudo systemctl enable lucy.service
sudo systemctl enable hydra.service
sudo systemctl start ivivaweb.service
sudo systemctl start lucy.service
sudo systemctl start hydra.service

