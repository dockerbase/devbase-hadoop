# Information Of Package
HADOOP_VERSION=hadoop-2.6.0
HADOOP_PACKAGE=hadoop-2.6.0.tar.gz
HADOOP_LINK=http://apache.spinellicreations.com/hadoop/common/$HADOOP_VERSION/$HADOOP_PACKAGE

# Intall hadoop
cd /tmp && \
curl -O -L $HADOOP_LINK && \
tar -zxf /tmp/$HADOOP_PACKAGE -C /usr/local && \
ln -s /usr/local/$HADOOP_VERSION /usr/local/hadoop && \
rm -rf /tmp/* /var/tmp/*

