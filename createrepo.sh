#!/usr/bin/env bash

# Taken from: https://unix.stackexchange.com/questions/259640/how-to-use-yum-to-get-all-rpms-required-for-offline-use

# Install the stuff you need and make a place to put the downloaded RPMs:
SHIBB_DIR=/var/tmp/shibboleth
if [ -d $SHIBB_DIR ]; then
  rm -fr $SHIBB_DIR
fi
mkdir $SHIBB_DIR
mkdir $SHIBB_DIR/shibboleth-installroot
 
# Fetch the needed RPM's, some may be unnecessary but this should make the install complete
yum -y install --downloadonly --installroot=$SHIBB_DIR/shibboleth-installroot --releasever=7 --downloaddir=$SHIBB_DIR shibboleth
 
# Generate the metadata needed to turn our new pile of RPMs into a YUM repo and clean up the stuff we no longer need:
createrepo --database $SHIBB_DIR
rm -rf $SHIBB_DIR/shibboleth-installroot

# Package
tar -cvjf /var/tmp/shibboleth.tar.bz2 $SHIBB_DIR 
 
