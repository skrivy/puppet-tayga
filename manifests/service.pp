class tayga::service {

  $ensure = $tayga::start ? {true => running, default => stopped}

  service {'tayga':
    ensure => $ensure,
    enable => $tayga::enable,
  }

}
