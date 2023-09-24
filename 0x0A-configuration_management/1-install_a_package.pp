# A Puppet Script that installs flask from pip3 and ensure its is version 2.1.0
package { 'flask':
  ensure   => '2.1.0',
  provider => 'pip3',
}
