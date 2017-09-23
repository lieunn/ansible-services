#!/bin/bash
# Stop mongodb


#/usr/bin/numactl --interleave=all /build/mongodb/bin/mongod --dbpath=/data/mongodb/ --repair
#/usr/bin/numactl --interleave=all /build/mongodb/bin/mongod --journal  --setParameter enableLocalhostAuthBypass=0 --config /etc/mongo.conf  --rest --httpinterface &
/usr/bin/numactl --interleave=all /build/mongodb/bin/mongod --config /build/mongodb/mongo.conf  --shutdown
rm -f /data/mongodb/mongod.lock
