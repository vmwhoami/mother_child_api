source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.2.2'

gem 'rails', '~> 7.2.1'
gem 'pg', '~> 1.5' 
gem 'puma', '~> 6.4' 
gem 'bcrypt', '~> 3.1' 
gem 'rack-cors'
gem 'bootsnap', require: false
gem 'base64', '~> 0.2.0'
gem 'jwt', '~> 2.8' 
gem 'rubocop', '~> 1.50'

group :development, :test do
  gem 'debug', platforms: %i[mri mingw x64_mingw]
  gem 'rspec-rails'
  gem 'shoulda-matchers'
end

group :development do
  gem 'listen', '~> 3.8'
  gem 'pry-rails', '~> 0.3.9'
end

gem 'faker', '~> 3.4' 
