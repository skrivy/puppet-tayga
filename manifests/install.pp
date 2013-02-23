class tayga::install {
  package{'tayga':
    ensure => $tayga::version,
  }
}
