# Docker Project Ozone 3

This repository allows you to run a Project Ozone 3 Minecraft server using Docker.

## Setup

Clone or download this repository, and then run `make` in the directory where you cloned the repository. That's it.

## Docker image

The Docker image is based on [openjdk:8-jre-alpine](https://hub.docker.com/_/openjdk/), which means that the base image used is quite small (<90MB). Including the modpack after building, the image is only around 470MB.

## Credits

Based on [Unstable-Robert's docker-minecraft-project-ozone-3](https://github.com/Unstable-Robert/docker-minecraft-project-ozone-3) and modified a bit further to suite my own needs.

Credits go to [jaysonsantos' original Skyfactory 3 repository](https://github.com/jaysonsantos/docker-minecraft-ftb-skyfactory3) which this repository is based on.
