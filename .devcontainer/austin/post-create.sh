#!/bin/bash

set -e

# Get the script. It should create a table:
#    CREATE TABLE IF NOT EXISTS "credentials" (account_id TEXT PRIMARY KEY, value BLOB);
# And then insert the crentials into that table.
mkdir -p $HOME/.austin
echo $GCLOUD_CRED > $HOME/.austin/gcloud_cred.sql

# Run the script.
mkdir -p $HOME/.config/gcloud/
sqlite3 $HOME/.config/gcloud/credentials.db < $HOME/.austin/gcloud_cred.sql

# Active the account for use. This should match the account_id
# added in the above table.
gcloud config set account $GCLOUD_ACCOUNT_NAME

gcloud auth configure-docker us-central1-docker.pkg.dev --quiet
