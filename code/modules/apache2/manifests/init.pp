class apache2 {
	package { "apache2":
		ensure 		=> installed,
		provider	=> apt,
	}

	file { "/etc/apache2/apache2_config":
		ensure  => present,
		notify 	=> Service["apache2"]
		mode    => '444',
		owner   => 'root',
		group   => 'root',
		source  => "puppet:///modules/apache2/apache2_config",
		require => Package["apache2"],
	}

	service { "apache2":
		enable    => true,
		ensure    => running,
		subscribe => File["/etc/apache2/apache2_config"],
		require   => [
						Package["apache2"],
		],
	}

	file {"/var/www/html":
		ensure => directory,
		recurse => true,
		mode => '444',
		owner => 'root',
		group => 'root',
		source => "puppet:///modules/apache2/html/team1.html",
		require => Package["apache2"],
	}
}
