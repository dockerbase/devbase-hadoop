# VERSION 1.0
# DOCKER-VERSION  1.2.0
# AUTHOR:         Richard Lee <lifuzu@gmail.com>
# DESCRIPTION:    Devbase-hadoop Image Container

FROM dockerbase/devbase-scala

USER    root

# Run the build scripts
RUN     apt-get update && \
        apt-get install -y --no-install-recommends rsync && \
        apt-get clean

# Intall hadoop
RUN     cd /tmp && \
        curl -O -L http://apache.spinellicreations.com/hadoop/common/hadoop-2.5.1/hadoop-2.5.1.tar.gz && \
        tar -zxf /tmp/hadoop-2.5.1.tar.gz && \
        mv /tmp/hadoop-2.5.1 /usr/local/hadoop-2.5.1 && \
        ln -s /usr/local/hadoop-2.5.1 /usr/local/hadoop && \
        rm -rf /tmp/* /var/tmp/*

ENV     HADOOP_HOME /usr/local/hadoop
ENV     PATH $PATH:$HADOOP_HOME/bin


# Intall hive
RUN     cd /tmp && \
        curl -O -L http://www.dsgnwrld.com/am/hive/hive-0.13.1/apache-hive-0.13.1-bin.tar.gz && \
        tar -zxf /tmp/apache-hive-0.13.1-bin.tar.gz && \
        mv /tmp/apache-hive-0.13.1-bin /usr/local/hive-0.13.1 && \
        ln -s /usr/local/hive-0.13.1 /usr/local/hive && \
        rm -rf /tmp/* /var/tmp/*

ENV     HIVE_HOME /usr/local/hive
ENV     PATH $PATH:$HIVE_HOME/bin

USER    devbase

# Set environment variables.
ENV     HOME /home/devbase

# Define working directory.
WORKDIR /home/devbase
