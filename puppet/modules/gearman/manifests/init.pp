class gearman {
    package { "gearmand":
        ensure => 'latest'
    }
    service { "gearmand":
        enable => true,
        ensure => running,
    }
}
