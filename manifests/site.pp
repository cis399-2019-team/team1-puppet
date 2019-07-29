node ip-10-0-1-154 {
	include puppet
	include sshd
	include apache2
	include account
}

node ip-10-0-1-84 {
	include puppet
	include sshd
	include apache2
	include account
}
