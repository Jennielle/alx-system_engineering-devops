#!/usr/bin/env bash
# Using puppet to connect without password

file { '/etc/ssh/ssh_config':
ensure => present,
}

file { 'Turn off password auth':
path => '/etc/ssh/ssh_config',
line => 'passwordAuthentication no',
match => '^#PasswordAuthentication',
}

file { 'Turn off password auth':
path => '/etc/ssh/ssh_config',
line => 'IdentityFile~/.ssh/school',
match => '^#IdentityFile',
}
