wget http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/libssl1.1_1.1.1f-1ubuntu2_amd64.deb
sudo dpkg -i libssl1.1_1.1.1f-1ubuntu2_amd64.deb
curl -fsSL https://www.mongodb.org/static/pgp/server-6.0.asc | \
   sudo gpg -o /usr/share/keyrings/mongodb-server-6.0.gpg \
   --dearmor
   
echo "deb [ arch=amd64,arm64 signed-by=/usr/share/keyrings/mongodb-server-6.0.gpg ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/6.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-6.0.list


sudo apt-get update

sudo apt-get install -y mongodb-org=6.0.21 mongodb-org-database=6.0.21 mongodb-org-server=6.0.21 mongodb-mongosh mongodb-org-shell=6.0.21 mongodb-org-mongos=6.0.21 mongodb-org-tools=6.0.21 mongodb-org-database-tools-extra=6.0.21

#sudo apt-get install -y mongodb-org=7.0.19 mongodb-org-database=7.0.19 mongodb-org-server=7.0.19 mongodb-org-mongos=7.0.19 mongodb-org-tools=7.0.19


sudo systemctl start mongod


sudo systemctl daemon-reload


sudo systemctl enable mongod

