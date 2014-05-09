# == Class: ntpclient::service
#
# Controls the ntp service
class ntpclient::service {
  $ensure = $ntpclient::start ? {true => running, default => stopped}

  service { 'ntp':
    ensure    => $ensure,
    enable    => $ntpclient::enable,
  }
}
