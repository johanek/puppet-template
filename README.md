puppet-template
===============

Template puppet module

Replace foo with name of module:
find . \( ! -regex '.*/\..*' \) -type f -exec sed -i "" "s/foo/ntpd/g" '{}' ';'
