#!/bin/bash
set -xe

export IMAGE_NAME="fvigotti/docker-kafka-offsetmonitor"
docker build -t "${IMAGE_NAME}" ../src

export WEBCONSOLE_PORT=8000
docker run --rm -ti -p ${WEBCONSOLE_PORT}:${WEBCONSOLE_PORT} \
    "${IMAGE_NAME}"

