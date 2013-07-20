# Encoding: utf-8
ActiveAdmin.register Page do
  menu :priority => 3
  config.batch_actions = false

  [:seo, :name, :slug, :content, :hidden, :created_at, :updated_at].each do |p_filter|
    filter p_filter
  end

  config.sort_order = 'position_asc'

  sortable

  controller do
    def new
      @page = Page.new
      @page.build_seo   # без этой строки не появляется форма для seo параметров
    end
    def edit
      @page = Page.find(params[:id])
      if @page.seo_id.nil?
        @page.build_seo
      end
    end
  end

  index do
    sortable_handle_column
    column :position, sortable: :position
    column :name
    column :slug
    column :parent
    column :hidden do |resource|
      resource.hidden? ? 'Да' : 'Нет'
    end
    column :created_at
    default_actions
  end

  form partial: 'form'
end
