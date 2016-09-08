# Smooch's Omniauth strategy

This is the official Ruby OmniAuth strategy for authenticating to [Smooch](https://smooch.io).

Before you can start developing your API client for Smooch, you need to create an application on your account and copy the application id and secret.

## Installation

Add the strategy to your `Gemfile`:

```ruby
gem 'omniauth-smooch'
```

And bundle.

## Usage

You can integrate the strategy into your middleware in a `config.ru`:

```ruby
use OmniAuth::Builder do
  provider :smooch, SETTINGS['CLIENT_ID'], SETTINGS['CLIENT_SECRET'], scope: "read write"
end
```

If you're using Rails, you'll want to add to the middleware stack:

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :smooch, SETTINGS['CLIENT_ID'], SETTINGS['CLIENT_SECRET'], scope: "read write"
end
```

For additional information, refer to the [OmniAuth wiki](https://github.com/intridea/omniauth/wiki).

## License

omniauth-smooch is released under the MIT License.
