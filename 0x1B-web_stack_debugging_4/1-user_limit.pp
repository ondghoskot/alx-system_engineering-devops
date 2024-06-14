# login with holberton
file { 'allow holberton':
  ensure  => file,
  path    => '/etc/security/limits.conf',
  content => '\n'
}
