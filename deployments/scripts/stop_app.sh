#!/bin/bash
sudo chmod -R 777 /home/ec2-user/caphe-backend
sudo chmod +x deployments/scripts/stop_app.sh

# Run as ec2-user
sudo -i -u ec2-user bash << 'EOF'
export NVM_DIR="/home/ec2-user/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
nvm use 22

pm2 stop caphe
EOF