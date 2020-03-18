# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) do |repo| "https://github.com/#{repo}.git" end

ruby '2.6.3'

gem 'jquery-rails'
gem 'jquery-turbolinks'
gem 'mini_racer', platforms: :ruby
gem 'puma', '~> 3.11'
gem 'rails', '~> 5.2.1', '>= 5.2.1.1'
gem 'rails-i18n'
gem 'sass-rails', '~> 5.0'
gem 'sidekiq'
gem 'slim-rails'
gem 'uglifier', '>= 1.3.0'

gem 'coffee-rails', '~> 4.2'
gem 'jbuilder', '~> 2.5'
gem 'turbolinks', '~> 5'
# gem 'bcrypt', '~> 3.1.7'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

# Beautifying project
gem 'font-awesome-rails'
gem 'material_icons'
gem 'materialize-sass'

# Authentication
gem 'devise'
gem 'devise-i18n'

# Db stuffs
gem 'pg'
gem 'seed_dump'

# Pagination
gem 'kaminari'

# Trailblazer
# gem 'cells-rails'
# gem 'cells-slim'
gem 'dry-validation'
gem 'reform-rails'
gem 'simple_form'
gem 'trailblazer'
gem 'trailblazer-cells'
gem 'trailblazer-rails'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'bullet'
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'database_cleaner'
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'pry'
  gem 'pry-nav'
  gem 'reek'
  gem 'rspec-rails'
  gem 'rubocop'
  gem 'simplecov'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'web-console', '>= 3.3.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'

  # Deploy Stuffs
  gem 'mina',             require: false
  gem 'mina-nginx',       require: false
  gem 'mina-puma',        require: false
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
