# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')
Rails.application.config.assets.precompile << /\.(?:svg|eot|woff|ttf)\z/

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )

Rails.application.config.assets.precompile += %w( admin/application.css )
Rails.application.config.assets.precompile += %w( ckeditor/*)

# Rails.application.config.assets.precompile += %w( icons.min.css )
# Rails.application.config.assets.precompile += %w( app.min.css )
Rails.application.config.assets.precompile += %w( * )
Rails.application.config.assets.precompile << /\.(?:svg|eot|woff|ttf)\$/

# Rails.application.config.assets.paths << Rails.root.join("vendor", "assets", "stylesheets")
# Rails.application.config.assets.paths << Rails.root.join("vendor", "assets", "javascripts")
# Rails.application.config.assets.precompile += ['*.js', '*.css']
# Rails.application.config.assets.precompile << Proc.new { |path, fn| fn =~ /vendor\/assets/ && !%w(.js .css).include?(File.extname(path)) }