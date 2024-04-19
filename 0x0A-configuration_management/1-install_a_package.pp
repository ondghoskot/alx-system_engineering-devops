# using Puppet, install flask from pip3

exec { 'flask':
  command => '/usr/bin/apt-get -y pip3 install Flask -v 2.1.0',
}
