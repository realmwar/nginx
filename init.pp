class nginx (String $version = 'latest')
{
  package {'nginx':
    ensure => $version, # Using the class parameter from above
    port => ('nginx::port:')
}->
  service {'nginx':
    require => Package['nginx'],
  }
}
