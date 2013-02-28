class tayga (
  $ipv4_addr,
  $prefix,
  $dynamic_pool,
  $version = 'present',
  $tun_device = 'nat64',
  $enable = true,
  $start = true,
) {
  class{'tayga::install': } ->
  class{'tayga::config': } ~>
  class{'tayga::service': } ->
  Class['tayga']
}
