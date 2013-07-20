#coding: utf-8
class OrderMailer < ActionMailer::Base

  def order_of_services(order)
    @first_name = order.first_name
    @last_name = order.last_name
    @phone = order.phone
    @email = order.email
    @content = order.content

    mail :to => AdminUser.all.map(&:email),
         :subject => "Заказ услуг"
  end
	 
end
