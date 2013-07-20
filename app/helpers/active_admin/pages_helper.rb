module ActiveAdmin::PagesHelper

  def page_parents
    Hash[Page.all.map{|page| ["#{page.name}-#{page.id}", page.id]}]
  end

  def page_layouts
    dir = Rails.root.join("app", "views", "layouts")
    Dir.glob("#{dir}/*.html.erb").map{|l| File.basename(l, '.html.erb')}
  end

end 