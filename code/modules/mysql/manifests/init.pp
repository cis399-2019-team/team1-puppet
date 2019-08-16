class mysql {
  package { "mysql-server":
    ensure    => installed,
    provider  => apt,
  }

  file { "/etc/mysql/mysql.cnf":
    ensure  => present,
    source  => "puppet:///modules/mysql/mysql.cnf",
    require => Package["mysql-server"],
  }
}
