FROM		docwalter/debian:latest

MAINTAINER	Philipp Walter, philipp.walter@gmail.com

RUN			apt-get update && DEBIAN_FRONTEND=noninteractive apt-get dist-upgrade -y && \
			# Install MySQL server
			DEBIAN_FRONTEND=noninteractive apt-get install -yq mysql-server && \
			# Clean up APT when done
			apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ADD			my.cnf /etc/mysql/conf.d/my.cnf 
ADD			run-mysql-server.sh /run-mysql-server.sh
RUN			chmod +x /run-mysql-server.sh

EXPOSE		3306

VOLUME		["/var/lib/mysql"]

CMD			["/run-mysql-server.sh"]
