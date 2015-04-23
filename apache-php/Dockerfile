FROM		docwalter/debian:latest

MAINTAINER	Philipp Walter, philipp.walter@gmail.com

RUN			apt-get update && DEBIAN_FRONTEND=noninteractive apt-get dist-upgrade -y && \
			# Install Apache and PHP
			DEBIAN_FRONTEND=noninteractive apt-get install -yq apache2 libapache2-mod-php5 php5-mysql php5-pgsql php5-gd php-pear php-apc && \
			# Clean up when done
			apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \

EXPOSE		80 443

CMD 		["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
