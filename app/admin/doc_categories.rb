ActiveAdmin.register DocCategory do
  menu priority: 6
  config.batch_actions = false
  config.sort_order = 'position_asc'
  sortable

  index do
    sortable_handle_column
    column :position, sortable: :position
    column :name
    column :created_at
    default_actions
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :position
    end
    f.actions
  end
end
