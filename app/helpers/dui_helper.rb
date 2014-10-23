module DuiHelper

  # from: https://github.com/FortAwesome/font-awesome-less/blob/master/lib/font_awesome/less/rails/helpers.rb
  def dui_icon(icon, text="", html_options={})
    content_class = "fa fa-#{icon}"
    content_class << " #{html_options[:class]}" if html_options.key?(:class)
    html_options[:class] = content_class

    html = content_tag(:i, nil, html_options)
    html << " #{text}" unless text.blank?
    html.html_safe
  end

end
