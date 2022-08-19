#!/bin/bash

mkdir -p "$(pwd)"/test/source
mkdir -p "$(pwd)"/test/target

docker run \
  --mount type=bind,source="$(pwd)"/test/source,target=/source\
  --mount type=bind,source="$(pwd)"/test/target,target=/target\
  -it media-rsync
