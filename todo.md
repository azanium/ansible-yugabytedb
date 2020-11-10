- jenkins paramter
  - phase 1 (request insance ke infra) phase 2 auto spawn
  - universe-name
  - data-center (gcp / aliyun)
  - jumlah node (semua tserver) 
  - masternya ada brp
  - replication factor (semua master)
  - pilih semua replication node (1, 3 ,5, 7) default 3
  - master_flag (deploy smua master)
  - tserver (flag)

  - ask leader to master return url

- phase 2
  - tambah auth


- range
  - best practive for range
  - table spliting untuk range key
  - simulate hostpot
- hash
 - best practive for hash
 - simulate hostpot



 global
	maxconn 4096
	log /dev/log	local0
	log /dev/log	local1 notice
	chroot /var/lib/haproxy
	user haproxy
	group haproxy
	daemon

defaults
	log	global
	mode	tcp
	timeout connect 10s
	timeout client	1m
	timeout server	1m
	option	clitcpka

listen psql
	bind :5434
	mode tcp
	balance roundrobin
	option httpchk GET /rpcz
	server yuga-master-76 172.18.75.76:5433 check port 9000
	server yuga-master-77 172.18.75.77:5433 check port 9000
	server yuga-master-78 172.18.75.78:5433 check port 9000