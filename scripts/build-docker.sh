#!/bin/bash
set -u

docker build $(pwd) -t rubystarterkits/bridgetown-installer:latest
