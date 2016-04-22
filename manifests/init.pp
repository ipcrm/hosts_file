class hosts_file {
  file {'/etc/hosts':
    owner   => root,
    group   => root,
    mode    => '0644',
    content => template('hosts_file/hosts.erb'),
    noop    => true,
  }
}
