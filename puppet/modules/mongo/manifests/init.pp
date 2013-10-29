class mongo{
	package { 'mongodb':
		ensure => 'latest'
	}

	package { 'mongodb-server':
		ensure => 'latest'
	}

	file { '/data':
	    ensure  => directory,

	}

	service { "mongod":
        enable => true,
        ensure => running,
	}

	exec { 'install mongo':
		command => '/usr/bin/pecl install mongo',
	}
}
