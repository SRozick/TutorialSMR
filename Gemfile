source 'https://rubygems.org'
ruby '2.1.2'

gem 'rails', '4.1.4'

gem 'pg'
gem 'rails_12factor'

gem 'sass-rails'
gem 'uglifier'
gem 'coffee-rails'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder'

group :development, :test do
=begin
  Version 3.0.1 required or generate rspec fails.
  See http://stackoverflow.com/questions/22962048/rails-4-could-not-find-generator-rspecinstall
  for more info  (note: 3.0.0 failed, 2.13.1 worked, 3.0.1 worked)
  See also https://rubygems.org/gems/rspec-rails/versions
=end
  gem 'rspec-rails', '3.0.1'
end

group :test do
  gem 'selenium-webdriver'
  gem 'capybara'
end

group :development do
  gem 'spring'
end

group :doc do
  gem 'sdoc', '~> 0.4.0'
end
