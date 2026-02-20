#!/bin/bash

set -ex -o pipefail

bundle config set path '.cache/bundler'
bundle install
bundle exec fastlane build
