#!/bin/sh

export SHELLBASE=$(cd  "$(dirname "$0")"; pwd)

docker build $SHELLBASE \
  --build-arg HTTP_PROXY=http://172.18.1.1:18888 \
  --build-arg HTTPS_PROXY=http://172.18.1.1:18888 \
  -f Dockerfile \
  -t caesar8043/genie

