source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.1'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

# Use ActiveModel has_secure_password
gem 'bcrypt-ruby', '~> 3.1.2'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# For haml syntax
gem 'haml'

# For creating haml files when performing scaffold
gem 'haml-rails'

# Sass version of bootstrap
gem 'bootstrap-sass'

# Forms made easy
gem 'simple_form'

# For pagination
gem 'will_paginate'

gem "cancan"

group :development do
  # Console in error page
  gem 'binding_of_caller'

  # Better looking error page
  gem 'better_errors'
end

group :test do
  # To create test objects
  gem 'factory_girl_rails'

  # To simulate users actions in testing
  gem 'capybara'
end

group :development, :test do
  # For testing
  gem 'rspec-rails'

  # Use sqlite3 as the database for Active Record
  gem 'sqlite3'
end

group :production, :staging do
  # For postgres
  gem 'pg'

  # For assets in heroku
  gem 'rails_12factor' 
end

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end
