class OrderItemsController < ApplicationController
  def create
    @order = current_order
    @neworderid = order_item_params[:product_id]
    if @order.order_items.find_by(product_id: @neworderid)
      @order_item = @order.order_items.find_by(product_id: @neworderid)
      @new_quantity = (@order_item.quantity + order_item_params[:quantity].to_i).to_s
      @order_item.update_attribute(:quantity, @new_quantity)
    else
      @order_item = @order.order_items.new(order_item_params)
      @order.save
    end
    session[:order_id] = @order.id
  end

  def update
    @order = current_order
    @order_item = @order.order_items.find(params[:id])
    @order_item.update_attributes(order_item_params)
    @order_items = @order.order_items
  end

  def destroy
    @order = current_order
    @order_item = @order.order_items.find(params[:id])
    @order_item.destroy
    @order_items = @order.order_items
  end
private
  def order_item_params
    params.require(:order_item).permit(:quantity, :product_id)
  end
end
