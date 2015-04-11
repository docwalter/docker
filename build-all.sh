#!/bin/sh

images="debian apache-php drupal java glassfish mysql"

for image in $images
do
	docker build -t docwalter/$image $image
done
