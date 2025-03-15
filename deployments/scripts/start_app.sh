#!/bin/bash
sudo chmod -R 777 /home/ec2-user/caphe-backend
~/.nvm/versions/node/v22.12.0/bin/npm install
~/.nvm/versions/node/v22.12.0/bin/npm run build
~/.nvm/versions/node/v22.12.0/bin/pm2 start caphe