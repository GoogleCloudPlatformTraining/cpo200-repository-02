#! /bin/bash
#
# File: build.sh
#
# Purpose: Drive the building of a Docker container image
#

# Issue a request for the metadata service to get the current project identifier
export PROJECT_ID=$(curl -s 'http://metadata/computeMetadata/v1/project/project-id' -H 'Metadata-Flavor: Google')

docker build -t guestbook  .

docker tag guestbook "gcr.io/${PROJECT_ID}/guestbook"

/usr/local/bin/gcloud docker push "gcr.io/${PROJECT_ID}/guestbook"

