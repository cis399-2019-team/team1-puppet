node ip-10-0-1-154 {
	include puppet
	include sshd
	include apache2
	include user
	include php
	include mysql
}

node ip-10-0-1-84 {
	include puppet
	include sshd
	include apache2
	include user
	include php
	include mysql
}
#ip-10-0-1-84.us-west-2.compute.internal
