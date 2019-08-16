class mysql {
  package { "mysql-server":
    ensure    => installed,
    provider  => apt,
  }

  file { "/etc/mysql/mysql.cnf":
    ensure  => present,
    notify  => Service["mysql"],
    source  => "puppet:///modules/mysql/mysql.cnf",
    require => Package["mysql"],
  }
}
