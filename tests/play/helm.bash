#!/usr/bin/env bash

#set -x
helm_version_set() {
    echo "Ensure HELM_VERSION is set: $HELM_VERSION"
    [ ! -z $HELM_VERSION ]
}

helm_install_chart() {
  echo "Ensure helm chart can install"
  helm install test ./example-chart \
    --kube-context=$KIND_CONTEXT \
    --wait
}

