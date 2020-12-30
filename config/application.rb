# frozen_string_literal: true

require_relative 'boot'

require 'rails'
require 'mongo'
# Pick the frameworks you want:
require 'active_model/railtie'
require 'active_job/railtie'
# require "active_record/railtie"
# require "active_storage/engine"
require 'action_controller/railtie'
require 'action_mailer/railtie'
# require "action_mailbox/engine"
# require "action_text/engine"
require 'action_view/railtie'
require 'action_cable/engine'
require 'sprockets/railtie'
require 'rails/test_unit/railtie'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module CovidMonitoring
  class Application < Rails::Application
    config.load_defaults 6.0
    config.mongoid.logger = Logger.new(Rails.root + 'log/mongoid.log')
    config.mongoid.logger.level = Logger::INFO
    config.mongoid.preload_models = false
    config.hosts << /[a-z0-9]+\.ngrok\.io/
    config.filter_parameters += [:password, :password_confirmation]
    config.generators do |g|
      g.orm :mongoid
    end
  end
end
