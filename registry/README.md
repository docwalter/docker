Docker Registry 2.0
===================

Volumes (set with `docker run -v hostdir:containerdir`):
 - `/registry`: images storage

```shell
# build image from scratch
docker build -t docwalter/registry .

# run as daemon
docker run -d -p 5000:5000 -e /data/volumes/docker-registry:/registry --name=registry docwalter/registry

# connect to console with registry log (disconnect with C-p C-q)
docker attach registry

# spawn a parallel shell process
docker exec -it registry bash -l
```
