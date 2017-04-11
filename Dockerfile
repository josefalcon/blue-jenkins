FROM jenkins:latest

USER root

RUN apt-get -qq update \
   && apt-get -qq -y install \
   curl

RUN curl -sSL https://get.docker.com/ | sh

RUN usermod -a -G staff,docker jenkins

RUN install-plugins.sh antisamy-markup-formatter matrix-auth pipeline-model-definition blueocean:1.0.0

USER jenkins

RUN mkdir -p /var/jenkins_home
