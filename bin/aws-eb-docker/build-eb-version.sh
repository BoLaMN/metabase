#!/bin/bash

BASEDIR=$(dirname $0)
source "$BASEDIR/functions"

MB_TAG=$1
if [ -z $MB_TAG ]; then
    echo "usage: $0 <release-name> <docker-repository> <docker-namespace>"
    exit 1
fi

MB_DOCKER_REPOSITORY=$2
if [ -z $MB_DOCKER_REPOSITORY ]; then
    echo "usage: $0 <release-name> <docker-repository> <docker-namespace>"
    exit 1
fi

MB_DOCKER_NAMESPACE=$3
if [[ -z $MB_DOCKER_NAMESPACE ]]; then
    MB_DOCKER_NAMESPACE=metabase
fi


make_eb_version ${MB_TAG} ${MB_DOCKER_REPOSITORY} ${MB_DOCKER_NAMESPACE}
