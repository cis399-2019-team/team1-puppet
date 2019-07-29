node ip-10-0-1-154 {
	include puppet
	include sshd
	include apache2
	include user
}

node ip-10-0-1-84 {
	include puppet
	include sshd
	include apache2
	include user
}
#ip-10-0-1-84.us-west-2.compute.internal
