module ApplicationHelper
  def render_404
    render file: "#{Rails.root}/public/404.html", status: 404
  end

  def display_image src, style=""
    src = src || "default.jpg"
    image_tag src, style: style
  end
end
