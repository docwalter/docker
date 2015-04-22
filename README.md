Lightweight Docker Images
=========================

Build all images at once with

```shell
./build-all.sh
```

Build a single image with

```shell
docker build -t docwalter/debian debian
```

### Images Inheritance

* debian
  * apache-php
     * drupal
  * java
     * glassfish
  * mysql
  * nodejs
