node default {
			 include stdlib
  			 class {'figlet_motd': motdText => "This is not the motd you are looking for."} 
}
