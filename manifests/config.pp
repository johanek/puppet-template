# Class foo::config
class foo::config {

  File {
    owner => root,
    group => root,
    mode  => '0644'
  }

  file { '/etc/foo.conf':
    ensure  => present,
    source  => 'puppet:///modules/foo/foo.conf'
    require => Class['foo::install'],
    notify  => Class['foo::service']
  }

}
