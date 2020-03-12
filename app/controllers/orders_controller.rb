class OrdersController < ApplicationController

  def index
    @orders = Order.all
  end

  def show
    @order = Order.find(params[:id])
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
    @order.user = current_user
    @order.cart = Cart.find(session[:cart_id])
    puts "@@@@@@@@@@@@@@"
    puts @order
    puts @order.cart
    puts "@@@@@@@@@@@@@@"

    @order.save
    redirect_to order_path(@order.id)
  end

private
  def order_params
    params.require(:order).permit( :address,)
  end

end
