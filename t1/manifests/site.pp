node default {

}

node 'sbx529eff0' {

  package {'Sensu':
    ensure          => 'installed',
    source          => 'c:/Windows/Temp/sensu-0.14.0-1.msi',
    install_options => ['INSTALLDIR=C:\opt'],
    require => File['c:/Windows/Temp/sensu-0.14.0-1.msi'],
  }

  file {'c:/Windows/Temp/sensu-0.14.0-1.msi':
    ensure             => present,
    path               => 'c:/Windows/Temp/sensu-0.14.0-1.msi',
    source             => 'puppet:///files/sensu-0.14.0-1.msi',

 if $osfamily == 'windows' {
      File { source_permissions => ignore }
    }

    source_permissions => ignore,
  }
}

node 't1' {
  file {'c:/Windows/Temp/sensu-0.14.0-1.msi':
    ensure             => present,
    path               => 'c:/Windows/Temp/sensu-0.14.0-1.msi',
    source             => 'puppet:///files/sensu-0.14.0-1.msi',
    source_permissions => ignore,
  }
}
