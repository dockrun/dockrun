# dockrun

Simple scripts for running commands within alpine docker container, and simple aliased removal of docker images.

## Install

```
make install
dockrun -h
```

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

## Uninstall

```
make uninstall
# If you wish to remove all images created by dockrun
make purge
```

