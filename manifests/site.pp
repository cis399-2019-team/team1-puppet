node ip-10-0-1-84 {
	include puppet
	include sshd
}
node ip-10-0-1-154 {
	include puppet
	include sshd
}

# update /etc/puppet and run "puppet apply":
class puppet {
	cron { "puppet apply":
		command => "cd /etc/puppet && git pull -q origin master && puppet apply manifests/site.pp",
		user    => root,
		minute  => "*/5",
	}
}


