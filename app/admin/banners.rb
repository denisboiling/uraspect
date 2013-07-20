ActiveAdmin.register Banner do
  menu priority: 8
  index do
    column :content do |banner|
      raw banner.content
    end
    column :url
    column :created_at
    default_actions
  end

  form do |f|
    f.inputs do
      f.input :content, as: :ckeditor
      f.input :url
    end
    f.actions
  end
end
