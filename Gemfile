source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0'

gem 'nokogiri'
gem 'pg' #replcaing sqlite with postgres
gem 'sorcery'


gem 'kaminari'
gem 'kaminari-bootstrap'

# use carrierwave for uploading of images
gem 'carrierwave'
gem 'rmagick'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'
gem 'bootstrap-sass', '~> 2.2.2.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'


group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

group :tools do
	gem 'guard-minitest' #automatically runs our tests whenever there ahve been changes made to them
end

group :development do
	gem 'better_errors' 
	gem 'pry-rails'
  gem 'letter_opener'
end

group :test do
	gem 'factory_girl_rails'
	gem 'capybara' #needed for integration testing
  gem "database_cleaner" # used to "undo" any changes we made to the db during tests
  gem "capybara-webkit", '~> 1.0.0' # Capybara driver needed to handle JS
end


# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
