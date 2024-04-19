# create a file in /tmp using Puppet

file { 'temp school file':
  ensure => file,
  path => '/tmp/school',
  mode => '0744',
  owner => 'www-data',
  group => 'www-data',
  conetnt => 'I love Puppet'
}
