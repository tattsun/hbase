install:
	mvn package install -DskipTests -Dmaven.javadoc.skip=true

restart: kill start

start:
	bin/start-hbase.sh

kill:
	./kill-server.sh

shell:
	bin/hbase shell
