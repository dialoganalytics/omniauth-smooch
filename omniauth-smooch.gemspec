# encoding: utf-8

$:.unshift File.expand_path('../lib', __FILE__)
require 'omniauth-smooch/version'

Gem::Specification.new do |s|
  s.name          = "omniauth-smooch"
  s.version       = Omniauth::Smooch::VERSION
  s.authors       = ["Philippe Dionne"]
  s.email         = ["p@dialoganalytics.com"]
  s.homepage      = "https://github.com/phildionne/omniauth-smooch"
  s.licenses      = ['MIT']
  s.summary       = "Unofficial Omniauth streategy for Smooch"
  s.description   = "Unofficial Omniauth streategy for Smooch"

  s.cert_chain  = ['certs/pdionne-gem-public_cert.pem']
  s.signing_key = File.expand_path("~/.gem/pdionne-gem-private_key.pem") if $0 =~ /gem\z/

  s.files         = `git ls-files lib`.split("\n")
  s.platform      = Gem::Platform::RUBY
  s.require_paths = ['lib']
  s.test_files    = s.files.grep(%r{^(spec)/})

  s.add_dependency "omniauth", "~> 1.0"
  s.add_dependency "omniauth-oauth2", "1.3.1"

  s.add_development_dependency "rspec", "~> 2.7"
end
