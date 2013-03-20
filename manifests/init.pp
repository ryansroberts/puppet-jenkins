class jenkins {
  include jenkins::config
  include homebrew

  file { [
    $jenkins::config::configdir,
    $jenkins::config::logdir
  ]:
    ensure => directory,
  }

  homebrew::formula { 'jenkins':
    before => Package['boxen/brews/jenkins']
  }

  package { 'boxen/brews/jenkins':
    ensure => '1.502-boxen1',
    notify => Service['dev.jenkins']
  }

  file { '/Library/LaunchDaemons/dev.jenkins.plist':
    content => template('jenkins/dev.jenkins.plist.erb'),
    group   => 'wheel',
    notify  => Service['dev.jenkins'],
    owner   => 'root',
  }

  service { 'dev.jenkins':
    ensure => running,
  }
}