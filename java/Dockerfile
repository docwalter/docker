FROM		docwalter/debian:latest

MAINTAINER 	Philipp Walter, philipp.walter@gmail.com

ENV         JAVA_HOME		/opt/java
ENV         PATH			$PATH:$JAVA_HOME/bin

RUN 		apt-get update && DEBIAN_FRONTEND=noninteractive apt-get dist-upgrade -y && \
			cd /opt && \
			wget -q --no-check-certificate --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u40-b26/server-jre-8u40-linux-x64.tar.gz && \
			tar xfz server-jre-8u40-linux-x64.tar.gz && ln -s jdk1.8.0_40/ java && \
			rm server-jre-8u40-linux-x64.tar.gz && \
			# Clean up when done
			apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
