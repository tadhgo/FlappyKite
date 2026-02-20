#!/bin/bash

set -ex -o pipefail

SOURCE=${BASH_SOURCE[0]}

echo "--- :homebrew: Installing dependencies :homebrew:"
brew install xcbeautify

echo "--- :bash: Configure application for testing :bash:"
sed \
    -e "s|__SENTRY_DSN_HOST_REPLACE__||g" \
    -e "s|__SENTRY_DSN_PATH__||g" \
    Config.xcconfig.template > Config.xcconfig

# echo "--- :xcode: Testing :xcode:"
# xcodebuild clean test -clonedSourcePackagesDirPath SwiftPackages -scheme FlappyKite -sdk iphonesimulator -destination 'platform=iOS Simulator,name=iPhone 16,OS=18.0' | xcbeautify

echo "-- :ruby: Installing dependencies..."
bundle config set path '.cache/bundler'
bundle install

echo "--- :xcode: Testing :xcode:"
bundle exec fastlane tests