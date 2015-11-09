class apicommonsystem::params {

  $source              = hiera('apicommonsystem::source',
                        'https://mango.ctegd.uga.edu/svn/ApiCommonSystem/trunk')

  $workingdir          = hiera('apicommonsystem::workingdir',
                         '/var/tmp/ApiCommonSystem')

  $basic_auth_username = hiera('apicommonsystem::basic_auth_username',
                         undef)

  $basic_auth_password = hiera('apicommonsystem::basic_auth_password',
                         undef)

}