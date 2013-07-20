class PagesController < ApplicationController
  layout :layout

  def index
    @jurisprudences = Jurisprudence.order('created_at DESC').first(3)
    @reviews = Review.moderated.order('created_at DESC').first(3)
    @review = Review.new
  end

  def show
    @page = Page.find_by_slug(params[:slug]) || Page.find(params[:slug])
    @order = Order.new if params[:slug] == 'order_of_services'
    render params[:slug] if controller_view_exists?(params[:slug])
  end

  def search
    query = params[:query]

    @docs = Doc.search(query)
    @jurisprudences = Jurisprudence.search(query)
    @pages = Page.search(query)

    @docs_excerpter = ThinkingSphinx::Excerpter.new("doc_core", query)
    @jurisprudences_excerpter = ThinkingSphinx::Excerpter.new("jurisprudence_core", query)
    @pages_excerpter = ThinkingSphinx::Excerpter.new("page_core", query)
  end

  private

  def view_exists?(view)
    File.exists? Rails.root.join("app", "views", view)
  end

  def controller_view_exists?(name)
    view_exists?("#{params[:controller]}/#{name}.html.erb")
  end

  def layout_exists?(name)
    view_exists?("layouts/#{name}.html.erb")
  end

  def layout
    main_layout = 'application'
    if @page && @page.layout != main_layout && layout_exists?(@page.layout)
      @page.layout
    else
      main_layout
    end
  end

end
