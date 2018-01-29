#!/bin/bash -ex

now=$(date +%s)
echo hello > ${now}.upload
echo
cat "${GCP_AUTH}"
echo
