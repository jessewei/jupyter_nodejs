[![Docker Stars](https://img.shields.io/docker/stars/jessewei/jupyter_nodejs.svg?style=flat-square)](https://hub.docker.com/r/jessewei/jupyter_nodejs/)
[![Docker Pulls](https://img.shields.io/docker/pulls/jessewei/jupyter_nodejs.svg?style=flat-square)](https://hub.docker.com/r/jessewei/jupyter_nodejs/)

# jupyter with multiple engine support 
This repository is jupyter for data science

This one contain feature is many programing language kernel , IPython3 (python2.7.9), IJulia, IRkernel, IGo, IScala, Bash, Redis kernel, IJavascript.
Distribution of python is anaconda-2.1.0, this distribution is the latest version of using python2.

## Description
### Installation :

    brew install docker boot2docker
    boot2docker init
    boot2docker up
# export boot2docker path
    docker build "your docker image name" .

### Run by name

1. Run by name
    ``` 
    docker run --name nb -d -v /c/Users/yourName/workspace:/notebooks/workspace -p 8889:8888  jessewei/jupyter_nodejs
    ```
    
2. Start/Stop/Remove container    
    ``` 
    docker start nb
    docker stop nb
    docker rm nb    
    ```
    
### Run   
    
    
    ```
    docker run -d -p $JUPYTER_PORT:8888 "your docker image name"
    ```
    
    # if you want to mount work-directory on host machine, add below option
    # -v <work-directory on host machine>:<mount point on docker image>

### Go to:

    http://$DOCKER_HOST:$JUPYTER_PORT

JUPYTER_PORT is your setting for going to jupyter. DOCKER_HOST is ip address of your boot2docker-vm.
