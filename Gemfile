source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.5'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.4', '>= 5.2.4.4'
# Use mysql as the database for Active Record
gem 'mysql2'
# Use Puma as the app server
gem 'puma', '~> 5.6'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'mini_racer', platforms: :ruby
# DWH gem
gem 'pg'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'
gem "audited", github: "collectiveidea/audited"
gem 'sprockets-rails', :require => 'sprockets/railtie'
gem 'actionpack-cloudflare'

gem 'newrelic_rpm'
gem 'newrelic-infinite_tracing'

# USER RELATED
gem 'devise'
gem 'simple_form'
# FOR NOTIFICATIONS
gem 'toastr-rails', '~> 1.0'
gem 'bootstrap'
gem 'jquery-rails'
# ADMIN SECTION
gem 'rails_admin', '~> 2.0'
gem 'rails_admin_rollincode', '~> 1.0'
gem 'rails_admin_material'
gem 'chartkick', '~> 3.4', '>= 3.4.2'
gem 'groupdate', '~> 5.2', '>= 5.2.1'
# PERMISSIONS
gem 'cancancan', '~> 3.1'
# FAKE DATA
gem 'addressy', '~> 0.0.2'
gem 'faker', '~> 2.14'

# Suppressing RangeError during type casting
gem 'activerecord-suppress_range_error', '~> 0.1.1'

gem 'database_cleaner-active_record'

gem 'client_side_validations'
gem 'client_side_validations-simple_form'

gem 'carrierwave', '~> 2.0'

# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0'

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

gem 'geocoder'

group :development do
  gem 'better_errors', '~> 2.8', '>= 2.8.3'
  gem 'binding_of_caller', '~> 0.8.0'
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'capistrano', '~> 3.10', require: false
  gem 'capistrano-rails', '~> 1.4', require: false
  gem 'capistrano-bundler', '>= 1.1.0'
  gem 'rvm1-capistrano3', require: false
  gem 'capistrano3-puma'
  gem 'underscore-rails', '~> 1.8', '>= 1.8.3'
  gem 'rails_admin_import', '~> 2.2'
    
  # Gems for APIs :
  gem 'figaro'
  gem 'twilio-ruby'
  gem 'ibm_watson'
  gem 'haml'
  gem 'gmaps4rails'
  gem 'slack-ruby-client'
  gem 'slack-notifier'
  gem 'dropbox-api'
  gem 'dropbox_api'
  gem 'sendgrid-ruby'
  # gem "zendesk_api"
  gem "recaptcha", require: "recaptcha/rails"

  # Brakeman XSS Test
  gem 'brakeman'
end


group :test do
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'webdrivers', '~> 4.0', require: false
  gem 'chromedriver-helper'
  gem 'rspec-rails', '~> 4.0.1'
end


group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end


group :production do
  gem 'newrelic_rpm'
  gem 'newrelic-infinite_tracing'
  # or :staging or :beta or whatever environments you are using cloudflare in.
  # you probably don't want this for :test or :development
end
