FROM phusion/passenger-ruby22:0.9.20

# Fix timezone
RUN apt-get update && apt-get install --only-upgrade tzdata
RUN echo "America/Santiago" > /etc/timezone && rm /etc/localtime && dpkg-reconfigure -f noninteractive tzdata

# Set correct environment variables.
ENV HOME /root
ENV APP_HOME /home/app/webapp

# Use baseimage-docker's init system.
CMD ["/sbin/my_init"]

# Install postgres-9.5 client
RUN apt-get update && apt-get install -y postgresql-client-9.5
