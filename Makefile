install:
	mvn clean package -DskipTests -Dmaven.javadoc.skip=true

restart: kill start

start:
	bin/start-hbase.sh

kill:
	jps | egrep 'HMaster|HRegion' | cut -f1 -d ' ' | xargs kill
