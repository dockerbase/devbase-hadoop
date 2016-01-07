## Docker Base: Devbase-hadoop


This repository contains **Dockerbase** of [Devbase-hadoop](http://hadoop.apache.org/) for [Docker](https://www.docker.com/)'s [Dockerbase build](https://registry.hub.docker.com/u/dockerbase/devbase-hadoop/) published on the public [Docker Hub Registry](https://registry.hub.docker.com/).


### Depends on:

* [dockerbase/devbase-scala](https://registry.hub.docker.com/u/dockerbase/devbase-scala)


### Installation

1. Install [Docker](https://docs.docker.com/installation/).

2. Download [Dockerbase build](https://registry.hub.docker.com/u/dockerbase/devbase-hadoop/) from public [Docker Hub Registry](https://registry.hub.docker.com/): `docker pull dockerbase/devbase-hadoop`


### Usage

    docker run -it --rm [-v /home/devbase:/home/devbase] --name dockerbase-devbase-hadoop dockerbase/devbase-hadoop

### Components & Versions

    Description:	Ubuntu 14.04.1 LTS
    git version 1.9.1
    OpenSSH_6.6.1p1 Ubuntu-2ubuntu2, OpenSSL 1.0.1f 6 Jan 2014
    GNU Make 3.81
    Copyright (C) 2006  Free Software Foundation, Inc.
    This is free software; see the source for copying conditions.
    There is NO warranty; not even for MERCHANTABILITY or FITNESS FOR A
    PARTICULAR PURPOSE.
    
    This program built for x86_64-pc-linux-gnu
    javac 1.8.0_20
    java version "1.8.0_20"
    Java(TM) SE Runtime Environment (build 1.8.0_20-b26)
    Java HotSpot(TM) 64-Bit Server VM (build 25.20-b23, mixed mode)
    Hadoop 2.7.1
    Subversion https://git-wip-us.apache.org/repos/asf/hadoop.git -r 15ecc87ccf4a0228f35af08fc56de536e6ce657a
    Compiled by jenkins on 2015-06-29T06:04Z
    Compiled with protoc 2.5.0
    From source with checksum fc0a1a23fc1868e4d5ee7fa2b28a58a
    This command was run using /usr/local/hadoop-2.7.1/share/hadoop/common/hadoop-common-2.7.1.jar
    apache:hive:1.2.1:bin
