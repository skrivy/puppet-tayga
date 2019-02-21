class tayga (
  Stdlib::IP::Address::V4::Nosubnet $ipv4_addr,
  Stdlib::IP::Address::V6::CIDR     $prefix,
  Stdlib::IP::Address::V4::CIDR     $dynamic_pool,
  Stdlib::IP::Address::V6::Nosubnet $ipv6_addr,
  String                            $version = 'present',
  String                            $tun_device = 'nat64',
  Boolean                           $enable = true,
  Boolean                           $start = true,
) {

  class{'tayga::install': } ->
  class{'tayga::config': } ~>
  class{'tayga::service': } ->
  Class['tayga']

}
