node 'cookbook','cookbook2' {
  #include memcached
  #include test 
  #append_if_no_such_line { 'enable-ip-conntrack': 
  #  file => '/etc/module',
  #  line => 'ip_contrack',
  #}
  
  #augeas { 'enable-ip-forwarding': 
  #  context => '/files/etc/sysctl.conf',
  #  changes => ['set net.ipv4.ip_forward 1'],
  #}

  include admin::rsyncdconf
  file { '/etc/rsyncd.d/myapp.conf': 
    ensure => present, 
    source => '/root/puppet/modules/admin/files/myapp.rsync', 
    require => File['/etc/rsyncd.d'], 
    notify => Exec['update-rsyncd.conf'], 
  }

}
