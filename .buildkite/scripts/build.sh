#!/bin/bash

set -ex -o pipefail

SOURCE=${BASH_SOURCE[0]}

BUILDKITE_CACHE_MOUNT_PATH="${NSC_CACHE_PATH:-.cache/buildkite}"

xcodebuild clean build -clonedSourcePackagesDirPath SwiftPackages CODE_SIGN_IDENTITY="" CODE_SIGNING_REQUIRED=NO