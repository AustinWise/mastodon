#!/bin/bash

set -euo pipefail
set -x

# keeping just in case we go back to a custom build
echo NO LONGER NEED, WE JUST THE OFFICAL IMAGE
exit 1

. austin_settings.sh

gcloud artifacts docker images list us-central1-docker.pkg.dev/probable-quest-368518/docker-images/mastodon \
  --include-tags --filter "TAGS != '$DOCKER_IMAGE_TAG'" --format 'csv(IMAGE,TAGS)' \
  | tail -n +2 \
  | tr , : \
  | xargs -n1 gcloud artifacts docker images delete
