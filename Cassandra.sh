# http://www.datastax.com/documentation/gettingstarted/index.html?pagename=docs&version=quick_start&file=quickstart#getting_started/gettingStartedTar_t.html

wget "http://apache.mirrors.pair.com/cassandra/2.0.0/apache-cassandra-2.0.0-bin.tar.gz"
tar -xvzf apache-cassandra-2.0.0-bin.tar.gz
sudo mv apache-cassandra-2.0.0/ /opt/

sudo mkdir -p /var/lib/cassandra/data/
sudo mkdir -p /var/lib/cassandra/commitlog/
sudo mkdir -p /var/lib/cassandra/saved_caches/
sudo mkdir -p /var/log/cassandra/

sed -i 's|rpc_address: localhost|rpc_address: 0.0.0.0|g' conf/cassandra.yaml

# Start Cassandra
sudo bin/cassandra

# Stop
sudo pkill -f CassandraDaemon
