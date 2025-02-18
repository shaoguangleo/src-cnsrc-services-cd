#!/bin/bash

set -euo pipefail
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

bash $SCRIPT_DIR/download_helm_binary.sh
bash $SCRIPT_DIR/download_argocd_binary.sh
helm install argo-cd argo-cd \
    --namespace argocd \
    --create-namespace \
    --repo https://argoproj.github.io/argo-helm \
    --version 7.7.10 \
    --values $SCRIPT_DIR/argocd.values.yaml \
    --timeout 300 \
    --atomic

FIRST_MASTER_IP=$(kubectl get nodes --selector=node-role.kubernetes.io/control-plane -o jsonpath='{$.items[0].status.addresses[?(@.type=="InternalIP")].address}')
argocd login --insecure --username admin $FIRST_MASTER_IP:30443 --password $(kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d)
