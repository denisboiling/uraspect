#coding: utf-8
class ReviewsController < ApplicationController
  def create
    @review = Review.new(params[:review])
    if @review.save
      AdminUser.all.each do |user|
        ReviewMailer.review_email(user.email, @review).deliver
      end
      flash[:notice] = "Ваш отзыв отправлен на модерацию"
      redirect_to :root
    else
      @jurisprudences = Jurisprudence.order('created_at DESC').first(3)
      @reviews = Review.moderated.order('created_at DESC').first(3)
      render 'pages/index'
    end
  end
end
