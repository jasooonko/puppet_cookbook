# Manage memcached
class memcached {
  package { "memcached":
    ensure => installed
  }
  file { '/etc/sysconfig/memcached':
    source  => '/root/puppet/modules/memcached/files/memcached.conf',
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    require =>  Package['memcached'],
  }

  service { 'memcached':
    ensure  => running,
    enable  => true,
    require => [Package['memcached'], File['/etc/sysconfig/memcached']],
  }
}
