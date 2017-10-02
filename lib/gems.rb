gem 'canonical-rails'
gem 'hiredis'
gem 'kaminari'
gem 'locale_kit'
gem 'meta-tags'
gem 'premailer-rails'
gem 'rails-i18n'
gem 'redis', '>= 3.2.0', require: ['redis', 'redis/connection/hiredis']
gem 'request_store'
gem 'ridgepoler-rails'
gem 'sidekiq'
gem 'sitemap_generator'
gem 'slim-rails'

gem_group :development, :test do
  gem 'factory_girl_rails'
  gem 'rspec-rails'
end

gem_group :development do
  gem "better_errors"
  gem "binding_of_caller"
  gem 'brakeman', require: false
  gem 'letter_opener'
  gem 'parser', "~> #{RUBY_VERSION.sub(/\.\d+$/,'')}.x", require: false
  gem 'rubocop', require: false
  gem 'slim_lint', require: false
  gem 'spring-commands-rspec', require: false
end

gem_group :test do
  gem 'database_cleaner'
  gem 'ffaker'
  gem 'rspec-power_assert'
  gem 'simplecov', require: false
end
