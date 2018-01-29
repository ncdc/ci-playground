#!/bin/bash -e

gcloud auth activate-service-account --key-file=/tmp/sa.json

gsutil ls -p "${GCP_PROJECT}" "gs://${GCP_BUCKET}"
