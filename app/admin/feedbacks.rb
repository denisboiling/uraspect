ActiveAdmin.register Feedback do
  menu priority: 9

  index do
    column :email
    column :message
    column :created_at
    default_actions
  end
end
