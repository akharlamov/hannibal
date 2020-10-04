#!/bin/sh
set -x

ROOTDIR=/opt/hannibal

sed -e "s/%HBASE_QUORUM%/${HANNIBAL_HBASE_QUORUM}/" \
    -e "s/%HBASE_INFO_PORT%/${HANNIBAL_HBASE_INFO_PORT}/" \
    $ROOTDIR/conf/hbase-site.template.xml \
    >$ROOTDIR/conf/hbase-site.xml

/opt/hannibal/start $*
