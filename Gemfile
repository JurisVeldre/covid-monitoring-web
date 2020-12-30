# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.0'

# Deploy
gem 'bcrypt_pbkdf'
gem 'ed25519'

# Framework
gem 'devise', '~> 4.7', '>= 4.7.3'
gem 'rails', '~> 6.0.3', '>= 6.0.3.3'

# Runtime
gem 'jquery-rails', '~> 4.4'
gem 'puma'
gem 'webpacker', '~> 5.2.1'

# Views
gem 'simple_form', '~> 5.0.1'
gem 'slim', '~> 4.0.1'
gem 'slim-rails', '~> 3.2.0'

# Database
gem 'bson_ext'
gem 'mongo_mapper', '~> 0.15.1'
gem 'mongoid', '~> 7.1', '>= 7.1.2'

gem 'jbuilder', '~> 2.7'
gem 'turbolinks', '~> 5'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false

group :development, :test do
  gem 'dotenv-rails'
  gem 'pry-rails', '~> 0.3.9'
  gem 'rubocop', '~> 0.79.0', require: false
  gem 'rubocop-rails', '~> 2.4.1', require: false
end

group :development do
  # Deploy
  gem 'capistrano',         require: false
  gem 'capistrano-bundler', require: false
  gem 'capistrano-rails',   require: false
  gem 'capistrano-rvm',     require: false
  gem 'capistrano3-puma',   require: false

  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'listen', '~> 3.2'
  gem 'web-console', '>= 3.3.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  # Easy installation and use of web drivers to run system tests with browsers
  gem 'webdrivers'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
