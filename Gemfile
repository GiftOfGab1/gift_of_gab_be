source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.3'

gem 'json', '~> 2.3'

gem 'rails', '~> 5.2.4'

gem 'pg', '>= 0.18', '< 2.0'

gem 'puma', '~> 3.11'

gem 'bootsnap', '>= 1.1.0', require: false

gem 'figaro'

gem 'graphql'

gem 'sass-rails'
gem 'uglifier'
gem 'coffee-rails'
gem 'rack-cors'

group :development, :test do

  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'pry'
  gem 'rspec-rails'
  gem 'capybara'
  gem 'launchy'
  gem 'shoulda-matchers'
  gem 'simplecov'
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'graphiql-rails'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'travis'
  gem 'factory_bot_rails'
  gem 'faker'
end




# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
