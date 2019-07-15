# update /etc/puppet and run "puppet apply":
class puppet {
	cron { "puppet apply":
		ensure 	=> present,
		command => "cd /etc/puppet && git pull -q origin master && puppet apply manifests/site.pp",
		user    => root,
		minute  => "*/60",
	}
}
