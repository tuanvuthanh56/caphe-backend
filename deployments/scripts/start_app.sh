#!/bin/bash
sudo chmod -R 777 /home/ec2-user/caphe-backend
npm install
npm run build
pm2 start caphe