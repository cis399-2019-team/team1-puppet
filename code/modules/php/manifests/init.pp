class php {
  package { "php":
		ensure		=> installed,
		provider	=> apt,
	}

	package { "libapache2-mod-php":
		ensure 		=> installed,
		provider 	=> apt,
	}

	package { "php-mysql":
		ensure 		=> installed,
		provider 	=> apt,
	}

	file {"/etc/php/7.3/cli/php.ini":
		ensure 		=> present,
		source		=> "puppet:///modules/php/php.ini",
		require		=> Package["php"],
	}
}
