Docker Node Yarn Chrome Xvfb
============================

Docker image which has installed the following:
- Node
- Yarn
- Chrome
- Xvfb (for Protractor)

Also see [Docker Hub](https://hub.docker.com/r/voles/node-yarn-chrome-xvfb/).

# Pushing a new version to Docker Hub

$ ID=$(docker build -q -t voles/node-yarn-chrome-xvfb:59.0.3071.86-1 .)
$ docker tag $ID voles/node-yarn-chrome-xvfb:59.0.3071.86-1
$ docker tag $ID voles/node-yarn-chrome-xvfb:latest

$ docker push voles/node-yarn-chrome-xvfb:59.0.3071.86-1
$ docker push voles/node-yarn-chrome-xvfb:latest

Note: we're using the same version number of Chrome for the Docker tag
