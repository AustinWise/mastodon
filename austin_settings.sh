MASTO_VERSION=$(ruby austin_get_version.rb)
DOCKER_IMAGE_TAG=austin-$MASTO_VERSION
DOCKER_IMAGE_BASE_NAME=us-central1-docker.pkg.dev/probable-quest-368518/docker-images/mastodon
DOCKER_IMAGE=$DOCKER_IMAGE_BASE_NAME:$DOCKER_IMAGE_TAG
