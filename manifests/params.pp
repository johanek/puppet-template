# Class foo::params
class foo::params  {

  # Disable service if package absent
  $service_ensure = $foo::enabled ? {
    false   => stopped,
    default => $foo::present ? {
      false   => stopped,
      default => running
    }
  }

  # Disable service boottime startup if package absent
  $service_enable = $foo::enableboot ? {
    false   => false,
    default => $foo::present ? {
      false   => false,
      default => true
    }
  }

  # Remove package
  $package_ensure = $foo::present ? {
    false   => absent,
    default => present
  }

}
