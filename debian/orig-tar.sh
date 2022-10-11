#!/bin/sh

set -e

# called by uscan with '--upstream-version' <version> <file>
#VERSION=$(echo $2|tr "+" "-")
DIR=jrosetta-$2
TAR=../libjrosetta-java_$2.orig.tar.bz2

# clean up the upstream tarball
unzip $3
# test fail in a vm
rm -rf __MACOSX $DIR/modules/jrosetta-engine/src/main/java/com/artenum/rosetta/test/TestConsoleHistoryPerformance.java
tar -c -j -f $TAR $DIR
rm -rf $DIR $3

# move to directory 'tarballs'
if [ -r .svn/deb-layout ]; then
    . .svn/deb-layout
    mv $TAR $origDir
    echo "moved $TAR to $origDir"
fi

exit 0
