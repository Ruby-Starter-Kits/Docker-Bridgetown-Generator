# Docker Bridgetown Installer

A quick start for running [Bridgetown](https://www.bridgetownrb.com/) with Docker. You can see the files it'll generate in [Ruby-Starter-Kits/Docker-Bridgetown-Template](https://github.com/Ruby-Starter-Kits/Docker-Bridgetown-Template).

## Usage

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Ruby-Starter-Kits/Docker-Bridgetown-Installer/master/installer.sh)"
```

Install [Docker](https://hub.docker.com/editions/community/docker-ce-desktop-mac/) and paste the above snippet into a macOS Terminal or Linux shell prompt.

This will create a Docker ready version of Bridgetown in the `App` folder.

## How this works

This will pull down [rubystarterkits/bridgetown-installer](https://hub.docker.com/repository/docker/rubystarterkits/bridgetown-installer/general) from docker, which contains everything required to create a bridgetown app locally. Then it'll do `bridgetown new App` & copy all the files required to run under docker into that directory.

The aim is to avoid requiring developers to setup ruby & any other dependencies to get started.

## TODO

* Get blessing from the people behind Bridgetown that this is an acceptable approach
* Setup way to change the folder it's installed to.
* Assess if it's quicker to run `bridgetown new` within the installer docker image & then just copy the files.
