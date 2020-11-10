ps -ef |grep -i yb-master |grep -v grep  |kill -9 `awk '{print $2}'`
ps -ef |grep -i yb-tserver |grep -v grep  |kill -9 `awk '{print $2}'`
