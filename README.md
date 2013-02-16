puppet-template
===============

Template puppet module

Replace foo with name of module:
osx: find . -type f -exec sed -i "" "s/foo/ntpd/g" '{}' ';'
linux: find . -type f -exec sed -i 's/foo/ntpd/g' '{}' ';' 
