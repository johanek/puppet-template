# Class foo:service
class foo::service {

  service { 'foo':
    ensure  => $foo::params::service_ensure,
    enable  => $foo::params::service_enable
  }

}
