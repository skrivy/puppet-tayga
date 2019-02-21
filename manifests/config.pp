class tayga::config (
  $ipv4_addr    = $::tayga::ipv4_addr,
  $ipv6_addr    = $::tayga::ipv6_addr,
  $prefix       = $::tayga::prefix,
  $dynamic_pool = $::tayga::dynamic_pool,
  $tun_device   = $::tayga::tun_device,
) {

  file{ '/etc/tayga.conf':
    content => template('tayga/tayga.conf.erb'),
    owner => root,
    group => root,
    mode => '0644',
  }

  exec { 'Create nat64 tun device':
    command => '/usr/sbin/tayga --mktun',
    unless  => "/usr/bin/test -d /sys/class/net/${tun_device}/",
    require => File[ '/etc/tayga.conf' ],
  }

}
