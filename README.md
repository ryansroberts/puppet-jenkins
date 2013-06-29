# Jenkins Puppet Module for Boxen

[![Build Status](https://travis-ci.org/boxen/puppet-jenkins.png?branch=master)](https://travis-ci.org/boxen/puppet-jenkins)

This installs the [Jenkins CI-server](http://jenkins-ci.org) on your machine.

## Usage

```puppet
include jenkins
```

Browse to [http://jenkins.dev](http://jenkins.dev).

## Required Puppet Modules

* `boxen`
* `homebrew`
* `nginx`

## Environment

Once installed, you can access the following variables in your environment, projects, etc:

* BOXEN_JENKINS_PORT: The port on which Jenkins listens
* BOXEN_JENKINS_HOME: The Jenkins home-directory
