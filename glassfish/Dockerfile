FROM        docwalter/java:latest

MAINTAINER  Philipp Walter, philipp.walter@gmail.com

            # MUST NOT end with a /
ENV         GLASSFISH_HOME  /opt/glassfish
ENV         PATH            $PATH:$GLASSFISH_HOME/bin

            # install into /opt/glassfish4
RUN         cd /opt && wget -q http://dlc.sun.com.edgesuite.net/glassfish/4.1/release/glassfish-4.1-web.zip && unzip -q glassfish-4.1-web.zip && rm glassfish-4.1-web.zip && \
            # symlink to GLASSFISH_HOME if not /opt/glassfish4
            test $GLASSFISH_HOME = /opt/glassfish4 || ( mkdir -p $GLASSFISH_HOME && rmdir $GLASSFISH_HOME && ln -s /opt/glassfish4 $GLASSFISH_HOME )

COPY        passwordfile $GLASSFISH_HOME/

RUN         cd $GLASSFISH_HOME && chmod 600 passwordfile && \
            # change admin password to the value in passwordfile and rewrite passwordfile
            asadmin start-domain && asadmin --user admin --passwordfile passwordfile change-admin-password && \
            grep -v AS_ADMIN_PASSWORD passwordfile | sed -e 's/AS_ADMIN_NEWPASSWORD/AS_ADMIN_PASSWORD/g' > newpasswordfile && \
            mv passwordfile oldpasswordfile && mv newpasswordfile passwordfile && chmod 600 passwordfile && \
            # enable remote admin access at the web interface on port 4848
            asadmin --passwordfile=passwordfile enable-secure-admin && asadmin restart-domain && \
            # environment variables, e.g. PATH, are not available when executing "docker exec bash -l", so persist it for login shells
            env | grep -vwe '_\|HOSTNAME\|PWD\|SHLVL' | awk '{print "export " $0}' > /etc/profile.d/environment.sh

            # Start GlassFish as main process
CMD         asadmin start-domain --verbose

EXPOSE      8080 8181 4848

WORKDIR     $GLASSFISH_HOME
