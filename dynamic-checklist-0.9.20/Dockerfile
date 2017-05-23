FROM phusion/passenger-customizable:0.9.20

# Set correct environment variables.
ENV HOME /root
ENV APP_HOME /home/app/webapp
ENV BUNDLE_PATH /home/app/webapp/vendor/bundle

# Use baseimage-docker's init system.
CMD ["/sbin/my_init"]

# Ruby support, Node.js and Meteor support.
RUN /pd_build/ruby-2.2.*.sh
RUN /pd_build/nodejs.sh

# Image Magick
RUN apt-get install imagemagick -y

# PG Client for ops container
RUN apt-get update && apt-get install -y postgresql-client-9.5

# Backups for ops container
RUN gem install backup -v 4.2.3
