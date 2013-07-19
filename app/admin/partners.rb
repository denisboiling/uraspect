# encoding: utf-8
ActiveAdmin.register Partner do
  menu priority: 9
  config.sort_order = 'position_asc'
  sortable

  index do
    sortable_handle_column
    column :position, sortable: :position
    column :url
    column :logo do |partner|
      image_tag partner.logo.thumb.url
    end
    column :created_at
    default_actions
  end

  show do
    attributes_table :id, :url, :created_at, :updated_at

    panel 'Логотип' do
      image_tag partner.logo.thumb.url
    end
  end

  form partial: 'form'
end
