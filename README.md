# OmniAuth LayerVault

Official OmniAuth strategy for authenticating with LayerVault. You will need to [register your application](https://layervault.com/oauth/applications/new) first.

## Installation

Install the gem or add it to your Gemfile.

```
gem install omniauth-layervault
```

## Usage

You will need to configure the strategy as middleware.

**Rack**

``` ruby
use OmniAuth::Builder do
  provider :layervault, ENV['LAYERVAULT_KEY'], ENV['LAYERVAULT_SECRET']
end
```

**Rails 3**

``` ruby
Rails.application.config.middleware use OmniAuth::Builder do
  provider :layervault, ENV['LAYERVAULT_KEY'], ENV['LAYERVAULT_SECRET']
end
```

### Scopes

LayerVault supports various scopes to limit what actions your application can perform with the API. To specify which scopes to use:

``` ruby
use OmniAuth::Builder do
  provider :layervault, ENV['LAYERVAULT_KEY'], ENV['LAYERVAULT_SECRET'], scope: "user+files"
end
```

**Available Scopes**

* user: default, basic user information
* files: read access to the user's files and folders
* write: write access to the user's files and folders

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
