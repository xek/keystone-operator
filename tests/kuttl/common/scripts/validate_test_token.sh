#!/bin/sh
set -euxo pipefail

export OS_TOKEN=$(cat /tmp/temporary_test_token)

alias openstack="oc exec -tn $NAMESPACE openstackclient -- env OS_TOKEN=$OS_TOKEN openstack --os-auth-type token "

openstack endpoint list > /dev/null
