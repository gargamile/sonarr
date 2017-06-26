#!/bin/bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

source $DIR/sonarr.conf

docker run -d --name="stu-sonarr" --net=host -v /storage/docker/docker-sonarr:/volumes/config -v /storage/complete:/volumes/completed -v /storage:/volumes/media  -v /storage:/data --restart=always sonarr
