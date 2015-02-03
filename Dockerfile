# VERSION 1.1
# DOCKER-VERSION  1.2.0
# AUTHOR:         Richard Lee <lifuzu@gmail.com>
# DESCRIPTION:    Devbase-hadoop Image Container

FROM dockerbase/devbase-scala

USER    root

# Run dockerbase script
ADD     devbase-hadoop.sh /dockerbase/
RUN     /dockerbase/devbase-hadoop.sh

# Run dockerbase script
ADD     hadoop.sh /dockerbase/
RUN     /dockerbase/hadoop.sh

ENV     HADOOP_HOME /usr/local/hadoop
ENV     PATH $PATH:$HADOOP_HOME/bin

# Run dockerbase script
ADD     hive.sh /dockerbase/
RUN     /dockerbase/hive.sh

ENV     HIVE_HOME /usr/local/hive
ENV     PATH $PATH:$HIVE_HOME/bin

USER    devbase

# Set environment variables.
ENV     HOME /home/devbase

# Define working directory.
WORKDIR /home/devbase
