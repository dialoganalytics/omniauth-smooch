require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Smooch < OmniAuth::Strategies::OAuth2
      option :name, 'smooch'

      option :client_options, {
        site: "https://smooch.io/",
        authorize_url: "https://app.smooch.io/oauth/authorize",
        token_url: "https://app.smooch.io/oauth/token"
      }
    end
  end
end
