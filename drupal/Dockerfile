FROM		docwalter/apache-php:latest

MAINTAINER	Philipp Walter, philipp.walter@gmail.com

ENV			PATH			$PATH:$HOME/.composer/vendor/bin

RUN			apt-get update && DEBIAN_FRONTEND=noninteractive apt-get dist-upgrade -y && \
			# Install mysql-client (for drush sql-cli), git and Composer
			DEBIAN_FRONTEND=noninteractive apt-get install -yq mysql-client git && \
			cd /tmp && wget -qO- https://getcomposer.org/installer | php && mv /tmp/composer.phar /usr/local/bin/composer && \
			# Install drush
			composer global require drush/drush:dev-master && \
			# ENV PATH is not set when using "docker exec -it drupal bash -l" - bug or not? Whatever...
			echo 'export PATH=$PATH:$HOME/.composer/vendor/bin' > /etc/profile.d/path_composer.sh && chmod +x /etc/profile.d/path_composer.sh && \
			# Download and install Drupal
			cd /var/www && drush dl drupal && ln -s drupal-* drupal && chown -R www-data:www-data drupal-* && \
			# Clean up when done
			apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

			# Default settings
ADD			settings.php /var/www/drupal/sites/default/settings.php
RUN			chmod 444 /var/www/drupal/sites/default/settings.php && chown www-data:www-data /var/www/drupal/sites/default/settings.php
