source 'https://rubygems.org'

ruby "2.2.3"

gem 'rails', '4.2.5'
gem "pg"

gem 'bcrypt', '~> 3.1.7'
gem 'coffee-rails', '~> 4.1.0'
gem 'devise'
gem 'high_voltage'
gem 'jbuilder', '~> 2.0'
gem 'jquery-rails'
gem "obfuscate_id"
gem 'puma'
gem 'sass-rails', '~> 5.0'
gem 'sdoc', '~> 0.4.0', group: :doc
gem 'slim-rails'
gem 'sprockets-es6'
gem 'turbolinks'
gem 'uglifier', '>= 1.3.0'
gem 'rails_stdout_logging'
# gem 'therubyracer', platforms: :ruby

source "https://rails-assets.org" do
  gem 'rails-assets-Countable'
  gem "rails-assets-modernizr"
  gem "rails-assets-normalize-scss"
  gem 'rails-assets-medium-editor'
end

group :development, :test do
  gem "byebug",                            require: false
  gem "rspec-rails",                       require: false
  gem "spring-commands-rspec",             require: false
end

group :development do
  gem "awesome_print"
  gem "dotenv-rails"
  gem 'guard-livereload'
  gem "letter_opener"
  gem 'rack-livereload'
  gem 'spring'
  gem 'web-console', '~> 2.0'
end

group :productiond do
  gem 'rails_12factor'
end

