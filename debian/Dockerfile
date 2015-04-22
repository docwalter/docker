FROM		debian:latest

MAINTAINER	Philipp Walter, philipp.walter@gmail.com

ENV			HOME			/root

RUN 		echo "Europe/Berlin" > /etc/timezone && \
			# Update base image
			apt-get update && DEBIAN_FRONTEND=noninteractive apt-get dist-upgrade -y && \
			# Install basic tools
			DEBIAN_FRONTEND=noninteractive apt-get install -yq procps wget ca-certificates unzip && \
			# Clean up APT when done
			apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
