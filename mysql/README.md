MySQL 5.5 on Debian
===================

Latest `debian` with MySQL.

Console process: mysqld

Environment variables (set with `docker run -e VAR=value`):
 - `MYSQL_ROOT_PASSWORD`: The password for the root user. Defaults to a blank password
 - `MYSQL_DATABASE`: A database to automatically create. If not provided, does not create a database.
 - `MYSQL_USER`: A user to create that has access to the database specified by `MYSQL_DATABASE`.
 - `MYSQL_PASSWORD`: The password for `MYSQL_USER`. Defaults to a blank password.

Volumes (set with `docker run -v hostdir:containerdir`):
 - `/var/lib/mysql`: data directory

```shell
# build image from scratch
docker build -t docwalter/mysql .

# run as daemon
docker run -d -p 3306:3006 -e MYSQL_DATABASE=mydatabase --name=mysql docwalter/mysql

# spawn a local MySQL client shell within the container
docker exec -it mysql mysql

# connect to console with MySQL log (disconnect with C-p C-q)
docker attach mysql

# spawn a parallel shell process
docker exec -it mysql bash -l
```
