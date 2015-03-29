# jenkins-cluster-with-docker
Simple Jenkins swarm cluster built on top of Docker.

Steps:
* Install Docker and Docker compose following [these instructions](https://docs.docker.com/compose/install/)
* docker-compose build
* docker-compose up

Jenkins will be available on port 8080. If you're running on Mac and using boot2docker, you need to access the virtual machine on port 8080 instead.

### Plugins
You can customize the Jenkins plugins by modifying the [plugins file](https://github.com/claudiu-coman/jenkins-cluster-with-docker/blob/master/jenkins-master/plugins.txt).
