module ApplicationHelper
  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

  def markdown(stuff)
    renderer = Redcarpet::Render::HTML.new
    extensions = {}
    redcarpet = Redcarpet::Markdown.new(renderer,extensions)
    (redcarpet.render stuff).html_safe
  end

end
