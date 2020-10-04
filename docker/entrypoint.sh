#!/bin/sh
set -x

ROOTDIR=/opt/hannibal

sed -e "s/%HBASE_QUORUM%/${HANNIBAL_HBASE_QUORUM}/" \
    $ROOTDIR/conf/hbase-site.template.xml \
    >$ROOTDIR/conf/hbase-site.xml

/opt/hannibal/start $*
