class account {

#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  user { 'stevev':
          ensure      => present,
          home        => '/home/stevev',
          comment     => 'Steve VanDevender',
          groups      => 'cis399',
          shell       => '/bin/bash',
          managehome  => true,
  }
  ssh_authorized_key { "stevev_key":
		type => "ssh-ed25519",
		user => "stevev",
		key => "AAAAC3NzaC1lZDI1NTE5AAAAILBL3wWzbtQXl6V3saF13p5TM1mdhyrYQZYOqTLw2RT8",
	}

#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  user { 'jerry':
          ensure      => present,
          home        => '/home/jerry',
          comment     => 'Jerry',
          groups      => 'cis399',
          shell       => '/bin/bash',
          managehome  => true,
  }
  ssh_authorized_key { "jerry_key":
		type => "ssh-rsa",
		user => "jerry",
		key => "AAAAB3NzaC1yc2EAAAADAQABAAACAQC1UoDoKsyxL2O6Ugw2WUr7FxupWnuDI7r23sDCoGQHWW60BzHJUR1ZqTk+qdqA7UuInHj/rn6jSoEV2N/jw/cMNb3GKF9cpVnHnXXnf0dwBtKEH0J4IHD/koZZqc88iUqb9fMZ8YlOSDrIakwAuryFK8bhgDmWqZOGZlPZn9WYkMuLIY4ICwqpr3Snes25N1Mac4hKHY3Y8jTsQLQUm478Kx+m4jnpt85Ymfbvzf6LrleNzNppFwA3mWPcpa9T4qhnlpx789k71j5MboAmK5fUQeFxwwcV04/MO8zcZhjqpYAo7noLh6KopwErDYni6LEkNxwOJvjHZIa1dLKJ1jwSodvjDJV2+tDpppdLWD4XSnA21cZq2BD2Sx0uifv9N8TlAbGcvQasJOMiNXfJ3M6m2UQWMMQ3HlXviko7NzNj925CHz+rBIlVhJmt5d6NsvpIiI8D/hQC0ugclLVDZ6jHrCBu9MdB60cZEbzXP6+h9xltapmw5ikF05SuvKP7Mskor5twLoyq59NQi2iTcFzkQOLDzNzi557EquEQNC4yxzdNr9ZmtepVu2fOuY+djq+UKXp9KuLsAfC6sfjBckb5uZCFYEw+LYZMYJwduyPMIUuP/09ffNWzfptYNa2tZ1FPRtcm9GdjlsCufFoXir3cee25T329HTLcPIfxFKx5GQ==",
	}

#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  user { 'mapu':
          ensure      => present,
          home        => '/home/mapu',
          comment     => 'Mapu',
          groups      => 'cis399',
          shell       => '/bin/bash',
          managehome  => true,
  }
  ssh_authorized_key { "mapu_key":
		type => "ssh-rsa",
		user => "mapu",
		key => "AAAAB3NzaC1yc2EAAAADAQABAAABAQDHfT9V5ERJ9sGiPwqijec52HiaEKxKoPuW2ehz8Te2g/cBAHWi8jQz8X+KvEb/Nqmv0Q29N1WkUWzGAjjRQP9Cyhe5NN2DVTD5FjX9W8YFoMxHBIBAvK68I1PTSYrkh7A6UtfsRx0bxg/uEfjRzstU+D0mg7T+x6ysuMjs6+HVXVNAj+Qr0NAkaMnMoYFlUP62/jCyiH8xliyW4pk65tNbLLDxD4i1631F4WiWfdSZgX3ZHwA7QgMpaEoRa9Pgee6NpzUBHgyWei9XKEnhfsIZtrx9wIJ824wnqOVqx6XkG8CCGipWyTy50xX5X/YG1YMknotRFvv8/cLar/Tdw5lj",
	}

