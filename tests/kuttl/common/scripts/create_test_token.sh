#!/bin/sh
set -euxo pipefail

alias openstack="oc exec -tn $NAMESPACE openstackclient -- openstack"

export OS_TOKEN=$(openstack token issue -f value -c id)

echo $OS_TOKEN > /tmp/temporary_test_token
