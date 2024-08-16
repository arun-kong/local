#https://konghq.atlassian.net/wiki/spaces/TKM/pages/3061153936/Open+ID+Connect+local+testing

#/bin/bash

VERSION=15.0.1

cd /tmp
git clone git@github.com:keycloak/keycloak-containers.git
cd keycloak-containers/server
git checkout $VERSION
docker build -t "jboss/keycloak:${VERSION}" .
docker build -t "quay.io/keycloak/keycloak:${VERSION}" .