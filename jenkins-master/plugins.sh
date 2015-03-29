#! /bin/bash

# Parse a support-core plugin -style txt file as specification for jenkins plugins to be installed
# in the reference directory, so user can define a derived Docker image with just :
# 
# FROM jenkins
# COPY plugins.txt /plugins.txt
# RUN /usr/local/bin/plugins.sh /plugins.txt
# 

# Did not make JENKINS_UC https://updates.jenkins-ci.org becase this sometimes
# times out when it redirects to http://mirrors.clinkerhq.com
JENKINS_UC=http://jenkins.mirror.isppower.de

REF=/usr/share/jenkins/ref/plugins
mkdir -p $REF

while read spec; do
    plugin=(${spec//:/ }); 
    [[ ${plugin[0]} =~ ^# ]] && continue
    [[ ${plugin[0]} =~ ^\s*$ ]] && continue
    curl -L ${JENKINS_UC}/plugins/${plugin[0]}/${plugin[1]}/${plugin[0]}.hpi -o $REF/${plugin[0]}.hpi;
done  < $1