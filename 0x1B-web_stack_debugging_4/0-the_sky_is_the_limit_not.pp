# configure nginx to open more files
exec { 'change ULIMIT':
  command  => "sed -i 's/15/4096/g' /etc/default/nginx",
  provider => shell
}
exec { 'nginx restart':
  command  => 'service nginx restart',
  provider => shell
}
