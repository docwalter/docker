Docker Image with Java 8 Server JRE
===================================

Based upon an updated `phusion/baseimage` enhanced with the latest Java 8 Server JRE from Oracle.

Java 8 is installed in `/opt/jdk...` with an `/opt/java` symlink. The `java` command is exposed as `/usr/bin/java` using `update-alternatives`.

```shell
# run as daemon
docker run -d --name=java docwalter/java:latest

# connect local shell
docker exec -it java bash -l

# check Java version
root@...:/# java -version
java version "1.8.0_25"
Java(TM) SE Runtime Environment (build 1.8.0_25-b17)
Java HotSpot(TM) 64-Bit Server VM (build 25.25-b02, mixed mode)
```
