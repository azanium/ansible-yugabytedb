#!/usr/bin/env bash

/var/lib/yugadb/2.2.2.0/bin/yb-master --flagfile /var/lib/yugadb/2.2.2.0/conf/master.conf >& /data/yugadb/log/yb-master.out &
pidof yb-master
