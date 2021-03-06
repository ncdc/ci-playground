#!/bin/bash -e

now=$(date +%s)
echo hello > ${now}.upload
echo

docker run --rm \
  -e GCP_PROJECT="${GCP_PROJECT}" \
  -e GCP_BUCKET="${GCP_BUCKET}" \
  -v `pwd`/upload.sh:/tmp/upload.sh \
  -v "${GCP_AUTH}":/tmp/sa.json \
  google/cloud-sdk:183.0.0-alpine \
  /tmp/upload.sh

echo
