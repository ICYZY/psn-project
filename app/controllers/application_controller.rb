class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_order, :total_item
  
  def current_order
    if !session[:order_id].nil?
      Order.find(session[:order_id])
    else
      Order.new
    end
  end
  
  def total_item
    @order_items = current_order.order_items
    @total = 0
    @order_items.each do |quan|
      @total += quan.quantity
    end
    @total
  end
end