#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  user { 'henzi':
          ensure      => present,
          home        => '/home/henzi',
          comment     => 'Henzi',
          groups      => 'cis399',
          shell       => '/bin/bash',
          managehome  => true,
  }
  ssh_authorized_key { "henzi_key":
		type => "ssh-rsa",
		user => "henzi",
		key => "AAAAB3NzaC1yc2EAAAADAQABAAABAQCZ0cVjjAK0aUyHcnWCmeBaCtHZGSmXsjiy2ZxLMDdHY5lG4aXUH2R3smNuOO6/iR+hlpZJe4EXL1qBfa1hsIeA1dp0qtIVXJVO6nBEhGJFa+2VMGlAH1N/5JDmD5z7eN8EA7tps5JGNx3TAZsLqdElLAvpZ0o92YjY0n+YJ2GWfy32DB3GpDTU7N44whHet1nNv0owGlyP5fq3FIy0ZQH8UvjHqPnaekDpLL4ji9xCWQ/HFTGDpayYLYbTW7F8pdHtRiSg8BZ0Y1C2FrFfUFh0Q7gsM1UDq4yQzm7MjziKA9UUQO27ViJfk3vGf2byz+oQjTCCZXT+g5sv7LSKowil",
	}

#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  user { 'owen':
          ensure      => present,
          home        => '/home/owen',
          comment     => 'Owen',
          groups      => 'cis399',
          shell       => '/bin/bash',
          managehome  => true,
  }
  ssh_authorized_key { "owen_key":
		type => "ssh-rsa",
		user => "owen",
		key => "AAAAB3NzaC1yc2EAAAADAQABAAABAQDCxtgnXB0yhKhxicNB8/qizjY398qG/eLlFUaQW0JKRTxmeJWn15hU2vcVf/i7U3l7e9n+eHuvH4mnMv0fmtWzx31s3ZfkOpzTq7jezwdmq80vLEL4ah4wpmZryS87dv8iRdGc61k788bWdmbQsUScYyuD/Ppfc9Q9wFDjJalbghm1mwoSTZ7XxDYcV5vZKFl9cNH51X2TzW54Pq6s5Z73KXJnGJYB5fhHtIgMJF8t2aPPF0ER2hhIEEU+zOhLM0cj3Ll+LLUD1YtKYcURvRkt7iJKyencxU9fqT8nfJPvjm9t1elrz5bSR4Xk+Pod8PT1qKFzaOjsLYk7lJZ9yO/9",
	}

#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  user { 'james':
          ensure      => present,
          home        => '/home/james',
          comment     => 'James',
          groups      => 'cis399',
          shell       => '/bin/bash',
          managehome  => true,
  }
  ssh_authorized_key { "james_key":
		type => "ssh-rsa",
		user => "james",
		key => "AAAAB3NzaC1yc2EAAAADAQABAAABAQCzSNNImosRQCP8ZhmMjYjAc1izGRdZjzwCverTNYTEfhrjN+GysTjCOsRgPQY0wPwlXmJbD4+dNw+NTOOmsWzg9HF8sKmsuuyLAjwP0L3brlDA0Il+K7OuRiYvialOoi26LQfYz+Pltdzfk5XjoOfrgcFcRvjMe0esSAdHszoz08chXviUDqeoivWjBcfAXLHJ+TZBOqzxum0BYEN2M8PYwsuWlsqiPsda3wtog6yrlUo/5GjpS2Pr2D5emGvC57J4Faz8ZI1BmpHNFV+q5NBUpKDo6pi+OHJqdG/WulRSoQczte8RUylp7K4V7VLfuhnt0R8hZNMwna64IXQBc/NN",
	}

#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  user { 'rico':
          ensure      => present,
          home        => '/home/rico',
          comment     => 'Rico',
          groups      => 'cis399',
          shell       => '/bin/bash',
          managehome  => true,
  }
  ssh_authorized_key { "rico_key":
		type => "ssh-rsa",
		user => "rico",
		key => "AAAAB3NzaC1yc2EAAAADAQABAAABAQDHfT9V5ERJ9sGiPwqijec52HiaEKxKoPuW2ehz8Te2g/cBAHWi8jQz8X+KvEb/Nqmv0Q29N1WkUWzGAjjRQP9Cyhe5NN2DVTD5FjX9W8YFoMxHBIBAvK68I1PTSYrkh7A6UtfsRx0bxg/uEfjRzstU+D0mg7T+x6ysuMjs6+HVXVNAj+Qr0NAkaMnMoYFlUP62/jCyiH8xliyW4pk65tNbLLDxD4i1631F4WiWfdSZgX3ZHwA7QgMpaEoRa9Pgee6NpzUBHgyWei9XKEnhfsIZtrx9wIJ824wnqOVqx6XkG8CCGipWyTy50xX5X/YG1YMknotRFvv8/cLar/Tdw5lj",
	}

