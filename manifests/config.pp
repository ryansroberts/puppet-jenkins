class jenkins::config {
  require boxen::config
  require homebrew::config

  $configdir   ="${boxen::config::configdir}/jenkins"
  $configfile  = "${configdir}/jenkinsd.conf"
  $datadir     = "${boxen::config::datadir}/jenkins"
  $warfile     = "${homebrew::config::installdir}/opt/jenkins/libexec/jenkins.war"
  $logdir      = "${boxen::config::logdir}/jenkins"
  $logfile     = "${logdir}/jenkins.log"
  $consolefile = "${logdir}/console.log"
  $port        = 18080
}