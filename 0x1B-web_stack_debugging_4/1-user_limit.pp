# login with holberton
exec { 'allow holberton':
  command  => "sed -i '/^holberton\\s*hard\\s*nofile/d' /etc/security/limits.conf",
  provider => shell
}
