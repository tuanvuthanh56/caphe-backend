#!/bin/bash
sudo chmod -R 777 /home/ec2-user/caphe-backend

# Load nvm for the script
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
nvm use 22


echo "Stopping any existing node servers"
pm2 stop caphe