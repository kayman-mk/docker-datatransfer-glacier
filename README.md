# docker-data-transfer-glacier
The mt-aws-glacier project dockerized (https://github.com/vsespb/mt-aws-glacier)

## Problem to solve
Move backup files from a Synology Disk Station into AWS Glacier.

## Usage
Start any mt-aws-glacier command you like `docker exec -it -v ${PWD}/conf:/srv/conf -v ${PWD}/data:/srv/data kaymanmk/glacier-datatransfer:latest /srv/bin/mtglacier create-vault myvault --config /srv/conf/glacier.conf`.

Replace the command by any command needed.
