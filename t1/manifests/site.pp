node 't1' {
  file {'c:/Windows/Temp/sensu-0.14.0-1.msi':
    ensure  => present,
    path    => 'c:/Windows/Temp/sensu-0.14.0-1.msi',
    source  => 'puppet:///files/sensu-0.14.0-1.msi',
    source_permissions => ignore,
  }
}
