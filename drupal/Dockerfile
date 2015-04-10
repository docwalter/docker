FROM		docwalter/apache-php:latest

MAINTAINER	Philipp Walter, philipp.walter@gmail.com

RUN			apt-get update && DEBIAN_FRONTEND=noninteractive apt-get dist-upgrade -y && \
			# Install drush
			DEBIAN_FRONTEND=noninteractive apt-get install -yq drush && \
			# Download and install Drupal
			cd /var/www && drush dl drupal && ln -s drupal-* drupal && chown -R www-data:www-data drupal-* && \
			# Clean up APT when done
			apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
