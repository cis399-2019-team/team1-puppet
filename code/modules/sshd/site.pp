class sshd {
	package { "openssh-server"':
		ensure => installed;
		before => [
            		File['/etc/ssh/sshd_config'],
            		File['/home/ubuntu/.ssh/authorized_keys'],
	}

	file{ "/etc/ssh/sshd_config":
		ensure	=> present,
		mode	=> '444',
		owner	=> 'root',
		group	=> 'root',
		source	=> "puppet:///modules/sshd/sshd_config",
		require => Package["openssh-server"],
	}
	service { "ssh":
		enable	=> true,
		ensure	=> running,
		subscribe => File["/etc/ssh/sshd_config"],
	}
	ssh_authorized_key { "manhimf_key":
		user   => "ubuntu",
		ensure => present,
		key    => "AAAAB3NzaC1yc2EAAAADAQABAAABAQC7gX4g8t3LJojLJKNPUnfb9hcSo+GJzkzriJsN56Rsft3Xz65WXvJTE22ujP9HLOLhT353MsNfEuOTgIeg1r4V2RRRRngF2DOXlMNo9uTa2RHWw2a4jJGFvfN19rdCaeC5jWPrirc2J4z4zwygRYkcZhSiQPJHzZNZH6tP3qlKrJSBypx8H8cxwcqGMKFWS21Tfhywv/KN5xsu2VuwI71DNcQeEIi7sDkYJ33mKE8NpNUNn3tW1Y1/rlqN21WJJNsqEEFb/ogNtUGPdySgfDyJk3i41QSEadyLp9ea8+wOG5KY2iudhxK4GDUNpRI030hh2Rg0OMESWY3sFF2LHbbL", 
	}
}
