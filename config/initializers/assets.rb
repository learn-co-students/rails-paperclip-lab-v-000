# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )

# This is because the jpeg must be precompiled
# Somehow this still breaks with the entry, the tests must be weird, add a PNG instead

#Rails.application.config.assets.precompile += %w( thumb/default.jpeg ) 
#Rails.application.config.assets.precompile += %w( original/default.jpeg ) 

