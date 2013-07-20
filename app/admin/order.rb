# Encoding: utf-8
ActiveAdmin.register Order do
  menu priority: 9
  config.batch_actions = false

  index do
    column :first_name
    column :last_name
    column :phone
    column :email
    column :created_at
    default_actions
  end

  form do |f|
    f.inputs "Order" do
      f.input :last_name
      f.input :first_name
      f.input :phone
      f.input :email
      f.input :content, as: :text
    end
    f.actions
  end
end
