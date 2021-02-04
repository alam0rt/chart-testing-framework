#!/usr/bin/env bats

load ../k8s-euft/env
load common
load helm

@test "Ensure helm version set: $HELM_VERSION" {
    helm_version_set
}

@test "Ensure helm chart installs" {
    helm_install_chart
}
