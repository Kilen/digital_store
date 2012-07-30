module ApplicationHelper
  def page_title title
    return content_tag(:div, :id=>"page_title") do
      content_tag(:p,title)
    end
  end
end
