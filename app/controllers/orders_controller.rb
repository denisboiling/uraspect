class OrdersController < ApplicationController
 
  def create
    @order = Order.new(params[:order])
 	  if @order.save
      OrderMailer.order_of_services(@order).deliver
      redirect_to thanks_path(order_id: @order.id)
    else
      @page = Page.find_by_slug('order_of_services')
      render 'pages/order_of_services'
    end
  end

  def thanks_order
    @order = Order.find(params['order_id'])
  end

end
