Drupal 7 on Debian
==================

Latest Drupal CMS on Debian with Apache and PHP, including MySQL and PostgreSQL client libraries.

Console process: apache

```shell
# build image from scratch
docker build -t docwalter/drupal .

# run as daemon with docwalter/mysql as database
docker run -d -p 3306:3306 -e MYSQL_DATABASE=drupal --name=mysql docwalter/mysql
docker run -d -p 80:80 --name=drupal --link mysql:db docwalter/drupal
# now open http://$(boot2docker ip)/drupal/install.php and check settings

# connect to console with apache log (disconnect with C-p C-q)
docker attach drupal

# spawn a parallel shell process
docker exec -it drupal bash -l
```
