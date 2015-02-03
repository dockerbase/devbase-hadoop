# Information Of Package
HIVE_VERSION=hive-0.14.0
HIVE_FOLDER=apache-$HIVE_VERSION-bin
HIVE_PACKAGE=$HIVE_FOLDER.tar.gz
HIVE_LINK=http://download.nextag.com/apache/hive/$HIVE_VERSION/$HIVE_PACKAGE

# Intall hive
cd /tmp && \
curl -O -L $HIVE_LINK
tar -zxf /tmp/$HIVE_PACKAGE -C /usr/local && \
ln -s /usr/local/$HIVE_FOLDER /usr/local/hive && \
rm -rf /tmp/* /var/tmp/*
