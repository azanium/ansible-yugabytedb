#/bin/sh

/var/lib/yugadb/2.3.0.0/bin/yb-tserver --flagfile /var/lib/yugadb/2.3.0.0/conf/tserver.conf >& /data/yugadb/log/yb-tserver.out &
pidof yb-tserver
