#!/usr/bin/env bash
# using puppet to make changes

file { 'etc/ssh/ssh_config':
        ensure => present,

content =>"

        #SSH client configuration
        host*
        IdentityFile ~/.ssh/school
        PasswordAuthentication no
	",
}
