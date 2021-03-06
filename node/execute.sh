#!/bin/bash

sudo apt-get install build-essential libssl-dev
curl https://raw.githubusercontent.com/creationix/nvm/v0.32.1/install.sh | bash
source ~ /.profile
nvm install 6.9.1
npm install
npm install -g forever-service
forever-service install --script index.js
