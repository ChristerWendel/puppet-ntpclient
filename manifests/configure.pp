# == Class: ntpclient::configure
#
# Configures the ntp client
class ntpclient::configure {
  $servers = $ntpclient::servers

  file { '/etc/ntp.conf':
    ensure  => present,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => template('ntpclient/ntp.erb'),
  }
}
