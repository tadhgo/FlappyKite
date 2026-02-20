#!/bin/bash

set -ex -o pipefail

SOURCE=${BASH_SOURCE[0]}

# Install dependencies
echo "-- :ruby: Installing dependencies..."
bundle config set path '.cache/bundler'
bundle install

