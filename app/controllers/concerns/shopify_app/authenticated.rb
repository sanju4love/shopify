# frozen_string_literal: true

module ShopifyApp
  module Authenticated
    extend ActiveSupport::Concern

    included do
      include ShopifyApp::Localization
      include ShopifyApp::LoginProtection
      include ShopifyApp::CsrfProtection
      include ShopifyApp::EmbeddedApp
      include ShopifyApp::AccessTokenHeaders
      before_action :login_again_if_different_user_or_shop
      around_action :activate_shopify_session
    end
  end
end
