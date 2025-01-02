// swift-tools-version:6.0

import PackageDescription

let package = Package(
    name: "FlappyKite",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v18)
    ],
    dependencies: [
        .package(url: "https://github.com/getsentry/sentry-cocoa", from: "8.42.1")
    ]
)
