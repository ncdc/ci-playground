#!/bin/bash -e

gcloud auth activate-service-account --key-file=/tmp/sa.json

gsutil ls -p andy-heptio
