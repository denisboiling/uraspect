# Encoding: utf-8
ActiveAdmin.register AdminUser do
  menu :priority => 1

  index do
    column :email
    column :current_sign_in_at
    column :last_sign_in_at
    column :sign_in_count
    default_actions
  end

  show do |admin_user|
    attributes_table do
      [ :id, :email, :current_sign_in_at, :last_sign_in_at, :sign_in_count,
        :current_sign_in_ip, :last_sign_in_ip, :created_at, :updated_at].each do |au_row|
        row au_row
      end
    end
    active_admin_comments
  end

  filter :email

  form do |f|
    f.inputs "Admin Details" do
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end
end
