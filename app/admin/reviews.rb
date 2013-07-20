# Encoding: utf-8
ActiveAdmin.register Review do
  menu :priority => 5
  config.batch_actions = false

  controller do
    def new
      @review = Review.new
    end
    def edit
      @review = Review.find(params[:id])
    end
  end

  index do
    column :caption
    column :moderated do |review|
      review.moderated? ? 'Да' : 'Нет'
    end
    column :created_at
    default_actions
  end

  form do |f|
    f.inputs do
      f.input :caption
      f.input :content, as: :text
      f.input :moderated
    end
    f.actions
  end
end
