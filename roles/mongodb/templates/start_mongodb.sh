#!/bin/bash
# Start mongodb

rm -f /data/mongodb/mongod.lock
#/usr/bin/numactl --interleave=all /build/mongodb/bin/mongod --dbpath=/data/mongodb/ --repair
#/usr/bin/numactl --interleave=all /build/mongodb/bin/mongod --journal  --setParameter enableLocalhostAuthBypass=0 --config /etc/mongo.conf  --rest --httpinterface &

### noauth ###
#/usr/bin/numactl --interleave=all /build/mongodb/bin/mongod --master --config /etc/mongo.conf  --rest --httpinterface &

### auth ###
/usr/bin/numactl --interleave=all /build/mongodb/bin/mongod --config /build/mongodb/mongo.conf  --rest --httpinterface &

