# Increase the ULIMIT for Nginx to fix bug
exec { 'fix--for-nginx':
  command => 'sudo sed -i "s/15/4096/" /etc/default/nginx',
  path    => '/usr/local/bin/:/bin/'
}

-> exec { 'nginx-restart':
  command => 'nginx restart',
  path    => '/etc/init.d/'
}
