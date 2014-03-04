#!/bin.sh
sudo puppet apply /root/puppet/manifests/sites.pp --modulepath=/root/puppet/modules/ $*
