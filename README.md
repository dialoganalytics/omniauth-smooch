# Smooch's Omniauth strategy

This is the unofficial Ruby OmniAuth strategy for authenticating to [Smooch](https://smooch.io).

Before you can start developing an integration with Smooch, you need to create an application on your account and ask for a client id and secret.

[![Dependency Status](https://gemnasium.com/badges/github.com/phildionne/omniauth-smooch.svg)](https://gemnasium.com/github.com/phildionne/omniauth-smooch)
[![Code Climate](https://codeclimate.com/github/phildionne/omniauth-smooch/badges/gpa.svg)](https://codeclimate.com/github/phildionne/omniauth-smooch)

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
  provider :smooch, ENV['SMOOCH_CLIENT_ID'], ENV['SMOOCH_CLIENT_SECRET'], scope: "integration"
end
```

If you're using Rails, you'll want to add to the middleware stack:

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :smooch, ENV['SMOOCH_CLIENT_ID'], ENV['SMOOCH_CLIENT_SECRET'], scope: "integration"
end
```

For additional information, refer to the [OmniAuth wiki](https://github.com/intridea/omniauth/wiki).

## License

omniauth-smooch is released under the MIT License.
