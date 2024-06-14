# login with holberton
file { 'allow holberton':
  path    => '/etc/security/limits.conf',
  ensure  => file,
  content => '\n'
}
