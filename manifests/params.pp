# Class foo::params
class foo::params  {

  # Service Status
  $service_ensure = $foo::enabled ? {
    false   => stopped,
    default => $foo::version ? {
      'absent'  => stopped,
      default   => running 
    }
  }

  $service_enable = $foo::enableboot ? {
    false   => false,
    default => $foo::Version ? {
      'absent'  => false,
      default   => true
    }
  }

}
