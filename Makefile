install:
	mvn clean package -DskipTests -Dmaven.javadoc.skip=true

restart: kill sleep start

sleep:
	sleep 5

start:
	bin/start-hbase.sh

kill:
	jps | egrep 'HMaster|HRegion' | cut -f1 -d ' ' | xargs kill
