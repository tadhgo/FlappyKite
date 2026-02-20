#!/bin/bash

set -ex -o pipefail

SOURCE=${BASH_SOURCE[0]}

BUILDKITE_CACHE_MOUNT_PATH="${NSC_CACHE_PATH:-.cache/buildkite}"

echo "--- Installing dependencies"
brew install xcbeautify

echo "--- :bash: Configure application for testing :bash:"
sed \
    -e "s|__SENTRY_DSN_HOST_REPLACE__||g" \
    -e "s|__SENTRY_DSN_PATH__||g" \
    Config.xcconfig.template > Config.xcconfig

echo "-- :ruby: Installing dependencies..."
bundle config set path '.cache/bundler'
bundle install

echo "--- :xcode: Testing :xcode:"
bundle exec fastlane snapshot
