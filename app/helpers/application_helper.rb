# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

    include Rails2AssetPipeline::ViewHelpers

  # Rails2AssetPipeline provides an implementation of compute_public_path
  # that will pass *all* paths through the asset pipeline, but we only want
  # to do this for files that have "assets/" prepended to their path (a prefix
  # we remove before passing to the Rails2AssetPipeline implementation
  # of compute_public_path):
  def compute_public_path(*args)
    source = args[0]
    if (modified_source = source.gsub(/\Aassets\//, '')) != source
      # Designer assets use Rails 2 Asset Pipeline gem implementation:
      super(modified_source, *args[1..-1])
    else
      # All other assets use regular path (served from original Rails 2 public/)
      self.class.instance_method(:compute_public_path).bind(self).call(*args)
    end
  end

end
