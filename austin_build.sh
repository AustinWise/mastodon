#!/bin/bash

set -euo pipefail
set -x

# keeping just in case we go back to a custom build
echo NO LONGER NEED, WE JUST THE OFFICAL IMAGE
exit 1

. austin_settings.sh

docker buildx build -t $DOCKER_IMAGE .
docker push $DOCKER_IMAGE

sed -i docker-compose.yml -e "s!image:.*mastodon.*!image: ${DOCKER_IMAGE}!"
