#!/bin/bash

set -euo pipefail
set -x

# keeping just in case we go back to a custom build
echo TODO: support cleaning up the offical images
exit 1

. austin_settings.sh

docker images --format '{{.Repository}}:{{.Tag}}' | grep -F "${DOCKER_IMAGE_BASE_NAME}" | grep -v "${DOCKER_IMAGE_TAG}\$" | xargs docker rmi
