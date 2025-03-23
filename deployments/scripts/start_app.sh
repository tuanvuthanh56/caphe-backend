#!/bin/bash
sudo chmod -R 777 /home/ec2-user/caphe-backend
sudo chown -R ec2-user:ec2-user /home/ec2-user/caphe-backend
sudo chmod +x deployments/scripts/start_app.sh
echo "====================="
echo $(pwd)
cd /home/ec2-user/caphe-backend
echo $(pwd)

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
nvm use 22
npm install
npm run build
pm2 start /home/ec2-user/caphe-backend/dist/main.js -- --port 3000