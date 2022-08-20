#!/bin/bash

mkdir -p "$(pwd)"/example/source
mkdir -p "$(pwd)"/example/target

docker run \
  --mount type=bind,source="$(pwd)"/example/source,target=/source,readonly \
  --mount type=bind,source="$(pwd)"/example/target,target=/target\
  -it media-sync
