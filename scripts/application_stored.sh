#!/bin/bash
sudo chmod -R 777 /home/ec2-user/express-app
#naviage into our directory
cd /home/ec2-user/express-app

#add npm and node to path
export NVM_DIR="$HOME/.nvm"

#loads nvm
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
#loads nvm bash competion
[ -s "$NVM_DIR/bash_completion" ] && \."$NVM_DIR/bash_completion"

#install node modules
npm install

#start our node app in the back
node app.js > app.out.log 2>app.err.log </dev/null &