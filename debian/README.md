Base Image for all docwalter Images
===================================

Latest `debian` with updated packages. Ideally serves as a basis for dockerized services.

```shell
# build image from scratch
docker build -t docwalter/debian .

# run and log in
docker run -it --name=debian docwalter/debian

# or restart and log in
docker start -ai debian

# or run as daemon and connect to local shell
docker run -d --name=debian docwalter/debian
docker attach debian

# or spawn another shell process
docker exec -it debian bash -l
```
