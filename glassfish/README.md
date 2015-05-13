Docker Image with GlassFish 4.1 on Oracle Server JRE 8
======================================================

GlassFish 4.1 (Web Profile) is installed in `/opt/glassfish4` with a symlink `/opt/glassfish`.

Console process: non-forked glassfish binary

```shell
# build image from scratch
docker build -t docwalter/glassfish .

# run as daemon and expose ports
docker run -d -p 4848:4848 -p 8080:8080 -p 8181:8181 --name=glassfish docwalter/glassfish

# spawn a local `asadmin` client shell within the container
docker exec -it glassfish asadmin

# connect to console with log (disconnect with C-p C-q)
docker attach glassfish

# spawn a parallel shell process
docker exec -it glassfish bash -l
```
