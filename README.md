# dockrun

Simple scripts for interactive prompts within alpine docker container, and simple aliased removal of docker contaners.

## Installation

Create base container and add scripts to PATH.

1. Just build the Dockerfile in this repo as alpine-bash:

```
docker build -t alpine-bash .
```

2. Add the following to ~/.bashrc (Linux) or ~/.bash_profile (mac):

```
export PATH=/path/to/repo/bin:$PATH
```

## Usage

Create or start container of name NAME and get an interactive shell:

```
dockrun NAME
```

Remove said container:

```
dockrm NAME
```

## Removal

Just remove all containers created as well base image created earlier.

```
docker container rm NAME
docker rmi alpine-bash
```

