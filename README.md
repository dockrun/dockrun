# dockrun

Simple scripts for running commands within alpine docker container, and simple aliased removal of docker images.

--------

## Dependencies

dockrun depends on:

- Docker
- sed
- awk
- Bash

Following are some dependency installation requirements for some platforms.

### macOS

- Docker for Mac

### Windows

- Docker for Windows configured for Linux containers
- A WSL environment containing GNU coreutils (tested with Ubuntu within WSL)

### Linux

- Docker
- GNU coreutils

## Install

```
make install
dockrun -h
```

## Uninstall

```
make uninstall
# If you wish to remove all images created by dockrun
make purge
```
-------

[![asciicast](https://asciinema.org/a/s2wGUOepq4gjrt73ZRzQ9p7o4.svg)](https://asciinema.org/a/s2wGUOepq4gjrt73ZRzQ9p7o4)

## Usage examples

Run a simple command in container:

```
dockrun command [command arguments]
```

Run a simple command in container, but specify another name of the package to install:

```
dockrun -p package command [command arguments]
```

Run a simple command in container, but specify requirements to install from requirements file:

```
dockrun -r requirements.txt command [command arguments]
```

Remove the image associated with certain command:

```
dockrm command
```

