# graphicsmagick

The Bubblewrap tool, packaged in a docker container.

See https://github.com/GoogleChromeLabs/bubblewrap for more informations about Bubblewrap.

You must read, understand and accept the Android SDK license before using this tool: https://developer.android.com/studio/terms

## Prerequisites

podman or docker are needed.

I tested these scripts on CentOS Stream release 8 with podman.

If you use docker, replace docker=podman with docker=docker in the Makefile.

## Installation

Before of all, as this tool downloads and uses the Android SDK, you must read, understand and accept the Android SDK license: https://developer.android.com/studio/terms

Then:

```sh
git clone git@github.com:marcoparrone/bubblewrap.git
cd bubblewrap
make
```

## Usage

Add in your ~/.bash_aliases or in your ~/.bashrc:

```sh
alias bubblewrap='podman run --rm -it -v .:/root/workdir -v ~/secret:/root/secret -w /root/workdir marcoparrone/bubblewrap bubblewrap'
```

then, after reloading the file, run the bubblewrap command, for example:

```sh
bubblewrap init --manifest=https://notes.marcoparrone.com/manifest.json
...
bubblewrap build
```
