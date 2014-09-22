# VERSION 1.0
# DOCKER-VERSION  1.2.0
# AUTHOR:         Richard Lee <lifuzu@gmail.com>
# DESCRIPTION:    Devbase-hadoop Image Container

FROM dockerbase/devbase-scala

ENV LC_ALL C
ENV DEBIAN_FRONTEND noninteractive

USER    root

# Run the build scripts
RUN     apt-get update

RUN     apt-get install -y --no-install-recommends rsync

# Clean up system
RUN     apt-get clean

# Information Of Package
ENV     PKG_ALIAS hadoop
ENV     PKG_VERSION $PKG_ALIAS-2.5.1
ENV     PKG_PACKAGE $PKG_VERSION.tar.gz
ENV     PKG_LINK http://apache.spinellicreations.com/hadoop/common/hadoop-2.5.1/$PKG_PACKAGE

# Intall scala
RUN     cd /tmp && \
        curl -O -L $PKG_LINK && \
        tar -zxf /tmp/$PKG_PACKAGE && \
        mv /tmp/$PKG_VERSION /usr/local/$PKG_VERSION && \
        ln -s /usr/local/$PKG_VERSION /usr/local/$PKG_ALIAS

ENV     HADOOP_HOME /usr/local/$PKG_ALIAS
ENV     PATH $PATH:$HADOOP_HOME/bin


# Information Of Package
ENV     PKG_ALIAS hive
ENV	PKG_VERSION $PKG_ALIAS-0.13.1
ENV	PKG_PACKAGE apache-$PKG_VERSION-bin.tar.gz
ENV	PKG_LINK http://www.dsgnwrld.com/am/hive/hive-0.13.1/$PKG_PACKAGE

# Intall sbt
RUN     cd /tmp && \
        curl -O -L $PKG_LINK && \
        tar -zxf /tmp/$PKG_PACKAGE && \
        mv /tmp/apache-$PKG_VERSION-bin /usr/local/$PKG_VERSION && \
        ln -s /usr/local/$PKG_VERSION /usr/local/$PKG_ALIAS

ENV     HIVE_HOME /usr/local/$PKG_ALIAS
ENV     PATH $PATH:$HIVE_HOME/bin

# Run the build scripts
RUN     rm -rf /tmp/* /var/tmp/*

USER    devbase

# Set environment variables.
ENV     HOME /home/devbase

# Define working directory.
WORKDIR /home/devbase

# Define default command.
CMD ["bash"]
