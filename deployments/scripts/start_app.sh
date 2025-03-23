#!/bin/bash
sudo chmod -R 777 /home/ec2-user/caphe-backend
sudo chown -R ec2-user:ec2-user /home/ec2-user/caphe-backend
sudo chmod +x deployments/scripts/start_app.sh
echo "====================="
echo $(pwd)
cd /home/ec2-user/caphe-backend
echo $(pwd)
Run as ec2-user
sudo -i -u ec2-user bash << 'EOF'
export NVM_DIR="/home/ec2-user/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
nvm use 22

npm install
npm run build
pm2 start ./dist/main.js -- --port 3000
EOF