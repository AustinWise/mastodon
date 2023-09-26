#!/bin/bash

set -euo pipefail
set -x

docker-compose run --rm -e SKIP_POST_DEPLOYMENT_MIGRATIONS=true web bundle exec rails db:migrate
docker-compose up -d
docker-compose run --rm web bundle exec rails db:migrate
