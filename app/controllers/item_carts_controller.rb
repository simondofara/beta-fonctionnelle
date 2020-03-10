class ItemCartsController < ApplicationController

  def create
  # Find associated product and current cart
    chosen_item = Item.find(params[:item_id])
    current_cart = @current_cart

  # If cart already has this product then find the relevant item_cart and iterate quantity otherwise create a new item_cart for this product
    if current_cart.items.include?(chosen_item)
      # Find the item_cart with the chosen_product
      @item_cart = current_cart.item_carts.find_by(:item_id => chosen_item)
      # Iterate the item_cart's quantity by one
      @item_cart.quantity += 1
    else
      @item_cart = ItemCart.new
      @item_cart.cart = current_cart
      @item_cart.item = chosen_item
    end

  # Save and redirect to cart show path
    @item_cart.save
    redirect_to cart_path(current_cart)
  end


  def destroy
    @item_cart = ItemCart.find(params[:id])
    @item_cart.destroy
    redirect_to cart_path(@current_cart)
  end

  def add_quantity
    @item_cart = ItemCart.find(params[:id])
    @item_cart.quantity += 1
    @item_cart.save
    redirect_to cart_path(@current_cart)
  end

  def reduce_quantity
    @item_cart = ItemCart.find(params[:id])
    if @item_cart.quantity > 1
      @item_cart.quantity -= 1
    end
    @item_cart.save
    redirect_to cart_path(@current_cart)
  end

private
  def item_cart_params
    params.require(:item_cart).permit(:quantity,:item_id, :cart_id)
  end

end
