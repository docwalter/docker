FROM        docwalter/debian:latest

MAINTAINER  Philipp Walter, philipp.walter@gmail.com

ENV         JAVA_HOME       /opt/java
ENV         PATH            $PATH:$JAVA_HOME/bin

            # update packages and install Java to /opt/jdk1.8.0_45
RUN         apt-get update && DEBIAN_FRONTEND=noninteractive apt-get dist-upgrade -y && \
            cd /opt && \
            wget -q --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u45-b14/server-jre-8u45-linux-x64.tar.gz && \
            tar xfz server-jre-8u45-linux-x64.tar.gz && rm server-jre-8u45-linux-x64.tar.gz && \
            # symlink to JAVA_HOME if not /opt/jdk1.8.0_45
            test $JAVA_HOME = /opt/jdk1.8.0_45 || ( mkdir -p $JAVA_HOME && rmdir $JAVA_HOME && ln -s /opt/jdk1.8.0_45 $JAVA_HOME ) && \
            # clean up when done
            apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
            # environment variables, e.g. PATH, are not available when executing "docker exec bash -l", so persist it for login shells
            env | grep -vwe '_\|HOSTNAME\|PWD\|SHLVL' | awk '{print "export " $0}' > /etc/profile.d/environment.sh
