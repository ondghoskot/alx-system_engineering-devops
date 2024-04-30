#!/usr/bin/env bash
# automate the task of creating a custom HTTP header response, but with Puppet
exec {'automate'
  command  => 'sudo apt-get -y update
	sudo apt-get -y install nginx
	sudo service nginx start
	sudo sed -i "23i\\\tadd_header X-Served-By $HOSTNAME;" /etc/nginx/sites-available/default
	sudo service nginx restart',
  provider => shell,
}
