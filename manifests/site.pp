# update /etc/puppet and run "puppet apply":
node ip-10-0-1-84 {
	 include puppet 
	include sshd
}

node ip-10-0-1-154 {
	include puppet
	incldue sshd
}
