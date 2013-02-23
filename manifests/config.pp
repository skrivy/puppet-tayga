class tayga::config {
   file{'/etc/tayga.conf':
     content => template('tayga/tayga.conf.erb'),
     owner => root,
     group => root,
     mode => '0644',
   }  
}
