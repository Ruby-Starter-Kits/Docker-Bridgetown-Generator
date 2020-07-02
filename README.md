# Docker Bridgetown Installer

_Warning: This is a proof of concept repo to experiment with new install approaches_

A quick start for running [Bridgetown](https://www.bridgetownrb.com/) with Docker.

## Usage

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/MikeRogers0/Docker-Bridgetown-Installer/master/installer.sh)"
```

Install [Docker](https://hub.docker.com/editions/community/docker-ce-desktop-mac/) and paste the above snippet into a macOS Terminal or Linux shell prompt.

This will create a Docker Ready version of Bridgetown in the `App` folder.

## How this works

This will pull down [mikerogers0/bridgetownrb-installer](https://hub.docker.com/repository/docker/mikerogers0/bridgetownrb-installer/general) from docker, which contains everything require to create your bridgetown app locally. Then it'll do `bridgetown new App` & copy all the files required to run under docker into that directory.

## TODO

* Get blessing from the people behind Bridgetown that this is an acceptable approach
* Assess if a auto-updating template repo could also work just as well
* Setup way to change the folder it's installed to.
* Assess if it's quicker to run `bridgetown new` within the installer docker image & then just copy the files.
