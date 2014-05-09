# == Class: ntpclient::install
#
# Installs the ntp client
class ntpclient::install {
  package { 'ntp':
    ensure => $ntpclient::version
  }
}