#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  user { 'kylie':
          ensure      => present,
          home        => '/home/kylie',
          comment     => 'Kylie',
          groups      => 'cis399',
          shell       => '/bin/bash',
          managehome  => true,
  }
  ssh_authorized_key { "kylie_key":
		type => "ssh-rsa",
		user => "kylie",
		key => "AAAAB3NzaC1yc2EAAAADQABAAACAQC0xRdANCXlcVQpGhqEv0R3064pKetQfZ73H+uiOVov2Amk1fBycgcmlcp0wimF6i6RGRNachdLLub6lBrb1VWh861BmeRB9W1Ge42jZQMYR4iNOj2XpHPIm2K2NMer+2kaQhr0BKrI6z3L4VRTEjR9+hTVMBzhaWv2rX9V+cX+rYGOnTkMgpKIWQMQsSlsexGcePaDDSlnR4VLVW+Csu8YxUv6umie0s0E09ItLceCQEWnrbK+uQJnpmDcC9xqscKxGLLzvZ/xYralhXkmEek3MhlzLR8dR+wsGJD4G5dMze0luXis+xnKKAL+QQQ791gszA3NFZ4RQK0c+Kw1A78CiiqGaFtVJ1BYHJ0ZuHcPQE7iloAzzhuWVbXMFoNKwtWNj5iiv3IjFtNg/bHXtWEkESFirvlmJr5buy5DfRB7iervxLtps6GD2Y7ePltoa44nbThnvxBnu5JSzjnPMQer0ORLvwzRETDCzEZ5m5UW+HqZCjOnB9dSG9w2bOu8l2rFWuf5Ul+MXf2u/RDRA9ucaSpTNbUm/TPBXJNOj8R5F04fF/Q5AaIB8gXAnZk7bWXGCsOlY1UbNXA2mkydH+jZsgI6D+Jn2EKiPIao1ONHd",
	}

#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  user { 'devin':
          ensure      => present,
          home        => '/home/devin',
          comment     => 'Devin',
          groups      => 'cis399',
          shell       => '/bin/bash',
          managehome  => true,
  }
  ssh_authorized_key { "devin_key":
		type => "ssh-rsa",
		user => "devin",
		key => "AAAAB3NzaC1yc2EAAAADAQABAAABAQCVnXtI1h5eDPlFLKaRJX971Jd/5V0AhEdxg13HpG7bRlS1/25xs8T7fbPNiUkyaewvWUxU9wFh/YDOhkLgivXH0XDx/Fmdl0e79XchbK/63xisuLEDf/6mHBjo/1eS9iBjUEv/l/Q191hZPQab5mUabcVzsR8BHCvxtMg0MPeB73K/9C3EGHvctVjDiSx4cFc2LkQtlt4hJ2Itfg9730FgR2J5Mdj8cr9k+EbUxz0HzmJXVu6q8p4ASGVtoqK82VGRB7lQWAf2raJCyL0UXyQ1A1aVKivnG2voxPVIlEoG7GlFuRa87LO/bzRasQjCZVSD9sBHD+QxSWG16iyILPdv",
	}

#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  user { 'lucas':
          ensure      => present,
          home        => '/home/lucas',
          comment     => 'Lucas',
          groups      => 'cis399',
          shell       => '/bin/bash',
          managehome  => true,
  }
  ssh_authorized_key { "lucas_key":
		type => "ssh-rsa",
		user => "lucas",
		key => "AAAAB3NzaC1yc2EAAAADAQABAAABAQDB3DSqNr3YM9/B+mlVgmG+Q4n+Q2T8crk+F36CI43bB7kM+WeIEl3lJ279ExpI9y4KI/Yuh7eDWFgHriDB0xyq7IQnWvsKVhT4aWJv4Yrjde9UeD+NPUoRgbB8NScBWBUo+aI/VZAUVCg1xKyrxbcj89SBM1FrC8jZalz95VXR/rpJzSTQFN0c9KVZHfsCOBrGdAC9bbMES42Yqo5elnh7JfBsdqnYL+HHqkT7AyVcuqlBC4u+ZYoXmz5da4KyeyIEGFrDQM7h+dnyKQh1caRu7YyxmTvXA6OSjYE4rZtKQ9WZU02yB6o7CxEE/P8xa2mAZQEgUnjUmSXxRHFrobmX",
	}

#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
}
