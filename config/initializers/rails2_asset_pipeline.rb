in_rake_task = ($0 =~ /rake$/)

if Rails.env.development? || in_rake_task # dynamic asset compilation needs these
  require 'coffee-script' # need coffee ?
  require 'sprockets/sass' # need sass ?
  autoload :Sass, 'sass' # autoload when used via rake assets:precompile
  require 'sprockets/source_url' # sprockets-source_url for debugable assets in chrome
end

# Use a different path for assets (as in config.assets.prefix from ")
# Rails2AssetPipeline.prefix = 'static_assets'

Rails2AssetPipeline.setup do |sprockets|
  # ... additional config ...
end

# let image_tag still go to public/images
require 'rails2_asset_pipeline/view_helpers'
Rails2AssetPipeline::ViewHelpers.ignored_folders = ["images"]