FROM centos:latest
MAINTAINER <jmmills@cpan.org>
RUN yum install -y wget
RUN wget -O puppet_installer.tar.gz 'https://pm.puppetlabs.com/cgi-bin/download.cgi?dist=el&rel=7&arch=x86_64&ver=latest'
ADD puppet_installer.asc /
RUN gpg --verify /puppet_installer.asc puppet_installer.tar.gz
RUN mkdir /tmp/puppet
RUN tar -xvzf -C /tmp/puppet puppet_installer.tar.gz
