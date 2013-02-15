# = Class: foo
#
# This is the main foo class
#
#== Requirements
# None
#
# == Parameters
#
# [*enabled*]
#   Set to 'false' to stop service. Default: true
#
# [*enableboot*]
#   Set to 'false' to prevent service starting at boot. Default: true
#
# [*version*]
#   Set to desired version. Default: latest
#
class foo (
  # Parameters for Class
  $enabled = true,
  $enableboot = true,
  $version = latest
){
  class { 'foo::params': } ->
  class { 'foo::install': } ->
  class { 'foo::config': } ->
  class { 'foo::service': }
}
