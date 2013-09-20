require 'formula'

class Jenkins < Formula
  homepage 'http://jenkins-ci.org'
  url 'http://mirrors.jenkins-ci.org/war/1.503/jenkins.war'
  sha1 'beda1c44cd4eaeb8c6c844155ad629e7aca1228a'
  version '1.503-boxen1'

  skip_clean :all

  def install
    libexec.install "jenkins.war"
  end

end
