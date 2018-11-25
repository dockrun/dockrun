# dockrun

Simple scripts for running commands within alpine docker container, and simple aliased removal of docker images.

## Install

```
make install
```

## Usage

Run a command in container

```
dockrun command [command arguments]
```

Remove the image associated with certain command.

```
dockrm command
```

## Uninstall

```
make uninstall
# If you wish to remove all images created by dockrun
make purge
```

