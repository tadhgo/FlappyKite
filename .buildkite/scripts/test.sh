#!/bin/bash

set -ex -o pipefail

SOURCE=${BASH_SOURCE[0]}

BUILDKITE_CACHE_MOUNT_PATH="${NSC_CACHE_PATH:-.cache/buildkite}"

echo "--- :homebrew: Installing dependencies :homebrew:"
brew install xcbeautify

echo "--- :xcode: Testing :xcode:"
xcodebuild clean test -clonedSourcePackagesDirPath SwiftPackages -scheme FlappyKite -sdk iphonesimulator -destination 'platform=iOS Simulator,name=iPhone 16,OS=18.0' | xcbeautify