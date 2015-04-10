Apache 2.2 and PHP 5.4 on Debian
================================

Latest `debian` with Apache and PHP, including MySQL and PostgreSQL client libraries.

Console process: apache

```shell
# build image from scratch
docker build -t docwalter/apache-php .

# run as daemon
docker run -d -p 80:80 --name=apache docwalter/apache-php

# connect to console with apache log (disconnect with C-p C-q)
docker attach apache

# spawn a parallel shell process
docker exec -it apache bash -l
```
