# Install misc. scripts from ApiCommonSystem source control
define apicommonsystem {

  include ::apicommonsystem::params
  $source              = $::apicommonsystem::params::source
  $workingdir          = $::apicommonsystem::params::workingdir
  $basic_auth_username = $::apicommonsystem::params::basic_auth_username
  $basic_auth_password = $::apicommonsystem::params::basic_auth_password

  if $basic_auth_username == undef {
    fail('set apicommonsystem::basic_auth_username in hiera')
  }
  if $basic_auth_password == undef {
    fail('set apicommonsystem::basic_auth_password in hiera')
  }

  exec { "install_$name":
    command => 'make install',
    cwd     => "${workingdir}/${name}",
  }

  vcsrepo { "${workingdir}/${name}":
    ensure   => latest,
    owner    => 'root',
    group    => 'root',
    provider => svn,
    basic_auth_username => $basic_auth_username,
    basic_auth_password => $basic_auth_password,
    require  => [ Package["subversion"] ],
    source   => "${source}/${name}",
    notify   => Exec["install_$name"],
  }

  file { "${workingdir}/${name}":
    mode    => '0750',
    require => Vcsrepo["${workingdir}/${name}"],
  }

}
