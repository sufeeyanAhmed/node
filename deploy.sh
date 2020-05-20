#!/bin/sh
ssh ubuntu@54.224.190.59 <<EOF
sudo apt-get update -y
cd ~/node
git pull origin master
curl -o-   https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh    | bash

. ~/.nvm/nvm.sh
sudo apt install nodejs -y

sudo apt install build-essential -y

#nvm install

sudo npm install

sudo npm start
#pm2 restart ecosystem.config.js
exit
EOF
