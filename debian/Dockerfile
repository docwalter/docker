FROM        debian:latest

MAINTAINER  Philipp Walter, philipp.walter@gmail.com

ENV         HOME            /root
#ENV         http_proxy      http://212.89.128.112:3128
#ENV         https_proxy     http://212.89.128.112:3128

COPY        sources.list    /etc/apt/
RUN         chown root:root /etc/apt/sources.list && chmod 644 /etc/apt/sources.list && \
            echo "Europe/Berlin" > /etc/timezone && \
            # Update base image
            apt-get update && DEBIAN_FRONTEND=noninteractive apt-get dist-upgrade -y && \
            # Install basic tools
            DEBIAN_FRONTEND=noninteractive apt-get install -yq procps wget ca-certificates unzip && \
            # Clean up when done
            apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
