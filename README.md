# FlappyKite

This is an example iOS application which is being used to demonstrate and test out Buildkite Hosted macOS agents.

## Features

- A generated XCode project with minimal code.
- A Buildkite pipline to build and test an iOS app.
- Use fastlane as the test execution platform.

## Local Development

### Sentry

For local development you can generate an empty sentry configuration.

```
sed \
    -e "s|__SENTRY_DSN_HOST_REPLACE__||g" \
    -e "s|__SENTRY_DSN_PATH__||g" \
    Config.xcconfig.template > Config.xcconfig
```

## TODO

- More in-depth application content and tests.
- Skeleton configuration for publishing to the App Store.
- Capture screenshots and artifact them.
- A generated artifact of the IPA file that can be installed locally.

