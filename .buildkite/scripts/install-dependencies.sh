#!/bin/bash

set -ex -o pipefail

SOURCE=${BASH_SOURCE[0]}

BUILDKITE_CACHE_MOUNT_PATH="${NSC_CACHE_PATH:-.cache/buildkite}"

# Install dependencies
echo "-- :ruby: Installing dependencies..."
bundle install

