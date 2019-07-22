class apache {
  package { "apache2":
    ensure    => installed,
    provider  => apt,
  }

  file { "/etc/apache2/apache2.config":
    ensure  => present,
    notify  => Service["apache"],
    mode    => '444',
    owner   => 'root',
    group   => 'root',
    source  => "puppet:///modules/apache/apache_config",
    require => Package["apache2"],
  }

  service { "apache2":
    enable => true,
    ensure => running,
    subscribe => File["/etc/apache2/apache2_config"],
    require => [
      Package["apache2"],
    ],
  }
}
