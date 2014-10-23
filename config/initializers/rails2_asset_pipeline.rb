# config/initializers/rails2_asset_pipeline.rb
in_rake_task = ($0 =~ /rake$/)

if Rails.env.development? || in_rake_task
  # Require the needed gems during asset precompilation (in rake task) or during
  # development mode where we need dynamic asset compilation
  #require 'webfont'
  require 'coffee-script' # need coffee ?
  require 'sprockets/sass'
  autoload :Sass, 'sass' # autoload when used via rake assets:precompile

  # FIXME: sprockets-source-url seemed like a good idea - until it turned out
  # that it makes all JS be wrapped in an 'eval' making debugging hard:
  # require 'sprockets/source_url' # sprockets-source-url for debugable assets in chrome

  require 'sprockets-helpers'

  require 'ejs'

  # including compass-rails breaks asset url helpers, due to this line:
  # https://github.com/Compass/compass-rails/blob/stable/lib/compass-rails/railties/2_3.rb#L48
  # I have not been able to find a workaround (without modifying the gem), but
  # requiring just plain compass works for our purposes (the compass mixins work):
  require 'compass'
end

# Use a different path for assets (as in config.assets.prefix from ")
# Rails2AssetPipeline.prefix = 'static_assets'

Rails2AssetPipeline.setup do |sprockets|
  # ... additional config ...
  if defined?(Sprockets::Helpers)
    Sprockets::Helpers.configure do |config|
      config.environment = sprockets
      config.prefix = "/assets"
      config.digest = in_rake_task  || Rails.env.production? || Rails.env.staging?
    end
  end
end

# let image_tag still go to public/images
require 'rails2_asset_pipeline/view_helpers'
Rails2AssetPipeline::ViewHelpers.ignored_folders = ["images"]
