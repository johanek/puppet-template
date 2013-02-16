# Class foo::install
class foo::install {
  package { 'foo':
    ensure => present
  }
}
