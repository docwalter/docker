Java 8 Server JRE on Debian
===========================

The latest Java 8 Server JRE from Oracle on `docwalter/debian`.

Java 8 is installed in `/opt/jdk...` with an `/opt/java` symlink. The `java` and other JDK commands are exposed by appending `/opt/java/bin` to `PATH`.

```shell
# run as daemon
docker run -d --name=java docwalter/java

# connect local shell
docker exec -it java bash -l

# check Java version
docker exec java java -version
java version "1.8.0_25"
Java(TM) SE Runtime Environment (build 1.8.0_25-b17)
Java HotSpot(TM) 64-Bit Server VM (build 25.25-b02, mixed mode)
```
