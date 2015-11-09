# apicommonsystem

## Module Description

Install miscellaneous scripts from ApiCommonSystem source control

## Setup

### What apicommonsystem affects

The module will do a checkout the given directory from source control,
https://mango.ctegd.uga.edu/svn/ApiCommonSystem/trunk

Then it will run `make install` from that directory.

### Setup Requirements **OPTIONAL**

Subversion must be installed.

## Usage

    apicommonsystem { 'Apache': }
    apicommonsystem { 'System': }
    apicommonsystem { 'WDK': }

## Reference

### Required Hiera parameters

Username and password for the svn repo **must** be set in Hiera , 

    apicommonsystem::basic_auth_username: puppet
    apicommonsystem::basic_auth_password: eieieo

### Optional Hiera parameters are

    apicommonsystem::workingdir

Sets the directory where the checkout will occur. Defaults to `/var/tmp/ApiCommonSystem`

    apicommonsystem::source

Sets the svn source. Defaults to `https://mango.ctegd.uga.edu/svn/ApiCommonSystem/trunk`

## Limitations

This is where you list OS compatibility, version compatibility, etc.

## Development

Since your module is awesome, other users will want to play with it. Let them
know what the ground rules for contributing are.

## Release Notes/Contributors/Etc **Optional**

If you aren't using changelog, put your release notes here (though you should
consider using changelog). You may also add any additional sections you feel are
necessary or important to include here. Please use the `## ` header.
