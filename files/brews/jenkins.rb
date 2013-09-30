require 'formula'

class Jenkins < Formula
  homepage 'http://jenkins-ci.org'
  url 'http://mirrors.jenkins-ci.org/war-stable/1.509.3/jenkins.war'
  sha1 'a305d42e62b4daa8f2a6196371dfe389c75a7e22'
  version '1.503-boxen2'

  skip_clean :all

  def install
    libexec.install "jenkins.war"
  end

end
