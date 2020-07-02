#!/bin/bash
set -u

docker build $(pwd) -t mikerogers0/bridgetownrb-installer:latest
