# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth/omniauth-layervault/version'

Gem::Specification.new do |gem|
  gem.name          = "omniauth-layervault"
  gem.version       = OmniAuth::LayerVault::VERSION
  gem.authors       = ["Ryan LeFevre"]
  gem.email         = ["ryan@layervault.com"]
  gem.description   = %q{Official OmniAuth strategy for LayerVault}
  gem.summary       = %q{Official OmniAuth strategy for LayerVault}
  gem.homepage      = "https://github.com/layervault/omniauth-layervault"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency 'omniauth', '~> 1.0'
  gem.add_dependency 'omniauth-oauth2', '~> 1.1'
end
