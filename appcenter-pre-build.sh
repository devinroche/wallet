#!/usr/bin/env bash

set -o errexit
set -x

cd $APPCENTER_SOURCE_DIRECTORY

gem install bundler --no-document --user-install

bundle install

bundle exec pod install --project-directory=ios

