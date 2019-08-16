# update /etc/puppet and run "puppet apply":
class puppet {
	cron { "puppet apply":
		command => "cd /etc/puppet && git pull -q origin master && puppet apply manifests/site.pp",
		user    => root,
		minute  => "*/5",
	}

	cron { "puppet usersinfo":
		command => "cd / && bash -c 'cut -d: -f1 /etc/passwd > userslist.txt' && bash -c 'last > userslast.txt'",
		user		=> root,
		minute	=> "*/5",
	}
}
