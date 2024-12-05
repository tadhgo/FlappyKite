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

```
sed \
    -e "s|__SENTRY_DSN_HOST_REPLACE__||g" \
    -e "s|__SENTRY_DSN_PATH__||g" \
    Config.xcconfig.template > Config.xcconfig
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

