# == Class: ntpclient
#
# A module to handle ntp clients
#
# === Parameters
# ["version"]
#   The package version to install
#
# ["servers"]
#   An array of ntp servers to use
#
# ["enable"]
#   Should the service be enabled during boot time?
#
# ["start"]
#   Should the service be started by Puppet

class ntpclient (
  $version = 'present',
  $servers = ['0.ubuntu.pool.ntp.org',
              '1.ubuntu.pool.ntp.org',
              '2.ubuntu.pool.ntp.org',
              '3.ubuntu.pool.ntp.org'],
  $enable = true,
  $start = true
  )  {
    class{'ntpclient::install': } ->
    class{'ntpclient::configure': } ~>
    class{'ntpclient::service': } ->
    Class['ntpclient']
  }
