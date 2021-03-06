require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class LayerVault < OmniAuth::Strategies::OAuth2
      option :name, :layervault

      option :client_options, {
        site: "https://layervault.com",
        authorize_url: "/oauth/authorize"
      }

      uid { raw_info["id"].to_s }

      info do
        {
          email: raw_info["email"],
          first_name: raw_info["first_name"],
          last_name: raw_info["last_name"],
          is_admin: raw_info['is_admin']
        }
      end

      def raw_info
        @raw_info ||= access_token.get('/me.json').parsed['user']
      end
    end
  end
end

OmniAuth.config.add_camelization 'layervault', 'LayerVault'
