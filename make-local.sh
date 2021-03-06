#!/bin/bash -e
# this is used to build the webapp for local testing
# it is not used to deploy to github 
rm -rf ./build
mkdir ./build
rm -f src/*~ src/pkg/*~ json/*~ 
eslint "src/**"
jspm bundle-sfx src/main.js ./build/bundle.js
cp index.html ./build/
cp index.css ./build/
cp plotly-min.js ./build/
cd ./build
# The finished website is in ./build
# Put *your* code to deploy it below this line
rm -rf /var/web/192.168.1.10/zi
mkdir -p /var/web/192.168.1.10/zi
cp -a * /var/web/192.168.1.10/zi/
