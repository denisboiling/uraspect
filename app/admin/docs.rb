ActiveAdmin.register Doc do
  menu priority: 7
  config.batch_actions = false

  index do
    column :category
    column :name
    column :created_at
    default_actions
  end

  form do |f|
    f.inputs do
      f.input :category
      f.input :name
      f.input :example, as: :file
    end
    f.actions
  end
end
