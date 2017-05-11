FROM phusion/passenger-customizable:0.9.20

# Set correct environment variables
ENV HOME /root
ENV APP_HOME /home/app/webapp

# Use baseimage-docker's init system.
CMD ["/sbin/my_init"]

# Ruby support, Node.js and Meteor support.
RUN /pd_build/ruby-2.2.*.sh
RUN /pd_build/nodejs.sh

# PG Client, backup database, bower global
RUN apt-get update && apt-get install -y postgresql-client-9.5
RUN gem install backup -v 4.2.3
RUN npm -g install bower@1.7.9
