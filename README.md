# FlappyKite

This is an example iOS application which is being used to demonstrate
Buildkite Hosted macOS agents. A
[getting started guide](https://buildkite.com/docs/pipelines/hosted-agents/mobile-delivery-cloud/getting-started)
is also available to provide a comprehensive overview of the Buildkite Mobile
Delivery Cloud and how this repository can be used.

For additional components, see [the TODO](#todo) below!

## Features

- A generated XCode project with minimal code.
- A Buildkite pipline to build and test an iOS Swift app.
- A fastlane configuration for the test execution platform.

## Local Development

### Sentry

For local development you can generate an empty sentry configuration.

```sh
sed \
    -e "s|__SENTRY_DSN_HOST_REPLACE__||g" \
    -e "s|__SENTRY_DSN_PATH__||g" \
    Config.xcconfig.template > Config.xcconfig
```

## Bazel configuration

A Bazel workspace has been configured for FlappyKite, with all required `BUILD`,
`MODULE`, and `WORKSPACE` files included. These are **purely additive** to the
project and are not required to be used or kept, they can safely be ignored.

### Updating

To update the dependencies, a single target can be used.

```sh
bazelisk run @swift_package//:update
```

It's also quite useful to keep the configuration clean, with another command.

```sh
bazelisk mod tidy
```

If larger changes are made, or versions bumped, it's handy to keep the build files
up-to-date with any changes.

```sh
bazelisk run //:update_build_files
```

### Building

Similar to the local XCode development, the Sentry configuration is stored within
the `FlappyKite/Info.plist` file as hard-coded strings. The specific `SentryDSN`
value can be updated as required for individual requirements.

To run the Bazel build, use the following command.

```sh
bazelisk build //FlappyKite:FlappyKite
```

### Tests

There are unit and UI tests configured, these can be run via their own commands.

```sh
bazelisk test //FlappyKiteTests:FlappyKiteTests
bazelisk test //FlappyKiteUITests:FlappyKiteUITests
```

## Contributing

Pull requests are welcomed for contributing updates to this project. The goal
of the project is to provide an example of utilizing the Mobile Delivery Cloud
provided by Buildkite, it is not intended to be an exhaustive complete
application.

## License

MIT, see [LICENSE](LICENSE).

## TODO

- More in-depth application content and tests.
- Skeleton configuration for publishing to the App Store.
- Capture screenshots and artifact them.
- A generated artifact of the IPA file that can be installed locally.
