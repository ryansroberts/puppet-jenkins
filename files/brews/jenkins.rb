require "formula"

class Jenkins < Formula
  homepage "http://jenkins-ci.org"
  url "https://mirrors.jenkins-ci.org/war-stable/latest/jenkins.war"
  version "latest-boxen1"

  skip_clean :all

  def install
    libexec.install "jenkins.war"
    bin.write_jar_script libexec/"jenkins.war", "jenkins"
  end
end
