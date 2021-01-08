#!/bin/bash
sudo mkdir ./code
sudo chmod -R 777 code
cd ./code
sudo snap install amazon-ssm-agent --classic
sudo snap switch --channel=candidate amazon-ssm-agent
sudo systemctl start snap.amazon-ssm-agent.amazon-ssm-agent.service &
sudo apt update
sudo apt install openssh-server
sudo apt-get install openjdk-8-jre -y
sudo apt-get install curl
sudo curl -O https://download.clojure.org/install/linux-install-1.10.1.754.sh
sudo chmod +x linux-install-1.10.1.754.sh
sudo ./linux-install-1.10.1.754.sh
curl -sL https://raw.githubusercontent.com/creationix/nvm/v0.35.3/install.sh -o install_nvm.sh
bash install_nvm.sh
source ~/.profile
nvm install 14.15.1
nvm use 14.15.1 
sudo apt-get install git
sudo apt-get install make
git clone https://github.com/yetanalytics/datasim.git
cd datasim/
touch .lein-env && echo "{:credentials ThisUser:thatpassword }" > .lein-env 
make bundle
clojure -A:server &
cd ..
git clone https://github.com/yetanalytics/datasim-ui.git
cd datasim-ui/
clojure -A:fig &
clojure -A:build-sass &
