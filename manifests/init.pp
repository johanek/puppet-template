# = Class: foo
#
# This is the main foo class
#
#== Requirements
# None
#
# == Parameters
#
# [*present*]
#   Set to 'false' to remove package
#
# [*enabled*]
#   Set to 'false' to stop service
#
# [*enableboot*]
#   Set to 'false' to prevent service starting at boot
#
class foo (
  # Parameters for Class
  $present = true,
  $enabled = true,
  $enableboot = true,
  $version = latest
){
    include foo::params
    include foo::install
    include foo::service
    include foo::config
}
