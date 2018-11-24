# dockrun

Simple scripts for interactive prompts within alpine docker container, and simple aliased removal of docker contaners.

## Create base container and add to PATH

1. Just build the Dockerfile in this repo as alpine-bash:

```
docker build -t alpine-bash .
```

2. Add the following to ~/.bashrc (Linux) or ~/.bash_profile (mac):

```
export PATH=/path/to/repo/bin:$PATH
```
