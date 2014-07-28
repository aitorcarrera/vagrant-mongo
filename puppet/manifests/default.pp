exec {

"apt-get update":
path => "usr/bin",
}

class {'::mongodb::globals':
  manage_package_repo => true,
}->
class {'::mongodb::server':

  bind_ip => ['0.0.0.0'],
}->
class {'::mongodb::client': }
