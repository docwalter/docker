FROM		docwalter/java:latest

MAINTAINER 	Philipp Walter, philipp.walter@gmail.com

ENV			GLASSFISH_HOME	/opt/glassfish
ENV         PATH			$PATH:$GLASSFISH_HOME/bin

RUN			cd /opt && wget -q --no-check-certificate http://dlc.sun.com.edgesuite.net/glassfish/4.1/release/glassfish-4.1-web.zip && unzip -q glassfish-4.1-web.zip && \
			ln -s glassfish4 glassfish && rm glassfish-4.1-web.zip

			# Start GlassFish as main process
CMD			asadmin start-domain --verbose

EXPOSE		8080 8181 4848

WORKDIR		/opt/glassfish
