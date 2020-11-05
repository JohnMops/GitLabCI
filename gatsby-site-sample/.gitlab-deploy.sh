#!/bin/bash

echo "Deploying to EC2: $DEPLOY_SERVER" # create this var in Gitlab with EC2 IP
ssh ec2-user@$DEPLOY_SERVER
sudo yum install git -y
eval "$(ssh-agent -s)"
ssh-add  ~/.ssh/john
git clone git@gitlab.com:JohnMops/sample-web-server.git
# shellcheck disable=SC2164
cd sample-web-server
curl -sL https://rpm.nodesource.com/setup_10.x | sudo bash -
sudo yum install nodejs -y
npm install
npm install -g gatsby-cli
gatsby build


gatsby serve &
