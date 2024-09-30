# FlappyKite

This is a WIP example IOS application which is being used to demonstrate and test out hosted mac agents.

# Local Development

For local development you can just generate empty sentry configuration.

```
sed \
    -e "s|__SENTRY_DSN_HOST_REPLACE__||g" \
    -e "s|__SENTRY_DSN_PATH__||g" \
    Config.xcconfig.template > Config.xcconfig
```