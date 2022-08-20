# Media Sync

This is a docker container designed to sync media files from one directory to another.  
It first executes [rsync-sidekick](https://github.com/m-manu/rsync-sidekick) to handle 
any file renaming and then executes rsync to handle transfering the remaining files.

## Usage

To use this container, you run the container with a `/source` and a `/target` directory 
mounted.  The container will then sync the directories.

This example can be found in the `example.sh` file in this project.

```bash
docker run \
  --mount type=bind,source="$(pwd)"/example/source,target=/source,readonly\
  --mount type=bind,source="$(pwd)"/example/target,target=/target\
  -it media-sync
```
