#!/bin/bash

set -e

export DEBIAN_FRONTEND=noninteractive

add-apt-repository ppa:chris-lea/redis-server -y

curl -sL https://deb.nodesource.com/setup_10.x | sudo bash -

apt-get update

# GGTRACKER dependencies
apt-get install -y \
  ruby redis-server nodejs mysql-server git-core ruby-dev \
  libcurl4-openssl-dev libmysqlclient-dev build-essential libxml2-dev \
  libxslt-dev

# ESDB dependencies
apt-get install -y \
  memcached imagemagick libsasl2-dev python-pip python-dev libtiff5-dev \
  libjpeg8-dev zlib1g-dev libfreetype6-dev liblcms2-dev libwebp-dev tcl8.6-dev \
  tk8.6-dev python-tk

gem install bundler
npm install -g juggernaut

