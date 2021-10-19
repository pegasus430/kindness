require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Fhsh
  class Application < Rails::Application
    require "#{Rails.root}/config/initializers/bower_rails.rb"
    # Use the responders controller from the responders gem
    config.app_generators.scaffold_controller :responders_controller

    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    config.generators.javascript_engine = :js

    WillPaginate.per_page = 10

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # config.assets.paths << Rails.root.join("vendor",  "assets", "fonts")
    config.assets.paths << Rails.root.join("app", "assets", "fonts")
    config.autoload_paths += %w(#{config.root}/app/models/ckeditor)


    config.generators do |g|
      # g.template_engine nil 
      g.test_framework  nil 
      # g.assets  false
      # g.helper false
      # g.stylesheets false
    end
  end
end
