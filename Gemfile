source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.0.0"

gem "rails", "~> 7.0.2", ">= 7.0.2.3"

gem "pg", "~> 1.1"

gem "puma", "~> 5.0"

gem 'rack-cors'

gem 'fast_jsonapi'

gem "kaminari"

gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]

gem "bootsnap", require: false

group :test do
  gem "byebug", platforms: %i[ mri mingw x64_mingw ]
  gem "factory_bot_rails"
  gem "rspec-rails"
  gem "simplecov"
  gem "ffaker"
end

group :development do
  gem "guard-rspec"
end

group :production do
end