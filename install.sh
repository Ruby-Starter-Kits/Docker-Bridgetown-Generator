#!/bin/bash
set -u

# This will setup a new Bridgetown Project which will run under docker.
# The aim is to only require developers install docker to try Bridgetown.
# 
# To run, in terminal run:
# /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/MikeRogers0/Docker-Bridgetown-Installer/master/install.sh)"

echo "Installing Bridgetown (Via Docker)"

## TODO: Check docker exists

## Run the docker image with the latest version of bridgetown & template
docker run --rm -it -v $(pwd):/usr/src/app mikerogers0/bridgetownrb-installer:latest

## Build the local container
echo "Building docker container for your app"
docker-compose --file $(pwd)/App/docker-compose.yml build

echo "Completing installation"
docker-compose --file $(pwd)/App/docker-compose.yml run --rm web /bin/sh -c 'bundle && yarn'

## Summarise what people need to do:
echo "You're good to go"
echo "Installed to directory: $(pwd)/App"
echo "To start your rails server: cd $(pwd)/App && docker-compose up"
echo "Then navigate to: http://127.0.0.1:4000"
