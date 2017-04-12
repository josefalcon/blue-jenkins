# blue-jenkins
Dockerfile for running Jenkins Blue Ocean in a container

## What's Included

- git
- git-lfs
- docker
- docker-compose

## Running

Note: The Jenkins container needs access to `docker.sock` to run docker commands in build pipelines.

```sh
$ docker build -t blue-jenkins .
$ docker run -d -v /var/run/docker.sock:/run/docker.sock -v /var/jenkins_home:/var/jenkins_home -p 80:8080 blue-jenkins
```
