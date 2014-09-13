require 'formula'

class Jenkins < Formula
  homepage 'http://jenkins-ci.org'
  url 'https://s3.amazonaws.com/boxen-downloads/jenkins/1.565.2/jenkins.war'
  sha1 'f14b4479236df26b1b4fdd26c2256c296bab1a2e'
  version '1.565.2-boxen1'

  skip_clean :all

  def install
    libexec.install "jenkins.war"
  end

end
