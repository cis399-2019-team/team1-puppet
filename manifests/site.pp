node ip-10-0-1-84 {
	include puppet
	include sshd
}
node ip-10-0-1-154 {
	include puppet
	include sshd
}

# # update /etc/puppet and run "puppet apply":
# class puppet {
# 	cron { "puppet apply":
# 		command => "cd /etc/puppet && git pull -q origin master && puppet apply manifests/site.pp",
# 		user    => root,
# 		minute  => "*/5",
# 	}
# }

# class sshd {
# 	package {
# 		"openssh-server": ensure => installed;
# 	}

# 	file { "/etc/ssh/sshd_config":
# 		source	=> "puppet:///modules/sshd/sshd_config",
# 		mode		=> "444",
# 		owner 	=> "root",
# 		group		=> "root",
# 		# package must be installed before configuration file
# 		require	=> Package["openssh-server"],
# 	}
	
# 	service { "ssh":
# 		enable	=> true,
# 		ensure	=> running,
# 		subscribe	=> File["/etc/ssh/sshd_config"],
# 	}

# 	ssh_authorized_key { "karmstr7_1":
# 		type		=> 'ssh-rsa',
# 		user 		=> "ubuntu",
# 		ensure 	=> present,
# 		key 		=> "AAAAB3NzaC1yc2EAAAADAQABAAABAQCZ0cVjjAK0aUyHcnWCmeBaCtHZGSmXsjiy2ZxLMDdHY5lG4aXUH2R3smNuOO6/iR+hlpZJe4EXL1qBfa1hsIeA1dp0qtIVXJVO6nBEhGJFa+2VMGlAH1N/5JDmD5z7eN8EA7tps5JGNx3TAZsLqdElLAvpZ0o92YjY0n+YJ2GWfy32DB3GpDTU7N44whHet1nNv0owGlyP5fq3FIy0ZQH8UvjHqPnaekDpLL4ji9xCWQ/HFTGDpayYLYbTW7F8pdHtRiSg8BZ0Y1C2FrFfUFh0Q7gsM1UDq4yQzm7MjziKA9UUQO27ViJfk3vGf2byz+oQjTCCZXT+g5sv7LSKowil",
# 	}

# 	ssh_authorized_key { "manhimf_key":
# 		type		=> 'ssh-rsa',
# 		user   => "ubuntu",
# 		ensure => present,
# 		key    => "AAAAB3NzaC1yc2EAAAADAQABAAABAQC7gX4g8t3LJojLJKNPUnfb9hcSo+GJzkzriJsN56Rsft3Xz65WXvJTE22ujP9HLOLhT353MsNfEuOTgIeg1r4V2RRRRngF2DOXlMNo9uTa2RHWw2a4jJGFvfN19rdCaeC5jWPrirc2J4z4zwygRYkcZhSiQPJHzZNZH6tP3qlKrJSBypx8H8cxwcqGMKFWS21Tfhywv/KN5xsu2VuwI71DNcQeEIi7sDkYJ33mKE8NpNUNn3tW1Y1/rlqN21WJJNsqEEFb/ogNtUGPdySgfDyJk3i41QSEadyLp9ea8+wOG5KY2iudhxK4GDUNpRI030hh2Rg0OMESWY3sFF2LHbbL", 
# 	}
	
# }
