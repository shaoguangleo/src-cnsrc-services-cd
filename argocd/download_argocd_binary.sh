#!/bin/bash

set -euo pipefail

MIRROR=${MIRROR:-files.m.daocloud.io/}
VERSION=v2.9.3
ARCH=$(uname -m)
if [ "${ARCH}" = "x86_64" ]; then
    curl -sSLo argocd "https://${MIRROR}github.com/argoproj/argo-cd/releases/download/${VERSION}/argocd-linux-amd64"
elif [ "${ARCH}" = "aarch64" ]; then
    curl -sSLo argocd "https://${MIRROR}github.com/argoproj/argo-cd/releases/download/${VERSION}/argocd-linux-arm64"
else
    echo "NOT SUPPORT: ${ARCH}"
fi
chmod u+x argocd
mkdir -p ${HOME}/bin
mv -f argocd ${HOME}/bin
