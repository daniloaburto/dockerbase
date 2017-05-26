FROM phusion/passenger-full:0.9.20

# Set correct environment variables
ENV HOME /root
ENV APP_HOME /home/app/webapp

# Use baseimage-docker's init system.
CMD ["/sbin/my_init"]

# Dependencies
RUN apt-get update
RUN apt-get install -y imagemagick
RUN apt-get install -y postgresql-client-9.5
RUN gem install backup -v 4.2.3
RUN npm -g install bower@1.7.9
