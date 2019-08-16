class mysql {
  package { "mysql":
    ensure    => installed,
    provider  => apt,
  }

  file { "/etc/mysql/mysql.cnf":
    ensure  => present,
    notify  => Service["mysql"],
    notify  => Service["php"],
    source  => "puppet:///modules/mysql/mysql.cnf",
    require => Package["mysql"],
  }

  service { "mysql":
    enable    => true,
    ensure    => running,
    subscribe => File["/etc/mysql/mysql.cnf"],
    require   => [
      Package["mysql"],
    ],
  }
}
