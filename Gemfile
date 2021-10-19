source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.3'

gem 'rails', '~> 5.2.1'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'bootsnap', '>= 1.1.0', require: false

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'sqlite3', '~> 1.3', '< 1.4'
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'annotate'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'jquery-rails'
gem 'devise'
gem 'bootstrap_form'

# search gem
gem 'ransack'
gem 'will_paginate-bootstrap4'
gem "responders"
gem 'pg', '~> 1.1.4'
gem 'active_link_to'

# 檔案上傳
gem 'carrierwave'
gem 'carrierwave-imageoptimizer'
gem 'mini_magick'

# 編輯器
gem 'ckeditor', '4.3.0'

# bower
gem "bower-rails", "~> 0.11.0"
gem 'friendly_id', '~> 5.2.4' # Note: You MUST use 5.0.0 or greater for Rails 4.0+gemfile
gem "babosa"
gem 'activerecord-typedstore'

# i18n
gem 'rails-i18n'
gem 'mobility', '~> 0.8.6'

gem 'mina-multistage', require: false

gem 'puma'

# If you already have a development group, you can add this into it
group :development do
  gem 'capistrano',         require: false
  gem 'capistrano-rvm',     require: false
  gem 'capistrano-rails',   require: false
  gem 'capistrano-bundler', require: false
  gem 'capistrano3-puma',   require: false
end