# set up client SSH configuration file

file_line { 'Disables password auth':
    ensure => 'present',
    path   => '/etc/ssh/ssh_config',
    line   => '    PasswordAuthentication no',
    match  => 'PasswordAuthentication yes',
}

file_line { 'Config to use private key auth':
    ensure => 'present',
    path   => '/etc/ssh/ssh_config',
    line   => '    IdentityFile ~/.ssh/school',
}
