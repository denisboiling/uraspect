# Encoding: utf-8
ActiveAdmin.register Jurisprudence do
  menu :priority => 4
  config.batch_actions = false

  controller do
    def new
      @jurisprudence = Jurisprudence.new
    end
    def edit
      @jurisprudence = Jurisprudence.find(params[:id])
    end
  end

  index do
    column :id
    column :name
    default_actions
  end

  form do |f|
    f.inputs "Jurisprudence" do
      f.input :name
      f.input :content, as: :ckeditor
    end
    f.actions
  end
end
