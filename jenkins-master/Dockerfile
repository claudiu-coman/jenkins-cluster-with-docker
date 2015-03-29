FROM csanchez/jenkins-swarm
MAINTAINER Claudiu Coman <claud.coman@gmail.com>

COPY plugins.txt plugins.txt
COPY plugins.sh plugins.sh
RUN ./plugins.sh plugins.txt
