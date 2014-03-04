class puppet {
  file { '/usr/local/bin/papply':
    source => '/root/puppet/modules/puppet/manifests/files/papply.sh', 
    mode   => '0755',
  }
}
