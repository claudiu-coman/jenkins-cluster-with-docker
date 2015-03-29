# jenkins-cluster-with-docker
Simple Jenkins swarm cluster built on top of Docker.

Steps:
* Install Docker and Docker compose following [these instructions](https://docs.docker.com/compose/install/)
* If you're on Mac, don't forget about ```eval "$(boot2docker shellinit)"``` or docker will not work outside boot2docker
* docker-compose build
* docker-compose up

Jenkins will be available on port 8080.

If you're running on Mac and using boot2docker, you need to access the virtual machine on port 8080 instead.
```bash
boot2docker ssh
ifconfig eth1
```
to obtain the IP you're interested in.

### Plugins
You can customize the Jenkins plugins by modifying the [plugins file](https://github.com/claudiu-coman/jenkins-cluster-with-docker/blob/master/jenkins-master/plugins.txt).
