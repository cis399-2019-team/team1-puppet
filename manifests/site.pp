# update /etc/puppet and run "puppet apply":
node ip-10-0-1-84 {
  cron {"puppet apply":
    command => "cd /etc/puppet && git pull -q origin master && puppet apply manifests/site.pp",
    user => root,
    minute => "*/5",
  }
}

node ip-10-0-1-154 {
  cron {"puppet apply":
    command => "cd /etc/puppet && git pull -q origin master && puppet apply manifests/site.pp",
    user => root,
    minute => "*/5",
  }
}
