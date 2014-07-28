include '::mongodb::server'
include apt

class { 'apt':
  always_apt_update    => false,
  disable_keys         => undef,
  proxy_host           => false,
  proxy_port           => '8080',
  purge_sources_list   => false,
  purge_sources_list_d => false,
  purge_preferences_d  => false,
  update_timeout       => undef,
  fancy_progress       => undef
}

class {'::mongodb::globals':
  manage_package_repo => true,
}->
class {'::mongodb::server': }->
class {'::mongodb::client': }
