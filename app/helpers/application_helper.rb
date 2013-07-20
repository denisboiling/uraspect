# Encoding: utf-8
module ApplicationHelper
  def cp(path)
    "active" if current_page?(path)
  end

  def errors_for(object, field)
    errors = if object && object.errors && object.errors.messages[field]
      object.errors.messages[field].map do |message|
        "<div class='form_error'>#{message}</div>"
      end.join
    end
    raw errors
  end

  def show_flash
    raw "<div class='flash_notice'>#{flash[:notice]}</div>" if flash[:notice]
  end
end
