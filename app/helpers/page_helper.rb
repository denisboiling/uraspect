# encoding: utf-8
module PageHelper

  def raw_short_content_for(object)
    raw truncate_html object.content, length: 200, omission: "..."
  end

  def menu_item_state(page)
    slug = params[:slug]
    if page.slug == slug || page.children.find{|p| p.slug == slug }
      'current'
    end
  end
end
