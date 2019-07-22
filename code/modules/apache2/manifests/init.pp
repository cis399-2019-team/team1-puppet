class apache2 {
	package { "apache2":
		ensure 		=> installed,
		provider	=> apt,
	}

	file { "/etc/apache2/apache2.conf":
		ensure  => present,
		notify 	=> Service["apache2"],
		mode    => '444',
		owner   => 'root',
		group   => 'root',
		source  => "puppet:///modules/apache2/apache2.conf",
		require => Package["apache2"],
	}

	service { "apache2":
		enable    => true,
		ensure    => running,
		subscribe => File["/etc/apache2/apache2.conf"],
		require   => [
						Package["apache2"],
		],
	}

	file {"/var/www/html/index.html":
		ensure => directory,
		recurse => true,
		mode => '0644',
		owner => 'root',
		group => 'root',
		source => "puppet:///modules/apache2/html/team1.html",
		require => Package["apache2"],
	}

	file { "/var/www/html/foo.html":
		ensure => directory,
		recurse => true,
		mode => '0644',
		owner => 'root',
		group => 'root',
		source => "puppet:///modules/apache2/html/foo.html",
		require => Package["apache2"],
	}
}
